@interface _SFQRCodeDetectionController
+ (_SFQRCodeDetectionController)sharedController;
- (_SFQRCodeDetectionController)init;
- (id)actionForElement:(id)element;
- (id)adjustedCopyActionForAction:(id)action elementInfo:(id)info;
- (id)elementForAction:(id)action;
- (id)getActionForImageSynchronously:(id)synchronously userInfo:(id *)info;
- (id)menuElementsForElementInfo:(id)info;
- (void)getActionForImage:(id)image completion:(id)completion;
@end

@implementation _SFQRCodeDetectionController

+ (_SFQRCodeDetectionController)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___SFQRCodeDetectionController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

- (_SFQRCodeDetectionController)init
{
  v11.receiver = self;
  v11.super_class = _SFQRCodeDetectionController;
  v2 = [(_SFQRCodeDetectionController *)&v11 init];
  if (v2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v3 = getBCSQRCodeParserClass_softClass;
    v16 = getBCSQRCodeParserClass_softClass;
    if (!getBCSQRCodeParserClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getBCSQRCodeParserClass_block_invoke;
      v12[3] = &unk_1E848F710;
      v12[4] = &v13;
      __getBCSQRCodeParserClass_block_invoke(v12);
      v3 = v14[3];
    }

    v4 = v3;
    _Block_object_dispose(&v13, 8);
    v5 = objc_alloc_init(v3);
    QRCodeParser = v2->_QRCodeParser;
    v2->_QRCodeParser = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cachedElements = v2->_cachedElements;
    v2->_cachedElements = v7;

    v9 = v2;
  }

  return v2;
}

- (void)getActionForImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  QRCodeParser = self->_QRCodeParser;
  cGImage = [image CGImage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___SFQRCodeDetectionController_getActionForImage_completion___block_invoke;
  v10[3] = &unk_1E8494820;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BCSQRCodeParser *)QRCodeParser parseCodeFromImage:cGImage completionHandler:v10];
}

- (id)getActionForImageSynchronously:(id)synchronously userInfo:(id *)info
{
  v27[1] = *MEMORY[0x1E69E9840];
  synchronouslyCopy = synchronously;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v7 = dispatch_semaphore_create(0);
  QRCodeParser = self->_QRCodeParser;
  v9 = synchronouslyCopy;
  cGImage = [synchronouslyCopy CGImage];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72___SFQRCodeDetectionController_getActionForImageSynchronously_userInfo___block_invoke;
  v17[3] = &unk_1E8494848;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  [(BCSQRCodeParser *)QRCodeParser parseCodeFromImage:cGImage completionHandler:v17];
  v12 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v11, v12);
  if (info)
  {
    v13 = v21[5];
    if (v13)
    {
      v26 = @"action";
      v27[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *info = v14;
    }

    else
    {
      *info = 0;
    }
  }

  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (id)elementForAction:(id)action
{
  actionCopy = action;
  cachedElements = self->_cachedElements;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___SFQRCodeDetectionController_elementForAction___block_invoke;
  v9[3] = &unk_1E8494870;
  v10 = actionCopy;
  v6 = actionCopy;
  v7 = [(NSMutableSet *)cachedElements safari_anyObjectPassingTest:v9];

  return v7;
}

- (id)menuElementsForElementInfo:(id)info
{
  userInfo = [info userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"action"];

  urlThatCanBeOpened = [v4 urlThatCanBeOpened];

  v6 = MEMORY[0x1E695E0F0];
  if (!urlThatCanBeOpened && v4)
  {
    actionPickerItems = [v4 actionPickerItems];
    v8 = [actionPickerItems count];

    if (v8)
    {
      actionPickerItems2 = [v4 actionPickerItems];
      v6 = [actionPickerItems2 safari_mapObjectsUsingBlock:&__block_literal_global_47];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  return v6;
}

- (id)actionForElement:(id)element
{
  userInfo = [element userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"action"];

  return v4;
}

- (id)adjustedCopyActionForAction:(id)action elementInfo:(id)info
{
  actionCopy = action;
  v7 = [(_SFQRCodeDetectionController *)self actionForElement:info];
  v8 = v7;
  if (v7)
  {
    urlThatCanBeOpened = [v7 urlThatCanBeOpened];
    if (urlThatCanBeOpened)
    {
      v10 = MEMORY[0x1E69DC628];
      v11 = _WBSLocalizedString();
      v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72___SFQRCodeDetectionController_adjustedCopyActionForAction_elementInfo___block_invoke;
      v17[3] = &unk_1E848F480;
      v18 = urlThatCanBeOpened;
      v13 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v17];
    }

    else
    {
      actionPickerItems = [v8 actionPickerItems];
      v15 = [actionPickerItems safari_containsObjectPassingTest:&__block_literal_global_21_0];

      if (v15)
      {
        v13 = 0;
      }

      else
      {
        v13 = actionCopy;
      }
    }
  }

  else
  {
    v13 = actionCopy;
  }

  return v13;
}

@end