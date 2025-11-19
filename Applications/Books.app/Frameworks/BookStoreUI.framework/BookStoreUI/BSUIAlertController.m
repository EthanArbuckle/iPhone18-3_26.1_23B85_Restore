@interface BSUIAlertController
+ (id)createActionModelsFrom:(id)a3;
+ (void)showActionSheet:(id)a3 message:(id)a4 actions:(id)a5 metricsDataOptions:(id)a6 options:(id)a7;
+ (void)showAlert:(id)a3 message:(id)a4 actions:(id)a5 metricsDataOptions:(id)a6 options:(id)a7;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BSUIAlertController)init;
- (id)createAlertControllerWith:(id)a3 alertStyle:(int64_t)a4 title:(id)a5 message:(id)a6 alignment:(int64_t)a7 tintColor:(id)a8 metricsData:(id)a9;
- (void)_recordAlertMetrics:(id)a3 actionType:(id)a4 title:(id)a5 message:(id)a6 alertStyle:(int64_t)a7 actionTargetId:(id)a8 returnValue:(id)a9;
- (void)dealloc;
- (void)dismiss;
- (void)presentAlertWithStyle:(int64_t)a3 title:(id)a4 message:(id)a5 actions:(id)a6 metricsData:(id)a7 useSortStyle:(BOOL)a8 options:(id)a9;
@end

@implementation BSUIAlertController

- (BSUIAlertController)init
{
  v6.receiver = self;
  v6.super_class = BSUIAlertController;
  v2 = [(BSUIAlertController *)&v6 init];
  if (v2)
  {
    v3 = [NSMapTable mapTableWithKeyOptions:5 valueOptions:5];
    actionsToActionModelsTable = v2->_actionsToActionModelsTable;
    v2->_actionsToActionModelsTable = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(BSUIAlertController *)self dismiss];
  v3.receiver = self;
  v3.super_class = BSUIAlertController;
  [(BSUIAlertController *)&v3 dealloc];
}

+ (void)showActionSheet:(id)a3 message:(id)a4 actions:(id)a5 metricsDataOptions:(id)a6 options:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  objc_opt_class();
  v18 = BUDynamicCast();

  objc_opt_class();
  v16 = BUDynamicCast();

  v17 = objc_opt_new();
  [v17 presentAlertWithStyle:0 title:v18 message:v16 actions:v13 metricsData:v12 useSortStyle:0 options:v11];
}

+ (void)showAlert:(id)a3 message:(id)a4 actions:(id)a5 metricsDataOptions:(id)a6 options:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  objc_opt_class();
  v18 = BUDynamicCast();

  objc_opt_class();
  v16 = BUDynamicCast();

  v17 = objc_opt_new();
  [v17 presentAlertWithStyle:1 title:v18 message:v16 actions:v13 metricsData:v12 useSortStyle:0 options:v11];
}

+ (id)createActionModelsFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 valueAtIndex:0];
  v5 = +[NSMutableArray array];
  if ([v4 isObject])
  {
    v6 = 1;
    do
    {
      v7 = [[_JSAAlertActionModel alloc] initWithAction:v4];
      [v5 addObject:v7];
      v8 = [v3 valueAtIndex:v6];

      ++v6;
      v4 = v8;
    }

    while (([v8 isObject] & 1) != 0);
  }

  else
  {
    v8 = v4;
  }

  return v5;
}

- (void)_recordAlertMetrics:(id)a3 actionType:(id)a4 title:(id)a5 message:(id)a6 alertStyle:(int64_t)a7 actionTargetId:(id)a8 returnValue:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = +[NSDate date];
  [v21 timeIntervalSince1970];
  v23 = v22;

  v24 = v23 * 1000.0;
  v25 = JSARecordResultUnknown;
  v49 = v16;
  v50 = v15;
  v48 = v18;
  v46 = v20;
  v44 = a7;
  if ([v20 isBoolean])
  {
    v26 = [v20 toBool];
    v27 = &JSARecordResultSuccess;
    if (!v26)
    {
      v27 = &JSARecordResultFailure;
    }

    v28 = *v27;

    v25 = v28;
  }

  v57[0] = JSARecordKeyUserActionTargetId;
  v57[1] = JSARecordKeyUserActionResult;
  v47 = v19;
  v58[0] = v19;
  v58[1] = v25;
  v45 = v25;
  v57[2] = JSARecordKeyUserActionResponseTime;
  v29 = [NSNumber numberWithDouble:v24];
  v58[2] = v29;
  v43 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];

  v30 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v31 = [(BSUIAlertController *)self actionModels];
  v32 = [v31 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v52;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v51 + 1) + 8 * i);
        v37 = [v36 option];
        [v30 appendString:v37];

        v38 = [(BSUIAlertController *)self actionModels];
        v39 = [v38 lastObject];

        if (v36 != v39)
        {
          [v30 appendString:@" "];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v33);
  }

  if (v50)
  {
    v40 = [v50 mutableCopy];
  }

  else
  {
    v40 = &__NSDictionary0__struct;
  }

  [v40 setObject:v49 forKeyedSubscript:JSARecordKeyActionType];
  v41 = &JSARecordDialogTypeAlert;
  if (v44 != 1)
  {
    v41 = &JSARecordDialogTypeActionSheet;
  }

  [v40 setObject:*v41 forKeyedSubscript:JSARecordKeyDialogType];
  [v40 setObject:v17 forKeyedSubscript:JSARecordKeyTitle];
  [v40 setObject:v48 forKeyedSubscript:JSARecordKeyMessage];
  [v40 setObject:v30 forKeyedSubscript:JSARecordKeyOptions];
  [v40 setObject:v45 forKeyedSubscript:JSARecordKeyResult];
  [v40 setObject:v47 forKeyedSubscript:JSARecordKeyTargetId];
  v55 = v43;
  v42 = [NSArray arrayWithObjects:&v55 count:1];
  [v40 setObject:v42 forKeyedSubscript:JSARecordKeyUserActions];

  [v40 setObject:JSARecordEventTypeDialog forKeyedSubscript:JSARecordKeyEventType];
  [JSAApplication recordNativeEvent:v40];
}

- (id)createAlertControllerWith:(id)a3 alertStyle:(int64_t)a4 title:(id)a5 message:(id)a6 alignment:(int64_t)a7 tintColor:(id)a8 metricsData:(id)a9
{
  v35 = a3;
  v13 = a5;
  v14 = a6;
  v37 = a8;
  v41 = a9;
  v42 = v14;
  v43 = v13;
  v40 = a4;
  val = [UIAlertController alertControllerWithTitle:v13 message:v14 preferredStyle:a4];
  if (v37)
  {
    v15 = [val view];
    [v15 setTintColor:v37];
  }

  v16 = [BSUIAlertController createActionModelsFrom:v35, v35];
  [(BSUIAlertController *)self setActionModels:v16];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v17 = [(BSUIAlertController *)self actionModels];
  v18 = [v17 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v18)
  {
    v19 = *v65;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v65 != v19)
        {
          objc_enumerationMutation(v17);
        }

        if ([*(*(&v64 + 1) + 8 * i) type] == &dword_0 + 1)
        {
          v38 = 0;
          goto LABEL_13;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v38 = 1;
LABEL_13:

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(BSUIAlertController *)self actionModels];
  v47 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v47)
  {
    v45 = *v61;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v60 + 1) + 8 * j);
        if ([v22 type] == &dword_0 + 1)
        {
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_24604;
          v59[3] = &unk_3879E0;
          v59[4] = v22;
          v59[5] = self;
          [val addTextFieldWithConfigurationHandler:v59];
        }

        else
        {
          v23 = [v22 actionType];
          v24 = [v22 title];
          v25 = [v22 callback];
          v26 = [v22 selected];
          v27 = [v22 style];
          objc_initWeak(&location, val);
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_24678;
          v49[3] = &unk_387A08;
          v28 = v25;
          v50 = v28;
          objc_copyWeak(v57, &location);
          v51 = self;
          v52 = v41;
          v29 = v23;
          v53 = v29;
          v54 = v43;
          v30 = v42;
          v57[1] = v40;
          v55 = v30;
          v56 = v22;
          v31 = [UIAlertAction actionWithTitle:v24 style:v27 handler:v49];
          v32 = [(BSUIAlertController *)self actionsToActionModelsTable];
          [v32 setObject:v22 forKey:v31];

          if (([v22 allowsEmpty] & 1) == 0)
          {
            v33 = [v22 style] == &dword_0 + 1 ? 1 : v38;
            if ((v33 & 1) == 0)
            {
              [v31 setEnabled:0];
            }
          }

          if (v27 != &dword_0 + 1)
          {
            [v31 _setTitleTextAlignment:a7];
            [v31 _setChecked:v26];
          }

          [val addAction:v31];

          objc_destroyWeak(v57);
          objc_destroyWeak(&location);
        }
      }

      v47 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v47);
  }

  return val;
}

- (void)presentAlertWithStyle:(int64_t)a3 title:(id)a4 message:(id)a5 actions:(id)a6 metricsData:(id)a7 useSortStyle:(BOOL)a8 options:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_24A48;
  v28[3] = &unk_387A30;
  v35 = a8;
  v28[4] = self;
  v20 = v17;
  v29 = v20;
  v34 = a3;
  v21 = v15;
  v30 = v21;
  v22 = v16;
  v31 = v22;
  v23 = v18;
  v32 = v23;
  v24 = v19;
  v33 = v24;
  v25 = objc_retainBlock(v28);
  if (v25)
  {
    if (+[NSThread isMainThread])
    {
      (v25[2])(v25);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_24B70;
      block[3] = &unk_386C58;
      v27 = v25;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)dismiss
{
  v3 = [(BSUIAlertController *)self alertController];
  [v3 dismissViewControllerAnimated:0 completion:0];

  [(BSUIAlertController *)self setAlertController:0];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v34 = a5;
  [(BSUIAlertController *)self alertController];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = v42 = 0u;
  v10 = [v33 textFields];
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        if (v15 == v9)
        {
          v18 = [v9 text];
          v19 = [v18 stringByReplacingCharactersInRange:location withString:{length, v34}];

          v20 = [v19 length];
          if (!v20)
          {
LABEL_13:
            v21 = 1;
            goto LABEL_14;
          }
        }

        else
        {
          v16 = [v15 text];
          v17 = [v16 length];

          if (!v17)
          {
            goto LABEL_13;
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_14:

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v33 actions];
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      v26 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * v26);
        v28 = [(BSUIAlertController *)self actionsToActionModelsTable];
        v29 = [v28 objectForKey:v27];

        v30 = !v21 || ([v29 allowsEmpty] & 1) != 0 || objc_msgSend(v29, "style") == &dword_0 + 1;
        [v27 setEnabled:v30];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v31 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
      v24 = v31;
    }

    while (v31);
  }

  return 1;
}

@end