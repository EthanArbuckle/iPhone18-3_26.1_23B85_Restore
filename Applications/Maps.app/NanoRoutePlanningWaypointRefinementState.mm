@interface NanoRoutePlanningWaypointRefinementState
- (void)_handleCompletionWithWaypoints:(id)a3 error:(id)a4;
- (void)start;
@end

@implementation NanoRoutePlanningWaypointRefinementState

- (void)_handleCompletionWithWaypoints:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NanoRoutePlanningState *)self isActive])
  {
    v8 = sub_100021DB0(v6, &stru_10164DF98);
    v9 = sub_100798A3C();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = v7;
        v21 = 2114;
        v22 = v8;
        v11 = "Error refining waypoints: %{public}@\nRefinement success: %{public}@";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 22;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v8;
      v11 = "Refined waypoints (%{public}@)";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
      goto LABEL_7;
    }

    v15 = [(NanoRoutePlanningState *)self manager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100C1BCE0;
    v16[3] = &unk_10164DEC8;
    v17 = v6;
    v18 = v7;
    [v15 updateWithBlock:v16];
  }
}

- (void)start
{
  v3 = [(NanoRoutePlanningState *)self manager];
  v4 = [v3 request];

  v5 = [v4 waypoints];
  v6 = [v4 waypoints];
  v7 = sub_100021DB0(v6, &stru_10164DF08);

  v8 = [v7 count];
  v9 = [v5 count];
  v10 = sub_100798A3C();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8 == v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "All waypoints are already refined", buf, 2u);
    }

    [(NanoRoutePlanningWaypointRefinementState *)self _handleCompletionWithWaypoints:v5 error:0];
  }

  else
  {
    if (v11)
    {
      *buf = 134217984;
      v30 = [v5 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will refine %lu waypoints", buf, 0xCu);
    }

    v12 = [v4 traits];
    v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100C1C0AC;
    v24[3] = &unk_10164DF58;
    v25 = v14;
    v26 = v12;
    v27 = v4;
    v15 = v13;
    v28 = v15;
    v16 = v12;
    v17 = v14;
    [v5 enumerateObjectsUsingBlock:v24];
    dispatch_group_leave(v17);
    objc_initWeak(buf, self);
    isolationQueue = self->super._isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C1C294;
    block[3] = &unk_101661480;
    objc_copyWeak(&v23, buf);
    v21 = v15;
    v22 = v5;
    v19 = v15;
    dispatch_group_notify(v17, isolationQueue, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

@end