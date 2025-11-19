@interface PHPickerViewController
- (id)crl_loadFileRepresentationsForResultItemProviders:(id)a3 supportedTypeIdentifiers:(id)a4 completionHandler:(id)a5;
- (id)crl_loadFileRepresentationsForResults:(id)a3 supportedTypeIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)cancelAnimated:(BOOL)a3 completionQueue:(id)a4 completionHandler:(id)a5;
@end

@implementation PHPickerViewController

- (id)crl_loadFileRepresentationsForResults:(id)a3 supportedTypeIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 crl_arrayByMappingObjectsUsingBlock:&stru_10183B018];
  v11 = [(PHPickerViewController *)self crl_loadFileRepresentationsForResultItemProviders:v10 supportedTypeIdentifiers:v9 completionHandler:v8];

  return v11;
}

- (id)crl_loadFileRepresentationsForResultItemProviders:(id)a3 supportedTypeIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  if (qword_101AD59E0 != -1)
  {
    sub_101310B1C();
  }

  v12 = off_1019EC470;
  if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v11 publicString];
    v15 = [v11 privateString];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ Loading assets", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2810000000;
  v48[3] = &unk_1016A8115;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = sub_1000DFDE8;
  v53 = sub_1000DFDF8;
  v54 = 0;
  v16 = [NSProgress progressWithTotalUnitCount:100];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000DFE00;
  v37[3] = &unk_10183B150;
  v40 = v46;
  v41 = v44;
  v39 = v48;
  v37[4] = v11;
  objc_copyWeak(&v43, &location);
  v17 = v10;
  v38 = v17;
  v42 = buf;
  v18 = [PHPickerResult crl_loadFileRepresentationsForResultItemProviders:v8 supportedTypeIdentifiers:v9 completionHandler:v37];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000E0658;
  v36[3] = &unk_10183B178;
  v36[4] = v48;
  v36[5] = v44;
  [v18 setCancellationHandler:v36];
  v19 = dispatch_time(0, 1000000000);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1000E06B4;
  v28 = &unk_10183B208;
  objc_copyWeak(&v35, &location);
  v32 = v48;
  v33 = v46;
  v20 = v18;
  v34 = buf;
  v29 = v20;
  v30 = v11;
  v21 = v16;
  v31 = v21;
  dispatch_after(v19, &_dispatch_main_q, &v25);
  [v21 addChild:v20 withPendingUnitCount:{100, v25, v26, v27, v28}];
  v22 = v31;
  v23 = v21;

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v43);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);
  objc_destroyWeak(&location);

  return v23;
}

- (void)cancelAnimated:(BOOL)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = [(PHPickerViewController *)self presentedViewController];
  v11 = sub_100014370(v9, v10);

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [v11 crl_contentViewController];
    v14 = sub_100013F00(v12, v13);
    v15 = [v14 progress];

    [v15 cancel];
  }

  if (v8)
  {
    if (v7)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E0CCC;
      block[3] = &unk_10183B230;
      v17 = v8;
      dispatch_async(v7, block);
    }

    else
    {
      v8[2](v8);
    }
  }
}

@end