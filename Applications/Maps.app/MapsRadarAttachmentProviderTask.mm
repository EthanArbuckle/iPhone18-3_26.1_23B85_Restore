@interface MapsRadarAttachmentProviderTask
+ (BOOL)_isCarPlayMapView:(id)a3;
+ (BOOL)_isMainScreenMapView:(id)a3;
+ (BOOL)getCurrentTileStateSnapshotWithDirectoryURL:(id *)a3 debugTreeURLs:(id *)a4 mapsActivityDataPath:(id *)a5 error:(id *)a6;
- (MapsRadarAttachmentProviderTask)initWithRadarController:(id)a3;
- (void)dealloc;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
@end

@implementation MapsRadarAttachmentProviderTask

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v51 = "[MapsRadarAttachmentProviderTask generateAttachmentsForRadarDraft:withCompletion:]";
        v52 = 2080;
        v53 = "MapsRadarAttachmentProviderTask.m";
        v54 = 1024;
        v55 = 221;
        v56 = 2080;
        v57 = "dispatch_get_main_queue()";
        v58 = 2080;
        v59 = dispatch_queue_get_label(&_dispatch_main_q);
        v60 = 2080;
        v61 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v51 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v11 = dispatch_group_create();
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100722E0C;
    block[3] = &unk_101661A90;
    v48 = v12;
    v49 = v11;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100722ED4;
    v44[3] = &unk_101661A90;
    v45 = v12;
    v46 = v11;
    dispatch_async(&_dispatch_main_q, v44);
  }

  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    processingQueue = self->_processingQueue;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10072323C;
    v41[3] = &unk_101661A90;
    v42 = v12;
    v43 = v11;
    dispatch_async(processingQueue, v41);
  }

  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    v15 = self->_processingQueue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100723560;
    v38[3] = &unk_101661A90;
    v39 = v12;
    v40 = v11;
    dispatch_async(v15, v38);
  }

  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    v16 = self->_processingQueue;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1007238DC;
    v35[3] = &unk_101661A90;
    v36 = v12;
    v37 = v11;
    dispatch_async(v16, v35);
  }

  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100723AD4;
    v32[3] = &unk_101661A90;
    v33 = v12;
    v34 = v11;
    dispatch_async(&_dispatch_main_q, v32);
  }

  if (GEOConfigGetBOOL())
  {
    dispatch_group_enter(v11);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100723BB8;
    v29[3] = &unk_101661A90;
    v30 = v12;
    v31 = v11;
    dispatch_async(&_dispatch_main_q, v29);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100723CC0;
  v24[3] = &unk_101660380;
  v25 = v6;
  v26 = v12;
  v27 = v13;
  v28 = v7;
  v17 = v7;
  v18 = v13;
  v19 = v12;
  v20 = v6;
  dispatch_group_notify(v11, &_dispatch_main_q, v24);
}

- (void)dealloc
{
  v3 = sub_100723D14();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsRadarAttachmentProviderTask;
  [(MapsRadarAttachmentProviderTask *)&v4 dealloc];
}

- (MapsRadarAttachmentProviderTask)initWithRadarController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[MapsRadarAttachmentProviderTask initWithRadarController:]";
      v23 = 2080;
      v24 = "MapsRadarAttachmentProviderTask.m";
      v25 = 1024;
      v26 = 63;
      v27 = 2080;
      v28 = "radarController != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v20.receiver = self;
  v20.super_class = MapsRadarAttachmentProviderTask;
  v6 = [(MapsRadarAttachmentProviderTask *)&v20 init];
  if (v6)
  {
    v7 = sub_100723D14();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", v8, objc_opt_class(), v6];

    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    processingQueue = v6->_processingQueue;
    v6->_processingQueue = v12;

    objc_storeStrong(&v6->_radarController, a3);
    [(MapsRadarController *)v6->_radarController addAttachmentProvider:v6];
    radarController = v6->_radarController;
    v15 = +[NSOperationQueue mainQueue];
    [(MapsRadarController *)radarController addAttachmentProvider:v15];
  }

  return v6;
}

+ (BOOL)getCurrentTileStateSnapshotWithDirectoryURL:(id *)a3 debugTreeURLs:(id *)a4 mapsActivityDataPath:(id *)a5 error:(id *)a6
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v11 = dispatch_queue_get_label(0);
  if (label != v11)
  {
    v12 = !label || v11 == 0;
    if (v12 || strcmp(label, v11))
    {
      v76 = sub_10006D178();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v107 = "+[MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:debugTreeURLs:mapsActivityDataPath:error:]";
        v108 = 2080;
        v109 = "MapsRadarAttachmentProviderTask.m";
        v110 = 1024;
        v111 = 98;
        v112 = 2080;
        v113 = "dispatch_get_main_queue()";
        v114 = 2080;
        v115 = dispatch_queue_get_label(&_dispatch_main_q);
        v116 = 2080;
        v117 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v77 = sub_10006D178();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v107 = v78;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v13 = +[GEOPlatform sharedPlatform];
  v14 = [v13 isInternalInstall];

  if (v14)
  {
    v93 = a1;
    v83 = a4;
    v84 = a5;
    v15 = +[NSFileManager defaultManager];
    v16 = +[NSDate date];
    v17 = +[NSCalendar currentCalendar];
    v86 = v16;
    v18 = [v17 components:252 fromDate:v16];

    [@"~/Library/Maps/StateSnapshots" stringByExpandingTildeInPath];
    v90 = v85 = v18;
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/State-%ld-%02ld-%02ld.%02ld-%02ld-%02ld", v90, [v18 year], objc_msgSend(v18, "month"), objc_msgSend(v18, "day"), objc_msgSend(v18, "hour"), objc_msgSend(v18, "minute"), objc_msgSend(v18, "second"));
    v104 = 0;
    v89 = v15;
    v20 = [v15 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v104];
    v21 = v104;
    v22 = v21;
    v87 = v19;
    if ((v20 & 1) == 0 && v21)
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [NSString stringWithFormat:@"Could not create state snapshot directory %@", v22];
        *buf = 136315906;
        v107 = "+[MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:debugTreeURLs:mapsActivityDataPath:error:]";
        v108 = 2080;
        v109 = "MapsRadarAttachmentProviderTask.m";
        v110 = 1024;
        v111 = 130;
        v112 = 2112;
        v113 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      v25 = v86;
      if (sub_100E03634())
      {
        v26 = sub_10006D178();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v107 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      if (a6)
      {
        v28 = v22;
        v29 = 0;
        v30 = 0;
        *a6 = v22;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

LABEL_78:

      return v30;
    }

    v82 = v20;
    v31 = [NSURL fileURLWithPath:v90];
    v103 = v22;
    v32 = [v31 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v103];
    v33 = v103;

    if ((v32 & 1) == 0)
    {
      v34 = sub_10006D178();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [NSString stringWithFormat:@"Could not exclude state snapshot directory %@ from backups: %@", v90, v33];
        *buf = 136315906;
        v107 = "+[MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:debugTreeURLs:mapsActivityDataPath:error:]";
        v108 = 2080;
        v109 = "MapsRadarAttachmentProviderTask.m";
        v110 = 1024;
        v111 = 142;
        v112 = 2112;
        v113 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v36 = sub_10006D178();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v107 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v22 = [NSString stringWithFormat:@"%@/debugtree", v19];
    v102 = v33;
    v38 = [v15 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v102];
    v39 = v102;

    if ((v38 & 1) == 0 && v39)
    {
      v40 = sub_10006D178();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = [NSString stringWithFormat:@"Could not create debug tree directory %@", v39];
        *buf = 136315906;
        v107 = "+[MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:debugTreeURLs:mapsActivityDataPath:error:]";
        v108 = 2080;
        v109 = "MapsRadarAttachmentProviderTask.m";
        v110 = 1024;
        v111 = 148;
        v112 = 2112;
        v113 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v42 = sub_10006D178();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v107 = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v39 = 0;
    }

    v44 = [NSString stringWithFormat:@"%@/MapsActivityData", v19];
    v45 = +[UIApplication _maps_keyMapsSceneDelegate];
    v46 = [v45 mapsActivity];
    v47 = [v46 data];

    v101 = v39;
    v80 = v47;
    v81 = v44;
    LOBYTE(v45) = [v47 writeToFile:v44 options:1 error:&v101];
    v29 = v101;

    if ((v45 & 1) == 0 && v29)
    {
      v48 = sub_10006D178();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = [NSString stringWithFormat:@"Could not write maps data to a file %@", v29];
        *buf = 136315906;
        v107 = "+[MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:debugTreeURLs:mapsActivityDataPath:error:]";
        v108 = 2080;
        v109 = "MapsRadarAttachmentProviderTask.m";
        v110 = 1024;
        v111 = 157;
        v112 = 2112;
        v113 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v50 = sub_10006D178();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v107 = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v29 = 0;
    }

    v92 = objc_alloc_init(NSMutableArray);
    +[UIApplication sharedMapsDelegate];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v79 = v100 = 0u;
    obj = [v79 allVisibleMapViews];
    v95 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
    if (!v95)
    {
LABEL_69:

      if (a3)
      {
        *a3 = [NSURL fileURLWithPath:v87];
      }

      v30 = v82;
      if (v83)
      {
        *v83 = [v92 copy];
      }

      if (v84)
      {
        v74 = v81;
        *v84 = v81;
      }

      v25 = v86;
      goto LABEL_78;
    }

    v52 = 0;
    v94 = *v98;
LABEL_47:
    v53 = 0;
    while (1)
    {
      if (*v98 != v94)
      {
        objc_enumerationMutation(obj);
      }

      if (!v22)
      {
        goto LABEL_67;
      }

      v54 = *(*(&v97 + 1) + 8 * v53);
      v55 = v22;
      v56 = [v22 stringByAppendingPathComponent:@"debugtree"];
      if ([a1 _isMainScreenMapView:v54])
      {
        break;
      }

      if ([a1 _isCarPlayMapView:v54])
      {
        v57 = v56;
        v58 = @"-Car";
        goto LABEL_55;
      }

      v60 = [NSString stringWithFormat:@"-%lu", v52];
      v59 = [v56 stringByAppendingString:v60];

      v56 = v60;
LABEL_57:

      v61 = [v59 stringByAppendingPathExtension:@"json"];

      v62 = objc_alloc_init(VKDebugTree);
      [v62 enableAllOptions];
      v63 = [v54 _mapLayer];
      [v62 populateData:v63];

      v64 = [v62 logTree];
      v65 = [v64 dataUsingEncoding:4];
      v66 = v65;
      if (!v65 || (v96 = v29, v67 = [v65 writeToFile:v61 options:0 error:&v96], v68 = v96, v29, v29 = v68, (v67 & 1) == 0))
      {
        v69 = sub_10006D178();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = [NSString stringWithFormat:@"Could not write debugtree to a file %@", v29];
          *buf = 136315906;
          v107 = "+[MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:debugTreeURLs:mapsActivityDataPath:error:]";
          v108 = 2080;
          v109 = "MapsRadarAttachmentProviderTask.m";
          v110 = 1024;
          v111 = 190;
          v112 = 2112;
          v113 = v70;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
        }

        if (sub_100E03634())
        {
          v71 = sub_10006D178();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v72 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v107 = v72;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v68 = 0;
      }

      v73 = [NSURL fileURLWithPath:v61];
      [v92 addObject:v73];

      v29 = v68;
      a1 = v93;
      v22 = v55;
LABEL_67:
      ++v52;
      if (v95 == ++v53)
      {
        v95 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
        if (!v95)
        {
          goto LABEL_69;
        }

        goto LABEL_47;
      }
    }

    v57 = v56;
    v58 = @"-Main";
LABEL_55:
    v59 = [v57 stringByAppendingString:v58];
    goto LABEL_57;
  }

  if (!a6)
  {
    return 0;
  }

  [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  *a6 = v30 = 0;
  return v30;
}

+ (BOOL)_isMainScreenMapView:(id)a3
{
  v3 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v5 = dispatch_queue_get_label(0);
  if (label != v5)
  {
    v6 = !label || v5 == 0;
    if (v6 || strcmp(label, v5))
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = "+[MapsRadarAttachmentProviderTask _isMainScreenMapView:]";
        v17 = 2080;
        v18 = "MapsRadarAttachmentProviderTask.m";
        v19 = 1024;
        v20 = 91;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v15, 0x3Au);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }
  }

  v7 = +[UIApplication sharedMapsDelegate];
  v8 = [v7 chromeViewController];
  v9 = [v8 mapView];
  v10 = v9 == v3;

  return v10;
}

+ (BOOL)_isCarPlayMapView:(id)a3
{
  v3 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v5 = dispatch_queue_get_label(0);
  if (label != v5)
  {
    v6 = !label || v5 == 0;
    if (v6 || strcmp(label, v5))
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = "+[MapsRadarAttachmentProviderTask _isCarPlayMapView:]";
        v17 = 2080;
        v18 = "MapsRadarAttachmentProviderTask.m";
        v19 = 1024;
        v20 = 85;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v15, 0x3Au);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }
  }

  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 chromeViewController];
  v9 = [v8 mapView];
  v10 = v9 == v3;

  return v10;
}

@end