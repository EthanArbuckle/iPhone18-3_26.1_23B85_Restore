@interface VehicleDisambiguationTask
- (void)displayDisambiguationPromptIfNeededFromChromeViewController:(id)a3;
@end

@implementation VehicleDisambiguationTask

- (void)displayDisambiguationPromptIfNeededFromChromeViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *location = 136315650;
      *&location[4] = "[VehicleDisambiguationTask displayDisambiguationPromptIfNeededFromChromeViewController:]";
      v47 = 2080;
      v48 = "VehicleDisambiguationTask.m";
      v49 = 1024;
      v50 = 31;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", location, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }

    v24 = sub_100798E54();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Tried to display disambiguation, but did not have a chrome to display on.", location, 2u);
    }

    goto LABEL_15;
  }

  if ((MapsFeature_IsEnabled_EVRouting() & 1) == 0)
  {
    v24 = sub_100798E54();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *location = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Won't present disambiguation because EV routing is not enabled.", location, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  objc_initWeak(location, self);
  objc_initWeak(&from, v4);
  +[MapsExternalAccessory sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1008C13F0;
  v5 = v43[3] = &unk_10162D538;
  v44 = v5;
  v6 = objc_retainBlock(v43);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1008C14EC;
  v41[3] = &unk_10165F1D0;
  v42 = &stru_10162D578;
  v7 = objc_retainBlock(v41);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1008C15B0;
  v36[3] = &unk_10162D608;
  objc_copyWeak(&v40, location);
  v8 = v6;
  v38 = v8;
  v9 = v5;
  v37 = v9;
  v10 = v7;
  v39 = v10;
  v11 = objc_retainBlock(v36);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1008C16A4;
  v31[3] = &unk_10162D6C0;
  objc_copyWeak(&v35, &from);
  v12 = v9;
  v32 = v12;
  v13 = v10;
  v33 = v13;
  v14 = v8;
  v34 = v14;
  v15 = objc_retainBlock(v31);
  v16 = +[VGVirtualGarageService sharedService];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1008C1794;
  v25[3] = &unk_10162D708;
  v17 = v12;
  v26 = v17;
  v27 = &stru_10162D578;
  v18 = v14;
  v28 = v18;
  v19 = v11;
  v29 = v19;
  v20 = v15;
  v30 = v20;
  [v16 virtualGarageGetGarageWithReply:v25];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&from);
  objc_destroyWeak(location);
LABEL_16:
}

@end