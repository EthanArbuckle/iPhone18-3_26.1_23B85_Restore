@interface MapsActivityMergeController
- (id)_performProcess;
- (id)mergeActivities:(id)activities;
- (int64_t)_forcedViewMode;
- (void)_mergeActivities;
- (void)_mergeActivitiesIfNeeded;
@end

@implementation MapsActivityMergeController

- (int64_t)_forcedViewMode
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"__internal_ForcedViewMode"];

  if (!v3)
  {
    return -1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 integerForKey:@"__internal_ForcedViewMode"];
  if (v5 > 7)
  {
    v6 = -1;
  }

  else
  {
    v6 = qword_1012161A0[v5];
  }

  return v6;
}

- (void)_mergeActivities
{
  v3 = [(NSArray *)self->_activities objectAtIndexedSubscript:1];
  action = [v3 action];

  v5 = [(NSArray *)self->_activities objectAtIndexedSubscript:1];
  mapsActivity = [v5 mapsActivity];
  v7 = [mapsActivity copy];

  if (!v7)
  {
    if (action && ![action isCompatibleWithRestorationTask] || (-[NSArray objectAtIndexedSubscript:](self->_activities, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "mapsActivity"), v9 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v9, "copy"), v9, v8, !v7))
    {
      v7 = +[MapsActivity mapsActivityPerDefault];
    }
  }

  v10 = sub_100021DB0(self->_activities, &stru_10165F790);
  v11 = [GEOURLOptions accumulateObjects:v10];
  if (v11)
  {
    _forcedViewMode = [(MapsActivityMergeController *)self _forcedViewMode];
    if (_forcedViewMode <= 2)
    {
      if (_forcedViewMode == -1)
      {
LABEL_24:
        [v7 setDisplayOptions:v11];
        goto LABEL_25;
      }

      if (_forcedViewMode == 1)
      {
LABEL_21:
        v13 = 2;
        goto LABEL_23;
      }

      v13 = 0;
      if (_forcedViewMode != 2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (_forcedViewMode <= 5)
      {
        if (_forcedViewMode == 3)
        {
          v13 = 3;
          goto LABEL_23;
        }

        v13 = 0;
        if (_forcedViewMode != 5)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (_forcedViewMode != 6)
      {
        if (_forcedViewMode == 7)
        {
          v13 = 4;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_23;
      }
    }

    v13 = 1;
LABEL_23:
    [v11 setMapType:v13];
    goto LABEL_24;
  }

LABEL_25:
  v14 = [[RichMapsActivity alloc] initWithMapsActivity:v7 mapsAction:action];
  mergedActivity = self->_mergedActivity;
  self->_mergedActivity = v14;

  v16 = +[NSUUID UUID];
  uUIDString = [v16 UUIDString];

  v18 = sub_100005610();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = uUIDString;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "_mergedActivity (tag %@)", buf, 0xCu);
  }

  v19 = self->_mergedActivity;
  v20 = dispatch_get_global_queue(-2, 0);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100F96E14;
  v23[3] = &unk_101661A90;
  v24 = uUIDString;
  v25 = v19;
  v21 = v19;
  v22 = uUIDString;
  dispatch_async(v20, v23);
}

- (void)_mergeActivitiesIfNeeded
{
  v3 = [(NSArray *)self->_activities count];
  v4 = [(NSArray *)self->_activities copy];
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = uUIDString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_mergeActivitiesIfNeeded (tag %@)", buf, 0xCu);
  }

  v8 = dispatch_get_global_queue(-2, 0);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100F970D0;
  v16 = &unk_101661A90;
  v9 = uUIDString;
  v17 = v9;
  v10 = v4;
  v18 = v10;
  dispatch_async(v8, &v13);

  if (v3)
  {
    if (v3 == 1)
    {
      v11 = [(NSArray *)self->_activities lastObject:v13];
      mergedActivity = self->_mergedActivity;
      self->_mergedActivity = v11;
    }

    else
    {
      [(MapsActivityMergeController *)self _mergeActivities:v13];
    }
  }
}

- (id)_performProcess
{
  [(MapsActivityMergeController *)self _mergeActivitiesIfNeeded];
  mergedActivity = self->_mergedActivity;

  return mergedActivity;
}

- (id)mergeActivities:(id)activities
{
  objc_storeStrong(&self->_activities, activities);

  return [(MapsActivityMergeController *)self _performProcess];
}

@end