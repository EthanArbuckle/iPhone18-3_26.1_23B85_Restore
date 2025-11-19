@interface MKTransitMapItemUpdater
- (BOOL)_isInfoExpiredRelativeToDate:(id)a3;
- (BOOL)isStuckWithExpiredInfoRelativeToDate:(id)a3;
- (MKTransitMapItemUpdater)initWithMapItem:(id)a3 delegate:(id)a4;
- (void)_processUpdatedMapItems:(id)a3 identifier:(id)a4 ttl:(double)a5 error:(id)a6;
- (void)_refreshTransitInfoIfNeeded;
- (void)_resumeDataRefreshTimer;
- (void)_scheduleDataUpdateForTransitItemAtDate:(id)a3;
- (void)_suspendDataRefreshTimer;
- (void)_transitInfoUpdated;
- (void)setActive:(BOOL)a3;
@end

@implementation MKTransitMapItemUpdater

- (void)_transitInfoUpdated
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(MKTransitItemReferenceDateUpdater *)self delegate];

  if (!v3)
  {
    v4 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_ERROR, "Received a notification that the mapItem was updated, but there is no delegate", &v13, 2u);
    }

    [(MKTransitMapItemUpdater *)self _suspendDataRefreshTimer];
  }

  if (!self->_refreshing)
  {
    v5 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(MKTransitMapItemUpdater *)self mapItem];
      v7 = [v6 name];
      v8 = [(MKTransitMapItemUpdater *)self mapItem];
      v9 = [v8 _identifier];
      v10 = [v9 muid];
      v13 = 138412546;
      v14 = v7;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> updated outside of the network refresh", &v13, 0x16u);
    }

    [(MKTransitMapItemUpdater *)self setLastInfoRefreshFailed:0];
    v11 = [(MKTransitItemReferenceDateUpdater *)self delegate];
    v12 = [(MKTransitMapItemUpdater *)self mapItem];
    [v11 transitMapItemUpdater:self updatedMapItem:v12 error:0];
  }
}

- (BOOL)_isInfoExpiredRelativeToDate:(id)a3
{
  v4 = a3;
  v5 = [(MKTransitMapItemUpdater *)self mapItem];
  v6 = [v5 _transitInfo];

  v7 = [v6 lastFullScheduleValidDate];
  [v7 timeIntervalSinceDate:v4];
  v9 = v8;

  return v9 <= 30.0;
}

- (BOOL)isStuckWithExpiredInfoRelativeToDate:(id)a3
{
  v4 = a3;
  if ([(MKTransitMapItemUpdater *)self lastInfoRefreshFailed])
  {
    v5 = [(MKTransitMapItemUpdater *)self _isInfoExpiredRelativeToDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_processUpdatedMapItems:(id)a3 identifier:(id)a4 ttl:(double)a5 error:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v46 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v45 + 1) + 8 * v17);
      v19 = [v18 _identifier];
      v20 = [v19 isEqual:v11];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v18;
    [v21 _markTransitInfoUpdated];

    if (v21)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  if ([v13 count] == 1)
  {
    v21 = [v13 firstObject];
    [v21 _markTransitInfoUpdated];
  }

  else
  {
    v21 = 0;
  }

LABEL_14:
  v22 = MKGetTransitItemUpdaterLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v44 = [(MKTransitMapItemUpdater *)self mapItem];
    v23 = [v44 name];
    v24 = [(MKTransitMapItemUpdater *)self mapItem];
    v25 = v12;
    v26 = [v24 _muid];
    v27 = [v21 _transitInfoUpdatedDate];
    *buf = 138413314;
    v50 = *&v23;
    v51 = 2048;
    v52 = v26;
    v12 = v25;
    v53 = 1024;
    v54 = v21 != 0;
    v55 = 2112;
    v56 = v27;
    v28 = v27;
    v57 = 2112;
    v58 = v25;
    _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> update (success:%d, lastRefresh:%@, error:%@)", buf, 0x30u);
  }

  v29 = [v21 _transitInfo];
  if (v29)
  {
    v30 = [v21 _transitInfo];
    [v30 timeToLive];
    a5 = v31;
  }

  if (a5 > 0.0)
  {
    v32 = [v21 _transitInfoUpdatedDate];
    if (v32)
    {
      v33 = [v21 _transitInfoUpdatedDate];
      v34 = [v33 dateByAddingTimeInterval:a5];

      v35 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v50 = a5;
        v51 = 2112;
        v52 = v34;
        v36 = "- Schedule TTL expires in %#.1lfs at %@";
LABEL_25:
        _os_log_impl(&dword_1A2EA0000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x16u);
      }
    }

    else
    {
      v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a5];
      v35 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v50 = a5;
        v51 = 2112;
        v52 = v34;
        v36 = "- Suggesting next attempt based on previous TTL of %#.1lfs at %@";
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v34 = 0;
LABEL_27:
  v37 = [v21 _transitInfo];
  v38 = [v37 lastFullScheduleValidDate];

  if (v38 && (!v34 || [v38 compare:v34] == -1))
  {
    v39 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = *&v38;
      _os_log_impl(&dword_1A2EA0000, v39, OS_LOG_TYPE_DEBUG, "- Schedule valid to %@", buf, 0xCu);
    }

    v40 = v38;
    v34 = v40;
  }

  [(MKTransitMapItemUpdater *)self setLastInfoRefreshFailed:v21 == 0];
  if (v21)
  {
    v41 = [(MKTransitMapItemUpdater *)self mapItem];
    [v41 _updateTransitInfoWithMapItem:v21];
  }

  [(MKTransitMapItemUpdater *)self setRefreshing:0];
  if ([(MKTransitItemReferenceDateUpdater *)self isActive])
  {
    v42 = [(MKTransitItemReferenceDateUpdater *)self delegate];
    v43 = [(MKTransitMapItemUpdater *)self mapItem];
    [v42 transitMapItemUpdater:self updatedMapItem:v43 error:v12];
  }

  [(MKTransitMapItemUpdater *)self _scheduleDataUpdateForTransitItemAtDate:v34];
}

- (void)_refreshTransitInfoIfNeeded
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = [(MKTransitMapItemUpdater *)self mapItem];

  if (v3)
  {
    v4 = [(MKTransitItemReferenceDateUpdater *)self delegate];

    if (v4)
    {
      if (![(MKTransitMapItemUpdater *)self isRefreshing]&& [(MKTransitItemReferenceDateUpdater *)self isActive])
      {
        v5 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
        [v5 invalidate];

        [(MKTransitMapItemUpdater *)self setDataRefreshTimer:0];
        v6 = [(MKTransitMapItemUpdater *)self mapItem];
        v7 = [v6 _transitInfo];

        if (!v7)
        {
          v27 = MKGetTransitItemUpdaterLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v27, OS_LOG_TYPE_ERROR, "Will not refresh item (transitInfo:NO)", buf, 2u);
          }

          [(MKTransitMapItemUpdater *)self setRefreshing:0];
          goto LABEL_50;
        }

        v8 = [(MKTransitMapItemUpdater *)self mapItem];
        v9 = [v8 _identifier];

        if (!v9)
        {
          v10 = MKGetTransitItemUpdaterLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "MapItem is missing an identifier. This is expected for Nearby Transit mapItems, but could indicate an error for other types.", buf, 2u);
          }
        }

        [v7 timeToLive];
        v12 = v11;
        v13 = [(MKTransitMapItemUpdater *)self mapItem];
        v14 = [v13 _transitInfoUpdatedDate];

        if (*&v12 <= 0.0 || v14 && ([MEMORY[0x1E695DF00] date], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSinceDate:", v14), v17 = v16 < *&v12, v15, v17))
        {
          if (([v7 isTransitIncidentsTTLExpired] & 1) != 0 || (objc_msgSend(v7, "hasTransitIncidentComponent") & 1) == 0)
          {
            v28 = MKGetTransitItemUpdaterLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = [(MKTransitMapItemUpdater *)self mapItem];
              v30 = [v29 name];
              v31 = [v9 muid];
              v32 = [v7 isTransitIncidentsTTLExpired];
              v33 = [v7 hasTransitIncidentComponent];
              *buf = 138413058;
              v57 = v30;
              v58 = 2048;
              v59 = v31;
              v60 = 1024;
              *v61 = v32;
              *&v61[4] = 1024;
              *&v61[6] = v33;
              _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> needs update: expired: %d, hasComponent: %d", buf, 0x22u);
            }
          }

          else
          {
            v18 = [v7 lastFullScheduleValidDate];
            [v18 timeIntervalSinceNow];
            v20 = v19 > 300.0;

            if (v20)
            {
              v21 = 0;
LABEL_40:
              v37 = [(MKTransitItemReferenceDateUpdater *)self delegate];
              v38 = [v37 ticketForTransitMapItemUpdater:self];

              if (v21)
              {
                if (v38)
                {
                  [(MKTransitMapItemUpdater *)self setRefreshing:1];
                  v39 = [(MKTransitItemReferenceDateUpdater *)self delegate];
                  v40 = [(MKTransitMapItemUpdater *)self mapItem];
                  [v39 transitMapItemUpdater:self willUpdateMapItem:v40];

                  objc_initWeak(buf, self);
                  v53[0] = MEMORY[0x1E69E9820];
                  v53[1] = 3221225472;
                  v53[2] = __54__MKTransitMapItemUpdater__refreshTransitInfoIfNeeded__block_invoke;
                  v53[3] = &unk_1E76CD698;
                  objc_copyWeak(v55, buf);
                  v54 = v9;
                  v55[1] = v12;
                  [v38 submitWithHandler:v53 networkActivity:0];

                  objc_destroyWeak(v55);
                  objc_destroyWeak(buf);
                }

                else
                {
                  v42 = MKGetTransitItemUpdaterLog();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    v43 = [(MKTransitMapItemUpdater *)self mapItem];
                    v44 = [v43 name];
                    v45 = [v9 muid];
                    v46 = [(MKTransitItemReferenceDateUpdater *)self delegate];
                    v47 = objc_opt_class();
                    *buf = 138412802;
                    v57 = v44;
                    v58 = 2048;
                    v59 = v45;
                    v60 = 2112;
                    *v61 = v47;
                    _os_log_impl(&dword_1A2EA0000, v42, OS_LOG_TYPE_ERROR, "MapItem %@ <muid: %llu> needs update but delegate %@ failed to provide a ticket", buf, 0x20u);
                  }

                  v48 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*&v12];
                  [(MKTransitMapItemUpdater *)self _scheduleDataUpdateForTransitItemAtDate:v48];
                  [(MKTransitMapItemUpdater *)self setRefreshing:0];
                }
              }

              else
              {
                if (*&v12 > 0.0)
                {
                  v41 = [v14 dateByAddingTimeInterval:*&v12];
                  [(MKTransitMapItemUpdater *)self _scheduleDataUpdateForTransitItemAtDate:v41];
                }

                [(MKTransitMapItemUpdater *)self setRefreshing:0];
              }

LABEL_50:
              return;
            }

            v28 = MKGetTransitItemUpdaterLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v49 = [(MKTransitMapItemUpdater *)self mapItem];
              v50 = [v49 name];
              v51 = [v9 muid];
              v52 = [v7 lastFullScheduleValidDate];
              *buf = 138412802;
              v57 = v50;
              v58 = 2048;
              v59 = v51;
              v60 = 2112;
              *v61 = v52;
              _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> needs update: schedule ends %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v28 = MKGetTransitItemUpdaterLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v34 = [(MKTransitMapItemUpdater *)self mapItem];
            v35 = [v34 name];
            v36 = [v9 muid];
            *buf = 138413058;
            v57 = v35;
            v58 = 2048;
            v59 = v36;
            v60 = 2048;
            *v61 = v12;
            *&v61[8] = 2112;
            v62 = v14;
            _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> needs update: Schedule TTL = %#.1lfs, last updated: %@", buf, 0x2Au);
          }
        }

        v21 = 1;
        goto LABEL_40;
      }

      v23 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        if ([(MKTransitMapItemUpdater *)self isRefreshing])
        {
          v24 = "YES";
        }

        else
        {
          v24 = "NO";
        }

        if ([(MKTransitItemReferenceDateUpdater *)self isActive])
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        *buf = 136315394;
        v57 = v24;
        v58 = 2080;
        v59 = v25;
        _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_DEBUG, "Will not refresh item (refreshing:%s, isActive:%s)", buf, 0x16u);
      }
    }

    else
    {
      v26 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v26, OS_LOG_TYPE_ERROR, "Will not refresh item, no delegate", buf, 2u);
      }

      [(MKTransitMapItemUpdater *)self _suspendDataRefreshTimer];
      [(MKTransitMapItemUpdater *)self setRefreshing:0];
    }
  }

  else
  {
    v22 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_ERROR, "Will not refresh item, no map item", buf, 2u);
    }

    [(MKTransitMapItemUpdater *)self setRefreshing:0];
  }
}

void __54__MKTransitMapItemUpdater__refreshTransitInfoIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processUpdatedMapItems:v8 identifier:*(a1 + 32) ttl:v5 error:*(a1 + 48)];
  }
}

- (void)_scheduleDataUpdateForTransitItemAtDate:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MKTransitMapItemUpdater *)self setSuggestedDataRefreshDate:v4];
  if ([(MKTransitItemReferenceDateUpdater *)self isActive]&& ([(MKTransitMapItemUpdater *)self suggestedDataRefreshDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
    [v6 invalidate];

    [v4 timeIntervalSinceNow];
    v8 = v7;
    v9 = MKGetTransitItemUpdaterLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 <= 0.0)
    {
      if (v10)
      {
        v27 = [(MKTransitMapItemUpdater *)self mapItem];
        v28 = [v27 name];
        v29 = [(MKTransitMapItemUpdater *)self mapItem];
        v30 = [v29 _identifier];
        *buf = 138412802;
        v34 = v28;
        v35 = 2048;
        v36 = [v30 muid];
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEBUG, "Performing immediate mapItem update for %@ <muid: %llu>, was scheduled for %@", buf, 0x20u);
      }

      [(MKTransitMapItemUpdater *)self _refreshTransitInfoIfNeeded];
    }

    else
    {
      if (v10)
      {
        v11 = [(MKTransitMapItemUpdater *)self mapItem];
        v12 = [v11 name];
        v13 = [(MKTransitMapItemUpdater *)self mapItem];
        v14 = [v13 _identifier];
        *buf = 138412802;
        v34 = v12;
        v35 = 2048;
        v36 = [v14 muid];
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEBUG, "Scheduling mapItem update for %@ <muid: %llu> at %@", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v15 = MEMORY[0x1E695DFF0];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __67__MKTransitMapItemUpdater__scheduleDataUpdateForTransitItemAtDate___block_invoke;
      v31[3] = &unk_1E76CD670;
      objc_copyWeak(&v32, buf);
      v16 = [v15 scheduledTimerWithTimeInterval:0 repeats:v31 block:v8];
      [(MKTransitMapItemUpdater *)self setDataRefreshTimer:v16];

      v17 = [(MKTransitMapItemUpdater *)self suggestedDataRefreshDate];
      v18 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
      [v18 setFireDate:v17];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(MKTransitMapItemUpdater *)self mapItem];
      v21 = [v20 name];
      v22 = [(MKTransitMapItemUpdater *)self mapItem];
      v23 = [v22 _identifier];
      v24 = [v23 muid];
      v25 = [(MKTransitItemReferenceDateUpdater *)self isActive];
      v26 = "NO";
      *buf = 138413058;
      v35 = 2048;
      v34 = v21;
      if (v25)
      {
        v26 = "YES";
      }

      v36 = v24;
      v37 = 2080;
      v38 = v26;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_1A2EA0000, v19, OS_LOG_TYPE_DEBUG, "Will not schedule mapItem update for %@ <muid: %llu> (isActive:%s, date:%@)", buf, 0x2Au);
    }

    [(MKTransitMapItemUpdater *)self _suspendDataRefreshTimer];
  }
}

void __67__MKTransitMapItemUpdater__scheduleDataUpdateForTransitItemAtDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshTransitInfoIfNeeded];
}

- (void)_suspendDataRefreshTimer
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];

  if (v3)
  {
    v4 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(MKTransitMapItemUpdater *)self mapItem];
      v6 = [v5 name];
      v7 = [(MKTransitMapItemUpdater *)self mapItem];
      v8 = [v7 _identifier];
      v9 = [v8 muid];
      v10 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
      v11 = [v10 fireDate];
      v13 = 138412802;
      v14 = v6;
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "Cancelling scheduled mapItem update for %@ <muid: %llu> at %@", &v13, 0x20u);
    }

    v12 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
    [v12 invalidate];

    [(MKTransitMapItemUpdater *)self setDataRefreshTimer:0];
  }
}

- (void)_resumeDataRefreshTimer
{
  v3 = [(MKTransitMapItemUpdater *)self suggestedDataRefreshDate];

  if (v3)
  {
    v4 = [(MKTransitMapItemUpdater *)self suggestedDataRefreshDate];
    [(MKTransitMapItemUpdater *)self _scheduleDataUpdateForTransitItemAtDate:v4];
  }

  else
  {

    [(MKTransitMapItemUpdater *)self _refreshTransitInfoIfNeeded];
  }
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MKTransitMapItemUpdater;
  [(MKTransitItemReferenceDateUpdater *)&v21 setActive:?];
  v5 = MKGetTransitItemUpdaterLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v6)
    {
      v7 = [(MKTransitMapItemUpdater *)self mapItem];
      v8 = [v7 name];
      v9 = [(MKTransitMapItemUpdater *)self mapItem];
      v10 = [v9 _identifier];
      v11 = [v10 muid];
      *buf = 138412546;
      v23 = v8;
      v24 = 2048;
      v25 = v11;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Activating updater for %@ <muid: %llu>", buf, 0x16u);
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = [(MKTransitMapItemUpdater *)self mapItem];
    [v12 addObserver:self selector:sel__transitInfoUpdated name:@"kMapItemTransitInfoDidUpdateNotification" object:v13];

    [(MKTransitMapItemUpdater *)self _resumeDataRefreshTimer];
  }

  else
  {
    if (v6)
    {
      v14 = [(MKTransitMapItemUpdater *)self mapItem];
      v15 = [v14 name];
      v16 = [(MKTransitMapItemUpdater *)self mapItem];
      v17 = [v16 _identifier];
      v18 = [v17 muid];
      *buf = 138412546;
      v23 = v15;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Deactivating updater for %@ <muid: %llu>", buf, 0x16u);
    }

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = [(MKTransitMapItemUpdater *)self mapItem];
    [v19 removeObserver:self name:@"kMapItemTransitInfoDidUpdateNotification" object:v20];

    [(MKTransitMapItemUpdater *)self _suspendDataRefreshTimer];
  }
}

- (MKTransitMapItemUpdater)initWithMapItem:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MKTransitMapItemUpdater;
  v8 = [(MKTransitItemReferenceDateUpdater *)&v11 initWithDelegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, a3);
  }

  return v9;
}

@end