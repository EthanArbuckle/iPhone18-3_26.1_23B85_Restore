@interface COSUnpairActionsHelper
+ (void)applyUnpairActionsForContext:(id)a3 withCompletion:(id)a4;
+ (void)checkIfWatch:(id)a3 hasPlanWithBlock:(id)a4;
+ (void)presentApplePayLocallyStoredValueOfflineWarningIfNeededForContext:(id)a3 completionHandler:(id)a4;
+ (void)presentUnpairOrResetErrorMessage:(id)a3 fromController:(id)a4 withCompletion:(id)a5;
+ (void)promptWhetherToPreserveCellPlansPriorToUnpairForWatch:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
@end

@implementation COSUnpairActionsHelper

+ (void)applyUnpairActionsForContext:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 device];
  v9 = [v6 markAsMissing];
  v10 = [v6 presentingViewController];
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v75 = 0;
  v11 = [v8 valueForProperty:NRDevicePropertyIsAltAccount];
  v12 = [v11 BOOLValue];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100111964;
  v67[3] = &unk_10026C180;
  v13 = v8;
  v68 = v13;
  v73 = v9;
  v37 = v10;
  v69 = v37;
  v14 = v7;
  v71 = v14;
  v72 = v74;
  v15 = v6;
  v70 = v15;
  v16 = objc_retainBlock(v67);
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100111EE0;
  v59[3] = &unk_10026C220;
  v66 = v12;
  v17 = v13;
  v60 = v17;
  v18 = v14;
  v62 = v18;
  v64 = v74;
  v65 = a1;
  v19 = v15;
  v61 = v19;
  v36 = v16;
  v63 = v36;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001123E4;
  v57[3] = &unk_100269120;
  v35 = objc_retainBlock(v59);
  v58 = v35;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1001123F4;
  v52[3] = &unk_10026C270;
  v20 = objc_retainBlock(v57);
  v54 = v20;
  v21 = v18;
  v55 = v21;
  v56 = v74;
  v22 = v19;
  v53 = v22;
  v23 = objc_retainBlock(v52);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1001126B4;
  v48[3] = &unk_100269E48;
  v24 = v17;
  v49 = v24;
  v25 = v20;
  v50 = v25;
  v26 = v23;
  v51 = v26;
  v27 = objc_retainBlock(v48);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100112AA4;
  v42[3] = &unk_10026C2E8;
  v47 = a1;
  v28 = v22;
  v43 = v28;
  v29 = v27;
  v44 = v29;
  v30 = v21;
  v45 = v30;
  v46 = v74;
  v31 = objc_retainBlock(v42);
  v32 = objc_opt_class();
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100112B8C;
  v38[3] = &unk_10026C310;
  v33 = v30;
  v39 = v33;
  v41 = v74;
  v34 = v31;
  v40 = v34;
  [v32 promptWhetherToPreserveCellPlansPriorToUnpairForWatch:v24 presentingViewController:v37 completionHandler:v38];

  _Block_object_dispose(v74, 8);
}

+ (void)presentApplePayLocallyStoredValueOfflineWarningIfNeededForContext:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "+[COSUnpairActionsHelper presentApplePayLocallyStoredValueOfflineWarningIfNeededForContext:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  v8 = [UIApp activeWatch];
  if (v8 && ([v5 device], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v5, "device"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, v10, v12))
  {
    v13 = [v5 presentingViewController];
    v14 = [v5 device];
    [BPSApplePayLocallyStoredValueManager presentApplePayLocallyStoredValueOfflineWarningIfNeededInController:v13 forPairedDevice:v14 withCompletion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 1);
  }
}

+ (void)checkIfWatch:(id)a3 hasPlanWithBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking if watch has plan for Device", buf, 2u);
  }

  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = sub_100008C6C;
  v41 = sub_100009D28;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100008C6C;
  v35[4] = sub_100009D28;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100008C6C;
  v33 = sub_100009D28;
  v34 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v8 = v30[5];
  v9 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  v10 = v30[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100113160;
  handler[3] = &unk_10026B508;
  v28 = &v29;
  v11 = v6;
  v27 = v11;
  dispatch_source_set_event_handler(v10, handler);
  v12 = v30[5];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001131D4;
  v21[3] = &unk_10026C338;
  v22 = v11;
  v23 = &v29;
  v24 = v35;
  v25 = buf;
  v13 = v11;
  dispatch_source_set_cancel_handler(v12, v21);
  v14 = dispatch_get_global_queue(25, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001132F0;
  v16[3] = &unk_10026C3B0;
  v17 = v5;
  v18 = &v29;
  v19 = buf;
  v20 = v35;
  v15 = v5;
  dispatch_async(v14, v16);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(buf, 8);
}

+ (void)promptWhetherToPreserveCellPlansPriorToUnpairForWatch:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    HasCapabilityForString = BPSDeviceHasCapabilityForString();
    v12 = pbb_manualunpairing_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (HasCapabilityForString)
    {
      if (v13)
      {
        *buf = 136315138;
        v30 = "+[COSUnpairActionsHelper promptWhetherToPreserveCellPlansPriorToUnpairForWatch:presentingViewController:completionHandler:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100113B60;
      v25[3] = &unk_100269308;
      v14 = v8;
      v26 = v14;
      v15 = v10;
      v28 = v15;
      v16 = v9;
      v27 = v16;
      v17 = objc_retainBlock(v25);
      v18 = [v14 valueForProperty:NRDevicePropertyIsActive];
      v19 = [v18 BOOLValue];

      if (v19)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100113E3C;
        v21[3] = &unk_10026C3D8;
        v23 = v17;
        v24 = v15;
        v22 = v16;
        [a1 checkIfWatch:v14 hasPlanWithBlock:v21];
      }

      else
      {
        v20 = pbb_manualunpairing_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Presenting ambiguous cellular plan alert; Watch is not active", buf, 2u);
        }

        (v17[2])(v17);
      }
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not prompting whether to delete plans; Watch does not have Cellular capability", buf, 2u);
      }

      (*(v10 + 2))(v10, 0, 0, 0);
    }
  }
}

+ (void)presentUnpairOrResetErrorMessage:(id)a3 fromController:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001142E8;
  block[3] = &unk_100269308;
  v13 = a4;
  v14 = a5;
  v12 = v7;
  v8 = v13;
  v9 = v14;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

@end