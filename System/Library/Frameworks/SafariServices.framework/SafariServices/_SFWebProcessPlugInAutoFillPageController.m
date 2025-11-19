@interface _SFWebProcessPlugInAutoFillPageController
- (_SFWebProcessPlugInAutoFillPageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (void)annotateForm:(int64_t)a3 inFrame:(id)a4 withValues:(id)a5;
- (void)autoFillForm:(int64_t)a3 inFrame:(id)a4 withGeneratedPassword:(id)a5;
- (void)autoFillFormAsynchronouslyInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5 completionHandler:(id)a6;
- (void)automaticPasswordSheetDimissedInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4;
- (void)clearAutoFillMetadata;
- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5;
- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)a3;
- (void)collectFormMetadataForPrefillingAtURL:(id)a3;
- (void)collectFormMetadataForTestingAtURL:(id)a3;
- (void)collectURLsForPrefillingAtURL:(id)a3;
- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4;
- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 atURL:(id)a5 completionHandler:(id)a6;
- (void)removeAutomaticPasswordElementsInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4 passwordControlUniqueIDs:(id)a5;
- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)a3 passwordControlUniqueIDs:(id)a4;
- (void)runJavaScriptForActivity:(id)a3 withScript:(id)a4 object:(id)a5 invokeMethod:(id)a6 completionHandler:(id)a7;
- (void)setAutoFillSpinnerVisibility:(BOOL)a3 textFieldMetadata:(id)a4 frame:(id)a5;
- (void)setFormControls:(id)a3 areAutoFilled:(BOOL)a4 andClearField:(id)a5 inFrame:(id)a6;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5;
- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)a3 formID:(int64_t)a4 focusedPasswordControlUniqueID:(id)a5 passwordControlUniqueIDs:(id)a6 automaticPassword:(id)a7 blurAfterSubstitution:(BOOL)a8 completionHandler:(id)a9;
- (void)webProcessPlugInBrowserContextController:(id)a3 didCommitLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didRemoveFrameFromHierarchy:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didSameDocumentNavigation:(int64_t)a4 forFrame:(id)a5;
- (void)willDestroyBrowserContextController:(id)a3;
@end

@implementation _SFWebProcessPlugInAutoFillPageController

- (_SFWebProcessPlugInAutoFillPageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = _SFWebProcessPlugInAutoFillPageController;
  v7 = [(WBSWebProcessPlugInPageController *)&v18 initWithPlugIn:a3 contextController:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5097DF0];
    activityControllerInterface = v7->_activityControllerInterface;
    v7->_activityControllerInterface = v8;

    v10 = [v6 _remoteObjectRegistry];
    [v10 registerExportedObject:v7 interface:v7->_activityControllerInterface];

    v11 = [[_SFFormMetadataController alloc] initWithPageController:v7];
    formMetadataController = v7->_formMetadataController;
    v7->_formMetadataController = v11;

    v13 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50755C0];
    autoFillerInterface = v7->_autoFillerInterface;
    v7->_autoFillerInterface = v13;

    v15 = [v6 _remoteObjectRegistry];
    [v15 registerExportedObject:v7 interface:v7->_autoFillerInterface];

    v16 = v7;
  }

  return v7;
}

- (void)willDestroyBrowserContextController:(id)a3
{
  v4 = a3;
  v5 = [v4 _remoteObjectRegistry];
  [v5 unregisterExportedObject:self interface:self->_autoFillerInterface];

  autoFillerInterface = self->_autoFillerInterface;
  self->_autoFillerInterface = 0;

  v7 = [v4 _remoteObjectRegistry];
  [v7 unregisterExportedObject:self interface:self->_activityControllerInterface];

  activityControllerInterface = self->_activityControllerInterface;
  self->_activityControllerInterface = 0;

  [(_SFFormMetadataController *)self->_formMetadataController invalidate];
  formMetadataController = self->_formMetadataController;
  self->_formMetadataController = 0;

  v10.receiver = self;
  v10.super_class = _SFWebProcessPlugInAutoFillPageController;
  [(WBSWebProcessPlugInPageController *)&v10 willDestroyBrowserContextController:v4];
}

- (void)runJavaScriptForActivity:(id)a3 withScript:(id)a4 object:(id)a5 invokeMethod:(id)a6 completionHandler:(id)a7
{
  v29 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!self->_isolatedWorld)
  {
    v16 = [MEMORY[0x1E6985398] world];
    isolatedWorld = self->_isolatedWorld;
    self->_isolatedWorld = v16;

    [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorld makeAllShadowRootsOpen];
  }

  v18 = [(WBSWebProcessPlugInPageController *)self mainFrame];
  v19 = [v18 jsContextForWorld:self->_isolatedWorld];

  if ([v29 isEqualToString:@"WebClipMetadataJS"])
  {
    v20 = +[_SFWebClipMetadataFetcher metadataFetcherScriptSource];
    v21 = [v19 evaluateScript:v20];
  }

  if ([v12 length])
  {
    v22 = [v19 evaluateScript:v12];
  }

  v23 = [v19 globalObject];
  v24 = [v23 valueForProperty:v13];

  [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorld clearWrappers];
  if (([v24 isUndefined] & 1) != 0 || (objc_msgSend(v24, "valueForProperty:", v14), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isUndefined"), v25, v26))
  {
    v15[2](v15, 0);
  }

  else
  {
    v27 = [v24 invokeMethod:v14 withArguments:0];
    v28 = [v27 toDictionary];
    (v15)[2](v15, v28);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didCommitLoadForFrame:(id)a4
{
  formMetadataController = self->_formMetadataController;
  v5 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:a4];
  [(WBSFormMetadataController *)formMetadataController recursivelyClearMetadataForFrames:v5];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didRemoveFrameFromHierarchy:(id)a4
{
  formMetadataController = self->_formMetadataController;
  v5 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:a4];
  [(WBSFormMetadataController *)formMetadataController clearMetadataForFrame:v5];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didSameDocumentNavigation:(int64_t)a4 forFrame:(id)a5
{
  v10 = a5;
  v8 = [a3 mainFrame];

  v9 = v10;
  if (v8 == v10)
  {
    [(_SFFormMetadataController *)self->_formMetadataController didSameDocumentNavigation:a4 inFrame:v10];
    v9 = v10;
  }
}

- (void)autoFillFormAsynchronouslyInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10
{
  v12 = a6;
  v13 = a5;
  v23 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a10;
  v19 = [a3 frameHandle];
  if (v19)
  {
    v20 = [MEMORY[0x1E6985388] lookUpFrameFromHandle:v19];
    v21 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v20];

    LOBYTE(v22) = a9;
    [(_SFFormMetadataController *)self->_formMetadataController autoFillFormInFrame:v21 withValues:v23 setAutoFilled:v13 focusFieldAfterFilling:v12 fieldToFocus:v16 fieldsToObscure:v17 submitForm:v22 completionHandler:v18];
  }

  else if (v18)
  {
    (*(v18 + 2))(v18, 0, 0);
  }
}

- (void)autoFillForm:(int64_t)a3 inFrame:(id)a4 withGeneratedPassword:(id)a5
{
  v8 = MEMORY[0x1E6985388];
  v9 = a5;
  v10 = [a4 frameHandle];
  v11 = [v8 lookUpFrameFromHandle:v10];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];

  [(_SFFormMetadataController *)self->_formMetadataController fillForm:v12 inFrame:v9 withPassword:0 focusedFieldControlID:0 completionHandler:a3];
}

- (void)annotateForm:(int64_t)a3 inFrame:(id)a4 withValues:(id)a5
{
  v11 = a5;
  v8 = [a4 frameHandle];
  if (v8)
  {
    v9 = [MEMORY[0x1E6985388] lookUpFrameFromHandle:v8];
    v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

    [(WBSFormMetadataController *)self->_formMetadataController annotateForm:v10 inFrame:v11 withValues:a3];
  }
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = MEMORY[0x1E6985388];
  v11 = a6;
  v12 = a4;
  v13 = [a3 frameHandle];
  v14 = [v10 lookUpFrameFromHandle:v13];
  v15 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v14];

  [(WBSFormMetadataController *)self->_formMetadataController autoFillOneTimeCodeFieldsInFrame:v15 withValue:v12 shouldSubmit:v6 completionHandler:v11];
}

- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4
{
  v6 = MEMORY[0x1E6985388];
  v7 = a3;
  v8 = [a4 frameHandle];
  v9 = [v6 lookUpFrameFromHandle:v8];
  v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

  [(_SFFormMetadataController *)self->_formMetadataController focusControlForStreamlinedLogin:v7 inFrame:v10];
}

- (void)setFormControls:(id)a3 areAutoFilled:(BOOL)a4 andClearField:(id)a5 inFrame:(id)a6
{
  v7 = a4;
  v15 = a5;
  v10 = MEMORY[0x1E6985388];
  v11 = a3;
  v12 = [a6 frameHandle];
  v13 = [v10 lookUpFrameFromHandle:v12];
  v14 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v13];

  [(WBSFormMetadataController *)self->_formMetadataController setFormControls:v11 inFrame:v14 asAutoFilled:v7];
  if (v15)
  {
    [(_SFFormMetadataController *)self->_formMetadataController clearField:v15 inFrame:v14];
  }
}

- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E6985388];
  v9 = a5;
  v10 = a3;
  v11 = [a4 frameHandle];
  v12 = [v8 lookUpFrameFromHandle:v11];
  v13 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v12];

  [(WBSFormMetadataController *)self->_formMetadataController clearFieldsAndSetFormControlsToNotAutoFilled:v10 inFrame:v13 completionHandler:v9];
}

- (void)collectURLsForPrefillingAtURL:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v6 = [v5 mainFrame];
  v7 = [v6 URL];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectURLsForPreFilling];
  }
}

- (void)collectFormMetadataForTestingAtURL:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v6 = [v5 mainFrame];
  v7 = [v6 URL];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectFormMetadataForTesting];
  }
}

- (void)collectFormMetadataForPrefillingAtURL:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v6 = [v5 mainFrame];
  v7 = [v6 URL];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectFormMetadataForPreFilling];
  }
}

- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v6 = [v5 mainFrame];
  v7 = [v6 URL];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectFormMetadataForPageLevelAutoFill];
  }
}

- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 atURL:(id)a5 completionHandler:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v14 = [v13 mainFrame];
  v15 = [v14 URL];
  v16 = [v15 isEqual:v12];

  if (v16)
  {
    v17 = MEMORY[0x1E6985388];
    v18 = [v10 frameHandle];
    v19 = [v17 lookUpFrameFromHandle:v18];
    v20 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v19];

    [(WBSFormMetadataController *)self->_formMetadataController getMetadataForTextField:v21 inFrame:v20 completionHandler:v11];
  }

  else
  {
    (*(v11 + 2))(v11, 0, 0);
  }
}

- (void)clearAutoFillMetadata
{
  formMetadataController = self->_formMetadataController;
  v5 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v3 = [v5 mainFrame];
  v4 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v3];
  [(WBSFormMetadataController *)formMetadataController recursivelyClearMetadataForFrames:v4];
}

- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)a3 formID:(int64_t)a4 focusedPasswordControlUniqueID:(id)a5 passwordControlUniqueIDs:(id)a6 automaticPassword:(id)a7 blurAfterSubstitution:(BOOL)a8 completionHandler:(id)a9
{
  v9 = a8;
  v16 = MEMORY[0x1E6985388];
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = [a3 frameHandle];
  v22 = [v16 lookUpFrameFromHandle:v21];
  v23 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v22];

  [(WBSFormMetadataController *)self->_formMetadataController substitutePasswordElementsWithAutomaticPasswordElementsInFrame:v23 formID:v20 focusedPasswordControlUniqueID:v19 passwordControlUniqueIDs:v18 automaticPassword:v9 blurAfterSubstitution:v17 completionHandler:a4];
}

- (void)removeAutomaticPasswordElementsInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4 passwordControlUniqueIDs:(id)a5
{
  v8 = MEMORY[0x1E6985388];
  v9 = a5;
  v10 = a4;
  v11 = [a3 frameHandle];
  v12 = [v8 lookUpFrameFromHandle:v11];
  v13 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v12];

  [(_SFFormMetadataController *)self->_formMetadataController removeAutomaticPasswordElementsInFrame:v13 focusedPasswordControlUniqueID:v10 passwordControlUniqueIDs:v9 blurAfterRemoval:0];
}

- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)a3 passwordControlUniqueIDs:(id)a4
{
  v6 = MEMORY[0x1E6985388];
  v7 = a4;
  v8 = [a3 frameHandle];
  v9 = [v6 lookUpFrameFromHandle:v8];
  v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

  [(_SFFormMetadataController *)self->_formMetadataController removeAutomaticPasswordVisualTreatmentInFrame:v10 passwordControlUniqueIDs:v7];
}

- (void)automaticPasswordSheetDimissedInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4
{
  v6 = MEMORY[0x1E6985388];
  v7 = a4;
  v8 = [a3 frameHandle];
  v9 = [v6 lookUpFrameFromHandle:v8];
  v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

  [(WBSFormMetadataController *)self->_formMetadataController automaticPasswordSheetDimissedInFrame:v10 focusedPasswordControlUniqueID:v7];
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5
{
  v6 = a3;
  v8 = MEMORY[0x1E6985388];
  v9 = a5;
  v10 = [a4 frameHandle];
  v11 = [v8 lookUpFrameFromHandle:v10];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];

  [(_SFFormMetadataController *)self->_formMetadataController setStrongPasswordElementViewableIfAppropriate:v6 frame:v12 passwordControlUniqueIDs:v9];
}

- (void)setAutoFillSpinnerVisibility:(BOOL)a3 textFieldMetadata:(id)a4 frame:(id)a5
{
  v6 = a3;
  v8 = MEMORY[0x1E6985388];
  v9 = a4;
  v10 = [a5 frameHandle];
  v11 = [v8 lookUpFrameFromHandle:v10];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];

  [(WBSFormMetadataController *)self->_formMetadataController setAutoFillSpinnerVisibility:v6 textFieldMetadata:v9 frame:v12];
}

@end