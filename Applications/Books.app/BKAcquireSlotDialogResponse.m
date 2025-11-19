@interface BKAcquireSlotDialogResponse
+ (BOOL)isDialogResponse:(id)a3;
- (BKAcquireSlotDialogResponse)initWithDialogDictionary:(id)a3;
- (id)_createActionFromButtonDictionary:(id)a3 title:(id)a4;
- (id)_createButtonsFromDialogDictionary:(id)a3;
- (id)createTransferDialogWithCompletion:(id)a3;
@end

@implementation BKAcquireSlotDialogResponse

+ (BOOL)isDialogResponse:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"dialog"];
  v4 = v3 != 0;

  return v4;
}

- (BKAcquireSlotDialogResponse)initWithDialogDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKAcquireSlotDialogResponse;
  v5 = [(BKAcquireSlotDialogResponse *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dialog"];
    v7 = [v6 copy];
    dialogDictionary = v5->_dialogDictionary;
    v5->_dialogDictionary = v7;
  }

  return v5;
}

- (id)createTransferDialogWithCompletion:(id)a3
{
  v26 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_opt_class();
  v4 = [(BKAcquireSlotDialogResponse *)self dialogDictionary];
  v5 = [v4 objectForKeyedSubscript:@"message"];
  v6 = BUDynamicCast();

  objc_opt_class();
  v7 = [(BKAcquireSlotDialogResponse *)self dialogDictionary];
  v8 = [v7 objectForKeyedSubscript:@"explanation"];
  v9 = BUDynamicCast();

  v10 = [(BKAcquireSlotDialogResponse *)self dialogDictionary];
  v11 = [(BKAcquireSlotDialogResponse *)self _createButtonsFromDialogDictionary:v10];

  v23 = v9;
  v24 = v6;
  v12 = [UIAlertController alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 title];
        v19 = [v17 style];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1001C161C;
        v27[3] = &unk_100A0AA90;
        v20 = v26;
        v27[4] = v17;
        v28 = v20;
        v21 = [UIAlertAction actionWithTitle:v18 style:v19 handler:v27];
        [v12 addAction:v21];
      }

      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  return v12;
}

- (id)_createButtonsFromDialogDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"okButtonString"];
  v7 = BUDynamicCast();

  if (!v7)
  {
    objc_opt_class();
    v8 = [v4 objectForKeyedSubscript:@"okButton"];
    v7 = BUDynamicCast();
  }

  if ([v7 length])
  {
    objc_opt_class();
    v9 = [v4 objectForKeyedSubscript:@"okButtonAction"];
    v10 = BUDynamicCast();

    v11 = [(BKAcquireSlotDialogResponse *)self _createActionFromButtonDictionary:v10 title:v7];
    [v5 addObject:v11];
  }

  objc_opt_class();
  v12 = [v4 objectForKeyedSubscript:@"cancelButtonString"];
  v13 = BUDynamicCast();

  if (v13 || (objc_opt_class(), [v4 objectForKeyedSubscript:@"cancelButton"], v14 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v13 = objc_claimAutoreleasedReturnValue(), v14, v13))
  {
    v15 = @"cancelButtonAction";
  }

  else
  {
    objc_opt_class();
    v20 = [v4 objectForKeyedSubscript:@"otherButtonString"];
    v13 = BUDynamicCast();

    v15 = @"otherButtonAction";
  }

  if ([v13 length])
  {
    objc_opt_class();
    v16 = [v4 objectForKeyedSubscript:v15];
    v17 = BUDynamicCast();

    v18 = [(BKAcquireSlotDialogResponse *)self _createActionFromButtonDictionary:v17 title:v13];
    [v18 setStyle:1];
    [v5 addObject:v18];
  }

  return v5;
}

- (id)_createActionFromButtonDictionary:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = [_BKAcquireSlotDialogButtonAction actionButtonWithTitle:a4];
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:@"buyParams"];

  v8 = BUDynamicCast();
  [v6 setBuyParams:v8];

  return v6;
}

@end