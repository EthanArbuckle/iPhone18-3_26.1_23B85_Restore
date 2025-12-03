@interface BKAcquireSlotDialogResponse
+ (BOOL)isDialogResponse:(id)response;
- (BKAcquireSlotDialogResponse)initWithDialogDictionary:(id)dictionary;
- (id)_createActionFromButtonDictionary:(id)dictionary title:(id)title;
- (id)_createButtonsFromDialogDictionary:(id)dictionary;
- (id)createTransferDialogWithCompletion:(id)completion;
@end

@implementation BKAcquireSlotDialogResponse

+ (BOOL)isDialogResponse:(id)response
{
  v3 = [response objectForKeyedSubscript:@"dialog"];
  v4 = v3 != 0;

  return v4;
}

- (BKAcquireSlotDialogResponse)initWithDialogDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = BKAcquireSlotDialogResponse;
  v5 = [(BKAcquireSlotDialogResponse *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialog"];
    v7 = [v6 copy];
    dialogDictionary = v5->_dialogDictionary;
    v5->_dialogDictionary = v7;
  }

  return v5;
}

- (id)createTransferDialogWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_opt_class();
  dialogDictionary = [(BKAcquireSlotDialogResponse *)self dialogDictionary];
  v5 = [dialogDictionary objectForKeyedSubscript:@"message"];
  v6 = BUDynamicCast();

  objc_opt_class();
  dialogDictionary2 = [(BKAcquireSlotDialogResponse *)self dialogDictionary];
  v8 = [dialogDictionary2 objectForKeyedSubscript:@"explanation"];
  v9 = BUDynamicCast();

  dialogDictionary3 = [(BKAcquireSlotDialogResponse *)self dialogDictionary];
  v11 = [(BKAcquireSlotDialogResponse *)self _createButtonsFromDialogDictionary:dialogDictionary3];

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
        title = [v17 title];
        style = [v17 style];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1001C161C;
        v27[3] = &unk_100A0AA90;
        v20 = completionCopy;
        v27[4] = v17;
        v28 = v20;
        v21 = [UIAlertAction actionWithTitle:title style:style handler:v27];
        [v12 addAction:v21];
      }

      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  return v12;
}

- (id)_createButtonsFromDialogDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v6 = [dictionaryCopy objectForKeyedSubscript:@"okButtonString"];
  v7 = BUDynamicCast();

  if (!v7)
  {
    objc_opt_class();
    v8 = [dictionaryCopy objectForKeyedSubscript:@"okButton"];
    v7 = BUDynamicCast();
  }

  if ([v7 length])
  {
    objc_opt_class();
    v9 = [dictionaryCopy objectForKeyedSubscript:@"okButtonAction"];
    v10 = BUDynamicCast();

    v11 = [(BKAcquireSlotDialogResponse *)self _createActionFromButtonDictionary:v10 title:v7];
    [v5 addObject:v11];
  }

  objc_opt_class();
  v12 = [dictionaryCopy objectForKeyedSubscript:@"cancelButtonString"];
  v13 = BUDynamicCast();

  if (v13 || (objc_opt_class(), [dictionaryCopy objectForKeyedSubscript:@"cancelButton"], v14 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v13 = objc_claimAutoreleasedReturnValue(), v14, v13))
  {
    v15 = @"cancelButtonAction";
  }

  else
  {
    objc_opt_class();
    v20 = [dictionaryCopy objectForKeyedSubscript:@"otherButtonString"];
    v13 = BUDynamicCast();

    v15 = @"otherButtonAction";
  }

  if ([v13 length])
  {
    objc_opt_class();
    v16 = [dictionaryCopy objectForKeyedSubscript:v15];
    v17 = BUDynamicCast();

    v18 = [(BKAcquireSlotDialogResponse *)self _createActionFromButtonDictionary:v17 title:v13];
    [v18 setStyle:1];
    [v5 addObject:v18];
  }

  return v5;
}

- (id)_createActionFromButtonDictionary:(id)dictionary title:(id)title
{
  dictionaryCopy = dictionary;
  v6 = [_BKAcquireSlotDialogButtonAction actionButtonWithTitle:title];
  objc_opt_class();
  v7 = [dictionaryCopy objectForKeyedSubscript:@"buyParams"];

  v8 = BUDynamicCast();
  [v6 setBuyParams:v8];

  return v6;
}

@end