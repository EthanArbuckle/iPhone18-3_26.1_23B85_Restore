@interface MKTransitMapItemUpdater
- (BOOL)_isInfoExpiredRelativeToDate:(id)date;
- (BOOL)isStuckWithExpiredInfoRelativeToDate:(id)date;
- (MKTransitMapItemUpdater)initWithMapItem:(id)item delegate:(id)delegate;
- (void)_processUpdatedMapItems:(id)items identifier:(id)identifier ttl:(double)ttl error:(id)error;
- (void)_refreshTransitInfoIfNeeded;
- (void)_resumeDataRefreshTimer;
- (void)_scheduleDataUpdateForTransitItemAtDate:(id)date;
- (void)_suspendDataRefreshTimer;
- (void)_transitInfoUpdated;
- (void)setActive:(BOOL)active;
@end

@implementation MKTransitMapItemUpdater

- (void)_transitInfoUpdated
{
  v17 = *MEMORY[0x1E69E9840];
  delegate = [(MKTransitItemReferenceDateUpdater *)self delegate];

  if (!delegate)
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
      mapItem = [(MKTransitMapItemUpdater *)self mapItem];
      name = [mapItem name];
      mapItem2 = [(MKTransitMapItemUpdater *)self mapItem];
      _identifier = [mapItem2 _identifier];
      muid = [_identifier muid];
      v13 = 138412546;
      v14 = name;
      v15 = 2048;
      v16 = muid;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> updated outside of the network refresh", &v13, 0x16u);
    }

    [(MKTransitMapItemUpdater *)self setLastInfoRefreshFailed:0];
    delegate2 = [(MKTransitItemReferenceDateUpdater *)self delegate];
    mapItem3 = [(MKTransitMapItemUpdater *)self mapItem];
    [delegate2 transitMapItemUpdater:self updatedMapItem:mapItem3 error:0];
  }
}

- (BOOL)_isInfoExpiredRelativeToDate:(id)date
{
  dateCopy = date;
  mapItem = [(MKTransitMapItemUpdater *)self mapItem];
  _transitInfo = [mapItem _transitInfo];

  lastFullScheduleValidDate = [_transitInfo lastFullScheduleValidDate];
  [lastFullScheduleValidDate timeIntervalSinceDate:dateCopy];
  v9 = v8;

  return v9 <= 30.0;
}

- (BOOL)isStuckWithExpiredInfoRelativeToDate:(id)date
{
  dateCopy = date;
  if ([(MKTransitMapItemUpdater *)self lastInfoRefreshFailed])
  {
    v5 = [(MKTransitMapItemUpdater *)self _isInfoExpiredRelativeToDate:dateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_processUpdatedMapItems:(id)items identifier:(id)identifier ttl:(double)ttl error:(id)error
{
  v60 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  identifierCopy = identifier;
  errorCopy = error;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = itemsCopy;
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
      _identifier = [v18 _identifier];
      v20 = [_identifier isEqual:identifierCopy];

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

    firstObject = v18;
    [firstObject _markTransitInfoUpdated];

    if (firstObject)
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
    firstObject = [v13 firstObject];
    [firstObject _markTransitInfoUpdated];
  }

  else
  {
    firstObject = 0;
  }

LABEL_14:
  v22 = MKGetTransitItemUpdaterLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    mapItem = [(MKTransitMapItemUpdater *)self mapItem];
    name = [mapItem name];
    mapItem2 = [(MKTransitMapItemUpdater *)self mapItem];
    v25 = errorCopy;
    _muid = [mapItem2 _muid];
    _transitInfoUpdatedDate = [firstObject _transitInfoUpdatedDate];
    *buf = 138413314;
    ttlCopy2 = *&name;
    v51 = 2048;
    v52 = _muid;
    errorCopy = v25;
    v53 = 1024;
    v54 = firstObject != 0;
    v55 = 2112;
    v56 = _transitInfoUpdatedDate;
    v28 = _transitInfoUpdatedDate;
    v57 = 2112;
    v58 = v25;
    _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> update (success:%d, lastRefresh:%@, error:%@)", buf, 0x30u);
  }

  _transitInfo = [firstObject _transitInfo];
  if (_transitInfo)
  {
    _transitInfo2 = [firstObject _transitInfo];
    [_transitInfo2 timeToLive];
    ttl = v31;
  }

  if (ttl > 0.0)
  {
    _transitInfoUpdatedDate2 = [firstObject _transitInfoUpdatedDate];
    if (_transitInfoUpdatedDate2)
    {
      _transitInfoUpdatedDate3 = [firstObject _transitInfoUpdatedDate];
      v34 = [_transitInfoUpdatedDate3 dateByAddingTimeInterval:ttl];

      v35 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        ttlCopy2 = ttl;
        v51 = 2112;
        v52 = v34;
        v36 = "- Schedule TTL expires in %#.1lfs at %@";
LABEL_25:
        _os_log_impl(&dword_1A2EA0000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x16u);
      }
    }

    else
    {
      v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:ttl];
      v35 = MKGetTransitItemUpdaterLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        ttlCopy2 = ttl;
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
  _transitInfo3 = [firstObject _transitInfo];
  lastFullScheduleValidDate = [_transitInfo3 lastFullScheduleValidDate];

  if (lastFullScheduleValidDate && (!v34 || [lastFullScheduleValidDate compare:v34] == -1))
  {
    v39 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      ttlCopy2 = *&lastFullScheduleValidDate;
      _os_log_impl(&dword_1A2EA0000, v39, OS_LOG_TYPE_DEBUG, "- Schedule valid to %@", buf, 0xCu);
    }

    v40 = lastFullScheduleValidDate;
    v34 = v40;
  }

  [(MKTransitMapItemUpdater *)self setLastInfoRefreshFailed:firstObject == 0];
  if (firstObject)
  {
    mapItem3 = [(MKTransitMapItemUpdater *)self mapItem];
    [mapItem3 _updateTransitInfoWithMapItem:firstObject];
  }

  [(MKTransitMapItemUpdater *)self setRefreshing:0];
  if ([(MKTransitItemReferenceDateUpdater *)self isActive])
  {
    delegate = [(MKTransitItemReferenceDateUpdater *)self delegate];
    mapItem4 = [(MKTransitMapItemUpdater *)self mapItem];
    [delegate transitMapItemUpdater:self updatedMapItem:mapItem4 error:errorCopy];
  }

  [(MKTransitMapItemUpdater *)self _scheduleDataUpdateForTransitItemAtDate:v34];
}

- (void)_refreshTransitInfoIfNeeded
{
  v63 = *MEMORY[0x1E69E9840];
  mapItem = [(MKTransitMapItemUpdater *)self mapItem];

  if (mapItem)
  {
    delegate = [(MKTransitItemReferenceDateUpdater *)self delegate];

    if (delegate)
    {
      if (![(MKTransitMapItemUpdater *)self isRefreshing]&& [(MKTransitItemReferenceDateUpdater *)self isActive])
      {
        dataRefreshTimer = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
        [dataRefreshTimer invalidate];

        [(MKTransitMapItemUpdater *)self setDataRefreshTimer:0];
        mapItem2 = [(MKTransitMapItemUpdater *)self mapItem];
        _transitInfo = [mapItem2 _transitInfo];

        if (!_transitInfo)
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

        mapItem3 = [(MKTransitMapItemUpdater *)self mapItem];
        _identifier = [mapItem3 _identifier];

        if (!_identifier)
        {
          v10 = MKGetTransitItemUpdaterLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "MapItem is missing an identifier. This is expected for Nearby Transit mapItems, but could indicate an error for other types.", buf, 2u);
          }
        }

        [_transitInfo timeToLive];
        v12 = v11;
        mapItem4 = [(MKTransitMapItemUpdater *)self mapItem];
        _transitInfoUpdatedDate = [mapItem4 _transitInfoUpdatedDate];

        if (*&v12 <= 0.0 || _transitInfoUpdatedDate && ([MEMORY[0x1E695DF00] date], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSinceDate:", _transitInfoUpdatedDate), v17 = v16 < *&v12, v15, v17))
        {
          if (([_transitInfo isTransitIncidentsTTLExpired] & 1) != 0 || (objc_msgSend(_transitInfo, "hasTransitIncidentComponent") & 1) == 0)
          {
            v28 = MKGetTransitItemUpdaterLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              mapItem5 = [(MKTransitMapItemUpdater *)self mapItem];
              name = [mapItem5 name];
              muid = [_identifier muid];
              isTransitIncidentsTTLExpired = [_transitInfo isTransitIncidentsTTLExpired];
              hasTransitIncidentComponent = [_transitInfo hasTransitIncidentComponent];
              *buf = 138413058;
              v57 = name;
              v58 = 2048;
              v59 = muid;
              v60 = 1024;
              *v61 = isTransitIncidentsTTLExpired;
              *&v61[4] = 1024;
              *&v61[6] = hasTransitIncidentComponent;
              _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> needs update: expired: %d, hasComponent: %d", buf, 0x22u);
            }
          }

          else
          {
            lastFullScheduleValidDate = [_transitInfo lastFullScheduleValidDate];
            [lastFullScheduleValidDate timeIntervalSinceNow];
            v20 = v19 > 300.0;

            if (v20)
            {
              v21 = 0;
LABEL_40:
              delegate2 = [(MKTransitItemReferenceDateUpdater *)self delegate];
              v38 = [delegate2 ticketForTransitMapItemUpdater:self];

              if (v21)
              {
                if (v38)
                {
                  [(MKTransitMapItemUpdater *)self setRefreshing:1];
                  delegate3 = [(MKTransitItemReferenceDateUpdater *)self delegate];
                  mapItem6 = [(MKTransitMapItemUpdater *)self mapItem];
                  [delegate3 transitMapItemUpdater:self willUpdateMapItem:mapItem6];

                  objc_initWeak(buf, self);
                  v53[0] = MEMORY[0x1E69E9820];
                  v53[1] = 3221225472;
                  v53[2] = __54__MKTransitMapItemUpdater__refreshTransitInfoIfNeeded__block_invoke;
                  v53[3] = &unk_1E76CD698;
                  objc_copyWeak(v55, buf);
                  v54 = _identifier;
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
                    mapItem7 = [(MKTransitMapItemUpdater *)self mapItem];
                    name2 = [mapItem7 name];
                    muid2 = [_identifier muid];
                    delegate4 = [(MKTransitItemReferenceDateUpdater *)self delegate];
                    v47 = objc_opt_class();
                    *buf = 138412802;
                    v57 = name2;
                    v58 = 2048;
                    v59 = muid2;
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
                  v41 = [_transitInfoUpdatedDate dateByAddingTimeInterval:*&v12];
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
              mapItem8 = [(MKTransitMapItemUpdater *)self mapItem];
              name3 = [mapItem8 name];
              muid3 = [_identifier muid];
              lastFullScheduleValidDate2 = [_transitInfo lastFullScheduleValidDate];
              *buf = 138412802;
              v57 = name3;
              v58 = 2048;
              v59 = muid3;
              v60 = 2112;
              *v61 = lastFullScheduleValidDate2;
              _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "MapItem %@ <muid: %llu> needs update: schedule ends %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v28 = MKGetTransitItemUpdaterLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            mapItem9 = [(MKTransitMapItemUpdater *)self mapItem];
            name4 = [mapItem9 name];
            muid4 = [_identifier muid];
            *buf = 138413058;
            v57 = name4;
            v58 = 2048;
            v59 = muid4;
            v60 = 2048;
            *v61 = v12;
            *&v61[8] = 2112;
            v62 = _transitInfoUpdatedDate;
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

- (void)_scheduleDataUpdateForTransitItemAtDate:(id)date
{
  v41 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  [(MKTransitMapItemUpdater *)self setSuggestedDataRefreshDate:dateCopy];
  if ([(MKTransitItemReferenceDateUpdater *)self isActive]&& ([(MKTransitMapItemUpdater *)self suggestedDataRefreshDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    dataRefreshTimer = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
    [dataRefreshTimer invalidate];

    [dateCopy timeIntervalSinceNow];
    v8 = v7;
    v9 = MKGetTransitItemUpdaterLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 <= 0.0)
    {
      if (v10)
      {
        mapItem = [(MKTransitMapItemUpdater *)self mapItem];
        name = [mapItem name];
        mapItem2 = [(MKTransitMapItemUpdater *)self mapItem];
        _identifier = [mapItem2 _identifier];
        *buf = 138412802;
        v34 = name;
        v35 = 2048;
        muid = [_identifier muid];
        v37 = 2112;
        v38 = dateCopy;
        _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEBUG, "Performing immediate mapItem update for %@ <muid: %llu>, was scheduled for %@", buf, 0x20u);
      }

      [(MKTransitMapItemUpdater *)self _refreshTransitInfoIfNeeded];
    }

    else
    {
      if (v10)
      {
        mapItem3 = [(MKTransitMapItemUpdater *)self mapItem];
        name2 = [mapItem3 name];
        mapItem4 = [(MKTransitMapItemUpdater *)self mapItem];
        _identifier2 = [mapItem4 _identifier];
        *buf = 138412802;
        v34 = name2;
        v35 = 2048;
        muid = [_identifier2 muid];
        v37 = 2112;
        v38 = dateCopy;
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

      suggestedDataRefreshDate = [(MKTransitMapItemUpdater *)self suggestedDataRefreshDate];
      dataRefreshTimer2 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
      [dataRefreshTimer2 setFireDate:suggestedDataRefreshDate];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      mapItem5 = [(MKTransitMapItemUpdater *)self mapItem];
      name3 = [mapItem5 name];
      mapItem6 = [(MKTransitMapItemUpdater *)self mapItem];
      _identifier3 = [mapItem6 _identifier];
      muid2 = [_identifier3 muid];
      isActive = [(MKTransitItemReferenceDateUpdater *)self isActive];
      v26 = "NO";
      *buf = 138413058;
      v35 = 2048;
      v34 = name3;
      if (isActive)
      {
        v26 = "YES";
      }

      muid = muid2;
      v37 = 2080;
      v38 = v26;
      v39 = 2112;
      v40 = dateCopy;
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
  dataRefreshTimer = [(MKTransitMapItemUpdater *)self dataRefreshTimer];

  if (dataRefreshTimer)
  {
    v4 = MKGetTransitItemUpdaterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      mapItem = [(MKTransitMapItemUpdater *)self mapItem];
      name = [mapItem name];
      mapItem2 = [(MKTransitMapItemUpdater *)self mapItem];
      _identifier = [mapItem2 _identifier];
      muid = [_identifier muid];
      dataRefreshTimer2 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
      fireDate = [dataRefreshTimer2 fireDate];
      v13 = 138412802;
      v14 = name;
      v15 = 2048;
      v16 = muid;
      v17 = 2112;
      v18 = fireDate;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "Cancelling scheduled mapItem update for %@ <muid: %llu> at %@", &v13, 0x20u);
    }

    dataRefreshTimer3 = [(MKTransitMapItemUpdater *)self dataRefreshTimer];
    [dataRefreshTimer3 invalidate];

    [(MKTransitMapItemUpdater *)self setDataRefreshTimer:0];
  }
}

- (void)_resumeDataRefreshTimer
{
  suggestedDataRefreshDate = [(MKTransitMapItemUpdater *)self suggestedDataRefreshDate];

  if (suggestedDataRefreshDate)
  {
    suggestedDataRefreshDate2 = [(MKTransitMapItemUpdater *)self suggestedDataRefreshDate];
    [(MKTransitMapItemUpdater *)self _scheduleDataUpdateForTransitItemAtDate:suggestedDataRefreshDate2];
  }

  else
  {

    [(MKTransitMapItemUpdater *)self _refreshTransitInfoIfNeeded];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MKTransitMapItemUpdater;
  [(MKTransitItemReferenceDateUpdater *)&v21 setActive:?];
  v5 = MKGetTransitItemUpdaterLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (activeCopy)
  {
    if (v6)
    {
      mapItem = [(MKTransitMapItemUpdater *)self mapItem];
      name = [mapItem name];
      mapItem2 = [(MKTransitMapItemUpdater *)self mapItem];
      _identifier = [mapItem2 _identifier];
      muid = [_identifier muid];
      *buf = 138412546;
      v23 = name;
      v24 = 2048;
      v25 = muid;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Activating updater for %@ <muid: %llu>", buf, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mapItem3 = [(MKTransitMapItemUpdater *)self mapItem];
    [defaultCenter addObserver:self selector:sel__transitInfoUpdated name:@"kMapItemTransitInfoDidUpdateNotification" object:mapItem3];

    [(MKTransitMapItemUpdater *)self _resumeDataRefreshTimer];
  }

  else
  {
    if (v6)
    {
      mapItem4 = [(MKTransitMapItemUpdater *)self mapItem];
      name2 = [mapItem4 name];
      mapItem5 = [(MKTransitMapItemUpdater *)self mapItem];
      _identifier2 = [mapItem5 _identifier];
      muid2 = [_identifier2 muid];
      *buf = 138412546;
      v23 = name2;
      v24 = 2048;
      v25 = muid2;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "Deactivating updater for %@ <muid: %llu>", buf, 0x16u);
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mapItem6 = [(MKTransitMapItemUpdater *)self mapItem];
    [defaultCenter2 removeObserver:self name:@"kMapItemTransitInfoDidUpdateNotification" object:mapItem6];

    [(MKTransitMapItemUpdater *)self _suspendDataRefreshTimer];
  }
}

- (MKTransitMapItemUpdater)initWithMapItem:(id)item delegate:(id)delegate
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MKTransitMapItemUpdater;
  v8 = [(MKTransitItemReferenceDateUpdater *)&v11 initWithDelegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapItem, item);
  }

  return v9;
}

@end