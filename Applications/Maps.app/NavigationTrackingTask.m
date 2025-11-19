@interface NavigationTrackingTask
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)trackNavigationStarted:(BOOL)a3 purpose:(int)a4 originResolvedType:(int)a5 destinationResolvedType:(int)a6;
@end

@implementation NavigationTrackingTask

- (void)trackNavigationStarted:(BOOL)a3 purpose:(int)a4 originResolvedType:(int)a5 destinationResolvedType:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v9 = a3;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (v7 >= 5)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v16 = 136446978;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/AuxiliaryTasks/NavigationTrackingTask.m";
        v18 = 1024;
        *v19 = 94;
        *&v19[4] = 2082;
        *&v19[6] = "NSString *_stringForType(GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation)";
        v20 = 2082;
        v21 = "YES";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. An unhandled GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation?", &v16, 0x26u);
      }

      v11 = @"?";
    }

    else
    {
      v11 = off_101657218[v7];
    }

    if (v6 >= 5)
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = 136446978;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/AuxiliaryTasks/NavigationTrackingTask.m";
        v18 = 1024;
        *v19 = 94;
        *&v19[4] = 2082;
        *&v19[6] = "NSString *_stringForType(GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation)";
        v20 = 2082;
        v21 = "YES";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. An unhandled GEOLogMsgEventDirectionsRequestDetails_DirectionsRequestLocation?", &v16, 0x26u);
      }

      v13 = @"?";
    }

    else
    {
      v13 = off_101657218[v6];
    }

    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    *v19 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Sending Analytics [%@, %@]", &v16, 0x16u);
  }

  v15 = [NSNumber numberWithBool:v9];
  [GEOAPPortal captureDirectionsRequestDetailsWithNavStarted:v15 purpose:v8 origin:v7 destination:v6];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((+[GEOAPPortal directionsRequestDetailsAreDisabled]& 1) == 0)
  {
    v11 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = v10;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (!v14 || (isKindOfClass & 1) == 0)
      {
        v55 = [v13 configuration];
        v16 = [v55 originWaypointRequest];
        v17 = [v16 waypointRequest];
        [v17 coordinate];
        v19 = v18;
        v21 = v20;

        v22 = [v55 destinationWaypointRequest];
        v23 = [v22 waypointRequest];
        [v23 coordinate];
        v25 = v24;
        v27 = v26;

        v54 = MapsSuggestionsResourceDepotForMapsProcess();
        v28 = [v54 oneUser];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100E8E3D4;
        v56[3] = &unk_1016571A8;
        v56[4] = self;
        v57 = v14;
        v58 = 4;
        v29 = v28;
        v53 = v56;
        v30 = dispatch_group_create();
        v31 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v19;
          *&buf[12] = 2048;
          *&buf[14] = v21;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Checking origin <%+.6f,%+.6f>", buf, 0x16u);
        }

        v68[0] = 0;
        v68[1] = v68;
        v68[2] = 0x2020000000;
        v69 = 4;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100E8E44C;
        v76 = &unk_1016571D0;
        v78 = v19;
        v79 = v21;
        v77 = v68;
        v32 = v29;
        v33 = v30;
        v34 = buf;
        dispatch_group_enter(v33);
        GEOConfigGetDouble();
        v36 = v35;
        GEOConfigGetDouble();
        v38 = v37;
        Integer = GEOConfigGetInteger();
        *v70 = _NSConcreteStackBlock;
        *&v70[8] = 3221225472;
        *&v70[16] = sub_100E8E5F8;
        v71 = &unk_1016571F8;
        v40 = v34;
        v73 = v40;
        v41 = v33;
        v72 = v41;
        [v32 meCardForProminentPlacesAroundCoordinate:Integer maxDistance:v70 maxAge:*&v19 minVisits:v21 handler:{v36, v38}];

        v42 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *v70 = 134218240;
          *&v70[4] = v25;
          *&v70[12] = 2048;
          *&v70[14] = v27;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Checking destination <%+.6f,%+.6f>", v70, 0x16u);
        }

        v66[0] = 0;
        v66[1] = v66;
        v66[2] = 0x2020000000;
        v67 = 4;
        *v70 = _NSConcreteStackBlock;
        *&v70[8] = 3221225472;
        *&v70[16] = sub_100E8E7A4;
        v71 = &unk_1016571D0;
        v73 = v19;
        v74 = v21;
        v72 = v66;
        v43 = v32;
        v44 = v41;
        v45 = v70;
        dispatch_group_enter(v44);
        GEOConfigGetDouble();
        v47 = v46;
        GEOConfigGetDouble();
        v49 = v48;
        v50 = GEOConfigGetInteger();
        block = _NSConcreteStackBlock;
        v60 = 3221225472;
        v61 = sub_100E8E5F8;
        v62 = &unk_1016571F8;
        v51 = v45;
        v64 = v51;
        v52 = v44;
        v63 = v52;
        [v43 meCardForProminentPlacesAroundCoordinate:v50 maxDistance:&block maxAge:v25 minVisits:v27 handler:{v47, v49}];

        block = _NSConcreteStackBlock;
        v60 = 3221225472;
        v61 = sub_100E8E950;
        v62 = &unk_101661430;
        v65 = v66;
        v64 = v68;
        v63 = v53;
        dispatch_group_notify(v52, &_dispatch_main_q, &block);

        _Block_object_dispose(v66, 8);
        _Block_object_dispose(v68, 8);
      }
    }
  }
}

@end