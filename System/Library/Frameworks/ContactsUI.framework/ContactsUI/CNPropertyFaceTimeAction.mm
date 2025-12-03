@interface CNPropertyFaceTimeAction
- (BOOL)canPerformAction;
- (CNPropertyFaceTimeAction)initWithContact:(id)contact propertyItems:(id)items;
- (void)_queryFaceTimeStatus;
- (void)dealloc;
- (void)performActionForItem:(id)item sender:(id)sender;
- (void)queryComplete;
@end

@implementation CNPropertyFaceTimeAction

- (void)queryComplete
{
  delegate = [(CNContactAction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactAction *)self delegate];
    [delegate2 actionDidUpdate:self];
  }
}

- (void)_queryFaceTimeStatus
{
  v3 = [CNPropertyBestIDSValueQuery alloc];
  propertyItems = [(CNPropertyAction *)self propertyItems];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getIDSServiceNameFaceTimeSymbolLoc_ptr_31036;
  v14 = getIDSServiceNameFaceTimeSymbolLoc_ptr_31036;
  if (!getIDSServiceNameFaceTimeSymbolLoc_ptr_31036)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getIDSServiceNameFaceTimeSymbolLoc_block_invoke_31037;
    v10[3] = &unk_1E74E7518;
    v10[4] = &v11;
    __getIDSServiceNameFaceTimeSymbolLoc_block_invoke_31037(v10);
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v6 = [(CNPropertyBestIDSValueQuery *)v3 initWithPropertyItems:propertyItems service:*v5];
    [(CNPropertyFaceTimeAction *)self setBestFaceTimeQuery:v6];

    bestFaceTimeQuery = [(CNPropertyFaceTimeAction *)self bestFaceTimeQuery];
    [bestFaceTimeQuery setDelegate:self];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameFaceTime(void)"];
    [currentHandler handleFailureInFunction:v9 file:@"CNUIIDS_SoftLink.h" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)performActionForItem:(id)item sender:(id)sender
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [(CNPropertyFaceTimeAction *)self bestFaceTimeQuery:item];
  bestIDSProperty = [v5 bestIDSProperty];

  if (!bestIDSProperty)
  {
    propertyItems = [(CNPropertyAction *)self propertyItems];
    v8 = [propertyItems count];

    if (v8)
    {
      propertyItems2 = [(CNPropertyAction *)self propertyItems];
      bestIDSProperty = [propertyItems2 objectAtIndexedSubscript:0];
    }

    else
    {
      bestIDSProperty = 0;
    }
  }

  v10 = CNUILogContactCard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = bestIDSProperty;
    _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEFAULT, "[CNPropertyFaceTimeAction performActionForItem:sender:], bestFaceTimePropertyItem = %@", buf, 0xCu);
  }

  if (bestIDSProperty)
  {
    labeledValue = [bestIDSProperty labeledValue];
    value = [labeledValue value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      stringValue = [value stringValue];
      v15 = 2;
    }

    else
    {
      stringValue = value;
      v15 = 3;
    }

    type = [(CNPropertyFaceTimeAction *)self type];
    v17 = [objc_alloc(MEMORY[0x1E6996A90]) initWithStringValue:stringValue type:v15];
    v18 = MEMORY[0x1E695DFF8];
    contact = [(CNContactAction *)self contact];
    if (type == 1)
    {
      [v18 _cnui_faceTimeAudioURLWithHandle:v17 contact:contact];
    }

    else
    {
      [v18 _cnui_faceTimeVideoURLWithHandle:v17 contact:contact];
    }
    v20 = ;

    v21 = CNUILogContactCard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v20;
      _os_log_impl(&dword_199A75000, v21, OS_LOG_TYPE_DEFAULT, "[CNPropertyFaceTimeAction performActionForItem:sender:], url = %@", buf, 0xCu);
    }

    if (v20)
    {
      v22 = +[CNUIDataCollector sharedCollector];
      v28 = CNUIContactActionFaceTimeMediaType;
      v23 = CNUIContactActionTypeFaceTime;
      if (type == 1)
      {
        v24 = &CNUIContactActionFaceTimeMediaTypeAudioOnly;
      }

      else
      {
        v24 = &CNUIContactActionFaceTimeMediaTypeVideo;
      }

      v25 = *v24;
      v29 = CNUIContactActionDestinationType;
      v30[0] = v25;
      v26 = &CNUIContactActionDestinationTypePhoneNumber;
      if ((isKindOfClass & 1) == 0)
      {
        v26 = &CNUIContactActionDestinationTypeEmail;
      }

      v30[1] = *v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v28 count:2];
      [v22 logContactActionType:v23 attributes:{v27, v28, v29, v30[0]}];

      [*MEMORY[0x1E69DDA98] openURL:v20 withCompletionHandler:&__block_literal_global_31060];
    }
  }
}

void __56__CNPropertyFaceTimeAction_performActionForItem_sender___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CNUILogContactCard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"failure";
    if (a2)
    {
      v4 = @"success";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEFAULT, "[CNPropertyFaceTimeAction performActionForItem:sender:], UIApp openURL = %@", &v5, 0xCu);
  }
}

- (BOOL)canPerformAction
{
  bestFaceTimeQuery = [(CNPropertyFaceTimeAction *)self bestFaceTimeQuery];
  bestIDSProperty = [bestFaceTimeQuery bestIDSProperty];
  v4 = bestIDSProperty != 0;

  return v4;
}

- (void)dealloc
{
  [(CNPropertyBestIDSValueQuery *)self->_bestFaceTimeQuery cancel];
  v3.receiver = self;
  v3.super_class = CNPropertyFaceTimeAction;
  [(CNPropertyFaceTimeAction *)&v3 dealloc];
}

- (CNPropertyFaceTimeAction)initWithContact:(id)contact propertyItems:(id)items
{
  v7.receiver = self;
  v7.super_class = CNPropertyFaceTimeAction;
  v4 = [(CNPropertyAction *)&v7 initWithContact:contact propertyItems:items];
  v5 = v4;
  if (v4)
  {
    [(CNPropertyFaceTimeAction *)v4 performSelector:sel__queryFaceTimeStatus withObject:0 afterDelay:0.0];
  }

  return v5;
}

@end