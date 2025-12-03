@interface _SFWebProcessPlugInAutoFillPageController
- (_SFWebProcessPlugInAutoFillPageController)initWithPlugIn:(id)in contextController:(id)controller;
- (void)annotateForm:(int64_t)form inFrame:(id)frame withValues:(id)values;
- (void)autoFillForm:(int64_t)form inFrame:(id)frame withGeneratedPassword:(id)password;
- (void)autoFillFormAsynchronouslyInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form completionHandler:(id)self0;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)frame withValue:(id)value shouldSubmit:(BOOL)submit completionHandler:(id)handler;
- (void)automaticPasswordSheetDimissedInFrame:(id)frame focusedPasswordControlUniqueID:(id)d;
- (void)clearAutoFillMetadata;
- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)filled inFrame:(id)frame completionHandler:(id)handler;
- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)l;
- (void)collectFormMetadataForPrefillingAtURL:(id)l;
- (void)collectFormMetadataForTestingAtURL:(id)l;
- (void)collectURLsForPrefillingAtURL:(id)l;
- (void)focusControlForStreamlinedLogin:(id)login inFrame:(id)frame;
- (void)getMetadataForTextField:(id)field inFrame:(id)frame atURL:(id)l completionHandler:(id)handler;
- (void)removeAutomaticPasswordElementsInFrame:(id)frame focusedPasswordControlUniqueID:(id)d passwordControlUniqueIDs:(id)ds;
- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)frame passwordControlUniqueIDs:(id)ds;
- (void)runJavaScriptForActivity:(id)activity withScript:(id)script object:(id)object invokeMethod:(id)method completionHandler:(id)handler;
- (void)setAutoFillSpinnerVisibility:(BOOL)visibility textFieldMetadata:(id)metadata frame:(id)frame;
- (void)setFormControls:(id)controls areAutoFilled:(BOOL)filled andClearField:(id)field inFrame:(id)frame;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)appropriate frame:(id)frame passwordControlUniqueIDs:(id)ds;
- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)frame formID:(int64_t)d focusedPasswordControlUniqueID:(id)iD passwordControlUniqueIDs:(id)ds automaticPassword:(id)password blurAfterSubstitution:(BOOL)substitution completionHandler:(id)handler;
- (void)webProcessPlugInBrowserContextController:(id)controller didCommitLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didRemoveFrameFromHierarchy:(id)hierarchy;
- (void)webProcessPlugInBrowserContextController:(id)controller didSameDocumentNavigation:(int64_t)navigation forFrame:(id)frame;
- (void)willDestroyBrowserContextController:(id)controller;
@end

@implementation _SFWebProcessPlugInAutoFillPageController

- (_SFWebProcessPlugInAutoFillPageController)initWithPlugIn:(id)in contextController:(id)controller
{
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = _SFWebProcessPlugInAutoFillPageController;
  v7 = [(WBSWebProcessPlugInPageController *)&v18 initWithPlugIn:in contextController:controllerCopy];
  if (v7)
  {
    v8 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5097DF0];
    activityControllerInterface = v7->_activityControllerInterface;
    v7->_activityControllerInterface = v8;

    _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
    [_remoteObjectRegistry registerExportedObject:v7 interface:v7->_activityControllerInterface];

    v11 = [[_SFFormMetadataController alloc] initWithPageController:v7];
    formMetadataController = v7->_formMetadataController;
    v7->_formMetadataController = v11;

    v13 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50755C0];
    autoFillerInterface = v7->_autoFillerInterface;
    v7->_autoFillerInterface = v13;

    _remoteObjectRegistry2 = [controllerCopy _remoteObjectRegistry];
    [_remoteObjectRegistry2 registerExportedObject:v7 interface:v7->_autoFillerInterface];

    v16 = v7;
  }

  return v7;
}

- (void)willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_autoFillerInterface];

  autoFillerInterface = self->_autoFillerInterface;
  self->_autoFillerInterface = 0;

  _remoteObjectRegistry2 = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry2 unregisterExportedObject:self interface:self->_activityControllerInterface];

  activityControllerInterface = self->_activityControllerInterface;
  self->_activityControllerInterface = 0;

  [(_SFFormMetadataController *)self->_formMetadataController invalidate];
  formMetadataController = self->_formMetadataController;
  self->_formMetadataController = 0;

  v10.receiver = self;
  v10.super_class = _SFWebProcessPlugInAutoFillPageController;
  [(WBSWebProcessPlugInPageController *)&v10 willDestroyBrowserContextController:controllerCopy];
}

- (void)runJavaScriptForActivity:(id)activity withScript:(id)script object:(id)object invokeMethod:(id)method completionHandler:(id)handler
{
  activityCopy = activity;
  scriptCopy = script;
  objectCopy = object;
  methodCopy = method;
  handlerCopy = handler;
  if (!self->_isolatedWorld)
  {
    world = [MEMORY[0x1E6985398] world];
    isolatedWorld = self->_isolatedWorld;
    self->_isolatedWorld = world;

    [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorld makeAllShadowRootsOpen];
  }

  mainFrame = [(WBSWebProcessPlugInPageController *)self mainFrame];
  v19 = [mainFrame jsContextForWorld:self->_isolatedWorld];

  if ([activityCopy isEqualToString:@"WebClipMetadataJS"])
  {
    v20 = +[_SFWebClipMetadataFetcher metadataFetcherScriptSource];
    v21 = [v19 evaluateScript:v20];
  }

  if ([scriptCopy length])
  {
    v22 = [v19 evaluateScript:scriptCopy];
  }

  globalObject = [v19 globalObject];
  v24 = [globalObject valueForProperty:objectCopy];

  [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorld clearWrappers];
  if (([v24 isUndefined] & 1) != 0 || (objc_msgSend(v24, "valueForProperty:", methodCopy), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isUndefined"), v25, v26))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v27 = [v24 invokeMethod:methodCopy withArguments:0];
    toDictionary = [v27 toDictionary];
    (handlerCopy)[2](handlerCopy, toDictionary);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didCommitLoadForFrame:(id)frame
{
  formMetadataController = self->_formMetadataController;
  v5 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:frame];
  [(WBSFormMetadataController *)formMetadataController recursivelyClearMetadataForFrames:v5];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didRemoveFrameFromHierarchy:(id)hierarchy
{
  formMetadataController = self->_formMetadataController;
  v5 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:hierarchy];
  [(WBSFormMetadataController *)formMetadataController clearMetadataForFrame:v5];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didSameDocumentNavigation:(int64_t)navigation forFrame:(id)frame
{
  frameCopy = frame;
  mainFrame = [controller mainFrame];

  v9 = frameCopy;
  if (mainFrame == frameCopy)
  {
    [(_SFFormMetadataController *)self->_formMetadataController didSameDocumentNavigation:navigation inFrame:frameCopy];
    v9 = frameCopy;
  }
}

- (void)autoFillFormAsynchronouslyInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form completionHandler:(id)self0
{
  fillingCopy = filling;
  filledCopy = filled;
  valuesCopy = values;
  focusCopy = focus;
  obscureCopy = obscure;
  handlerCopy = handler;
  frameHandle = [frame frameHandle];
  if (frameHandle)
  {
    v20 = [MEMORY[0x1E6985388] lookUpFrameFromHandle:frameHandle];
    v21 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v20];

    LOBYTE(v22) = form;
    [(_SFFormMetadataController *)self->_formMetadataController autoFillFormInFrame:v21 withValues:valuesCopy setAutoFilled:filledCopy focusFieldAfterFilling:fillingCopy fieldToFocus:focusCopy fieldsToObscure:obscureCopy submitForm:v22 completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)autoFillForm:(int64_t)form inFrame:(id)frame withGeneratedPassword:(id)password
{
  v8 = MEMORY[0x1E6985388];
  passwordCopy = password;
  frameHandle = [frame frameHandle];
  v11 = [v8 lookUpFrameFromHandle:frameHandle];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];

  [(_SFFormMetadataController *)self->_formMetadataController fillForm:v12 inFrame:passwordCopy withPassword:0 focusedFieldControlID:0 completionHandler:form];
}

- (void)annotateForm:(int64_t)form inFrame:(id)frame withValues:(id)values
{
  valuesCopy = values;
  frameHandle = [frame frameHandle];
  if (frameHandle)
  {
    v9 = [MEMORY[0x1E6985388] lookUpFrameFromHandle:frameHandle];
    v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

    [(WBSFormMetadataController *)self->_formMetadataController annotateForm:v10 inFrame:valuesCopy withValues:form];
  }
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)frame withValue:(id)value shouldSubmit:(BOOL)submit completionHandler:(id)handler
{
  submitCopy = submit;
  v10 = MEMORY[0x1E6985388];
  handlerCopy = handler;
  valueCopy = value;
  frameHandle = [frame frameHandle];
  v14 = [v10 lookUpFrameFromHandle:frameHandle];
  v15 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v14];

  [(WBSFormMetadataController *)self->_formMetadataController autoFillOneTimeCodeFieldsInFrame:v15 withValue:valueCopy shouldSubmit:submitCopy completionHandler:handlerCopy];
}

- (void)focusControlForStreamlinedLogin:(id)login inFrame:(id)frame
{
  v6 = MEMORY[0x1E6985388];
  loginCopy = login;
  frameHandle = [frame frameHandle];
  v9 = [v6 lookUpFrameFromHandle:frameHandle];
  v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

  [(_SFFormMetadataController *)self->_formMetadataController focusControlForStreamlinedLogin:loginCopy inFrame:v10];
}

- (void)setFormControls:(id)controls areAutoFilled:(BOOL)filled andClearField:(id)field inFrame:(id)frame
{
  filledCopy = filled;
  fieldCopy = field;
  v10 = MEMORY[0x1E6985388];
  controlsCopy = controls;
  frameHandle = [frame frameHandle];
  v13 = [v10 lookUpFrameFromHandle:frameHandle];
  v14 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v13];

  [(WBSFormMetadataController *)self->_formMetadataController setFormControls:controlsCopy inFrame:v14 asAutoFilled:filledCopy];
  if (fieldCopy)
  {
    [(_SFFormMetadataController *)self->_formMetadataController clearField:fieldCopy inFrame:v14];
  }
}

- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)filled inFrame:(id)frame completionHandler:(id)handler
{
  v8 = MEMORY[0x1E6985388];
  handlerCopy = handler;
  filledCopy = filled;
  frameHandle = [frame frameHandle];
  v12 = [v8 lookUpFrameFromHandle:frameHandle];
  v13 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v12];

  [(WBSFormMetadataController *)self->_formMetadataController clearFieldsAndSetFormControlsToNotAutoFilled:filledCopy inFrame:v13 completionHandler:handlerCopy];
}

- (void)collectURLsForPrefillingAtURL:(id)l
{
  lCopy = l;
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrame = [browserContextController mainFrame];
  v7 = [mainFrame URL];
  v8 = [v7 isEqual:lCopy];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectURLsForPreFilling];
  }
}

- (void)collectFormMetadataForTestingAtURL:(id)l
{
  lCopy = l;
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrame = [browserContextController mainFrame];
  v7 = [mainFrame URL];
  v8 = [v7 isEqual:lCopy];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectFormMetadataForTesting];
  }
}

- (void)collectFormMetadataForPrefillingAtURL:(id)l
{
  lCopy = l;
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrame = [browserContextController mainFrame];
  v7 = [mainFrame URL];
  v8 = [v7 isEqual:lCopy];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectFormMetadataForPreFilling];
  }
}

- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)l
{
  lCopy = l;
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrame = [browserContextController mainFrame];
  v7 = [mainFrame URL];
  v8 = [v7 isEqual:lCopy];

  if (v8)
  {
    formMetadataController = self->_formMetadataController;

    [(_SFFormMetadataController *)formMetadataController collectFormMetadataForPageLevelAutoFill];
  }
}

- (void)getMetadataForTextField:(id)field inFrame:(id)frame atURL:(id)l completionHandler:(id)handler
{
  fieldCopy = field;
  frameCopy = frame;
  handlerCopy = handler;
  lCopy = l;
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrame = [browserContextController mainFrame];
  v15 = [mainFrame URL];
  v16 = [v15 isEqual:lCopy];

  if (v16)
  {
    v17 = MEMORY[0x1E6985388];
    frameHandle = [frameCopy frameHandle];
    v19 = [v17 lookUpFrameFromHandle:frameHandle];
    v20 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v19];

    [(WBSFormMetadataController *)self->_formMetadataController getMetadataForTextField:fieldCopy inFrame:v20 completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)clearAutoFillMetadata
{
  formMetadataController = self->_formMetadataController;
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrame = [browserContextController mainFrame];
  v4 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:mainFrame];
  [(WBSFormMetadataController *)formMetadataController recursivelyClearMetadataForFrames:v4];
}

- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)frame formID:(int64_t)d focusedPasswordControlUniqueID:(id)iD passwordControlUniqueIDs:(id)ds automaticPassword:(id)password blurAfterSubstitution:(BOOL)substitution completionHandler:(id)handler
{
  substitutionCopy = substitution;
  v16 = MEMORY[0x1E6985388];
  handlerCopy = handler;
  passwordCopy = password;
  dsCopy = ds;
  iDCopy = iD;
  frameHandle = [frame frameHandle];
  v22 = [v16 lookUpFrameFromHandle:frameHandle];
  v23 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v22];

  [(WBSFormMetadataController *)self->_formMetadataController substitutePasswordElementsWithAutomaticPasswordElementsInFrame:v23 formID:iDCopy focusedPasswordControlUniqueID:dsCopy passwordControlUniqueIDs:passwordCopy automaticPassword:substitutionCopy blurAfterSubstitution:handlerCopy completionHandler:d];
}

- (void)removeAutomaticPasswordElementsInFrame:(id)frame focusedPasswordControlUniqueID:(id)d passwordControlUniqueIDs:(id)ds
{
  v8 = MEMORY[0x1E6985388];
  dsCopy = ds;
  dCopy = d;
  frameHandle = [frame frameHandle];
  v12 = [v8 lookUpFrameFromHandle:frameHandle];
  v13 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v12];

  [(_SFFormMetadataController *)self->_formMetadataController removeAutomaticPasswordElementsInFrame:v13 focusedPasswordControlUniqueID:dCopy passwordControlUniqueIDs:dsCopy blurAfterRemoval:0];
}

- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)frame passwordControlUniqueIDs:(id)ds
{
  v6 = MEMORY[0x1E6985388];
  dsCopy = ds;
  frameHandle = [frame frameHandle];
  v9 = [v6 lookUpFrameFromHandle:frameHandle];
  v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

  [(_SFFormMetadataController *)self->_formMetadataController removeAutomaticPasswordVisualTreatmentInFrame:v10 passwordControlUniqueIDs:dsCopy];
}

- (void)automaticPasswordSheetDimissedInFrame:(id)frame focusedPasswordControlUniqueID:(id)d
{
  v6 = MEMORY[0x1E6985388];
  dCopy = d;
  frameHandle = [frame frameHandle];
  v9 = [v6 lookUpFrameFromHandle:frameHandle];
  v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];

  [(WBSFormMetadataController *)self->_formMetadataController automaticPasswordSheetDimissedInFrame:v10 focusedPasswordControlUniqueID:dCopy];
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)appropriate frame:(id)frame passwordControlUniqueIDs:(id)ds
{
  appropriateCopy = appropriate;
  v8 = MEMORY[0x1E6985388];
  dsCopy = ds;
  frameHandle = [frame frameHandle];
  v11 = [v8 lookUpFrameFromHandle:frameHandle];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];

  [(_SFFormMetadataController *)self->_formMetadataController setStrongPasswordElementViewableIfAppropriate:appropriateCopy frame:v12 passwordControlUniqueIDs:dsCopy];
}

- (void)setAutoFillSpinnerVisibility:(BOOL)visibility textFieldMetadata:(id)metadata frame:(id)frame
{
  visibilityCopy = visibility;
  v8 = MEMORY[0x1E6985388];
  metadataCopy = metadata;
  frameHandle = [frame frameHandle];
  v11 = [v8 lookUpFrameFromHandle:frameHandle];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];

  [(WBSFormMetadataController *)self->_formMetadataController setAutoFillSpinnerVisibility:visibilityCopy textFieldMetadata:metadataCopy frame:v12];
}

@end