@interface MapsRadarScreenshotAttachmentHelper
+ (void)generateScreenshotAttachments:(unint64_t)a3 fromWindow:(id)a4 mapView:(id)a5 withName:(id)a6 radarDraft:(id)a7 completion:(id)a8;
@end

@implementation MapsRadarScreenshotAttachmentHelper

+ (void)generateScreenshotAttachments:(unint64_t)a3 fromWindow:(id)a4 mapView:(id)a5 withName:(id)a6 radarDraft:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v18)
  {
    if (v14)
    {
      if (v16)
      {
        v19 = [v15 _mapLayer];
        v35 = [v19 navCameraDebugFlags];

        if (!qword_10195EE18)
        {
          v20 = +[NSUserDefaults standardUserDefaults];
          byte_10195EE20 = [v20 BOOLForKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

          byte_10195EE21 = +[DebugViewFrameHighlighter frameHighlightingEnabled];
          v21 = +[NSUserDefaults standardUserDefaults];
          byte_10195EE22 = [v21 BOOLForKey:@"CarInternalShowDeactivationReasons"];
        }

        v22 = +[NSUUID UUID];
        v23 = [v22 UUIDString];
        v24 = [v23 stringByAppendingFormat:@"#%lu", qword_10195EE18];

        ++qword_10195EE18;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100C96A08;
        block[3] = &unk_10164FE68;
        v37 = v14;
        v38 = v24;
        v43 = a1;
        v44 = v35;
        v45 = a3;
        v39 = v15;
        v40 = v16;
        v41 = v17;
        v42 = v18;
        v25 = v24;
        dispatch_async(&_dispatch_main_q, block);

LABEL_12:
        goto LABEL_25;
      }

      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [NSString stringWithFormat:@"name is necessary for screenshot generation"];
        *buf = 136315906;
        v47 = "+[MapsRadarScreenshotAttachmentHelper generateScreenshotAttachments:fromWindow:mapView:withName:radarDraft:completion:]";
        v48 = 2080;
        v49 = "MapsRadarScreenshotAttachmentHelper.m";
        v50 = 1024;
        v51 = 47;
        v52 = 2112;
        v53 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (!sub_100E03634())
      {
LABEL_24:
        v18[2](v18);
        goto LABEL_25;
      }

      v31 = sub_10006D178();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [NSString stringWithFormat:@"window is necessary for screenshot generation"];
        *buf = 136315906;
        v47 = "+[MapsRadarScreenshotAttachmentHelper generateScreenshotAttachments:fromWindow:mapView:withName:radarDraft:completion:]";
        v48 = 2080;
        v49 = "MapsRadarScreenshotAttachmentHelper.m";
        v50 = 1024;
        v51 = 41;
        v52 = 2112;
        v53 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
      }

      if (!sub_100E03634())
      {
        goto LABEL_24;
      }

      v31 = sub_10006D178();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }
    }

    v34 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v47 = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

    goto LABEL_23;
  }

  v26 = sub_10006D178();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = [NSString stringWithFormat:@"completion block is necessary for screenshot generation"];
    *buf = 136315906;
    v47 = "+[MapsRadarScreenshotAttachmentHelper generateScreenshotAttachments:fromWindow:mapView:withName:radarDraft:completion:]";
    v48 = 2080;
    v49 = "MapsRadarScreenshotAttachmentHelper.m";
    v50 = 1024;
    v51 = 36;
    v52 = 2112;
    v53 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
  }

  if (sub_100E03634())
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_25:
}

@end