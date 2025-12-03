@interface MapsRadarScreenshotAttachmentHelper
+ (void)generateScreenshotAttachments:(unint64_t)attachments fromWindow:(id)window mapView:(id)view withName:(id)name radarDraft:(id)draft completion:(id)completion;
@end

@implementation MapsRadarScreenshotAttachmentHelper

+ (void)generateScreenshotAttachments:(unint64_t)attachments fromWindow:(id)window mapView:(id)view withName:(id)name radarDraft:(id)draft completion:(id)completion
{
  windowCopy = window;
  viewCopy = view;
  nameCopy = name;
  draftCopy = draft;
  completionCopy = completion;
  if (completionCopy)
  {
    if (windowCopy)
    {
      if (nameCopy)
      {
        _mapLayer = [viewCopy _mapLayer];
        navCameraDebugFlags = [_mapLayer navCameraDebugFlags];

        if (!qword_10195EE18)
        {
          v20 = +[NSUserDefaults standardUserDefaults];
          byte_10195EE20 = [v20 BOOLForKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

          byte_10195EE21 = +[DebugViewFrameHighlighter frameHighlightingEnabled];
          v21 = +[NSUserDefaults standardUserDefaults];
          byte_10195EE22 = [v21 BOOLForKey:@"CarInternalShowDeactivationReasons"];
        }

        v22 = +[NSUUID UUID];
        uUIDString = [v22 UUIDString];
        qword_10195EE18 = [uUIDString stringByAppendingFormat:@"#%lu", qword_10195EE18];

        ++qword_10195EE18;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100C96A08;
        block[3] = &unk_10164FE68;
        v37 = windowCopy;
        v38 = qword_10195EE18;
        selfCopy = self;
        v44 = navCameraDebugFlags;
        attachmentsCopy = attachments;
        v39 = viewCopy;
        v40 = nameCopy;
        v41 = draftCopy;
        v42 = completionCopy;
        v25 = qword_10195EE18;
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
        completionCopy[2](completionCopy);
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