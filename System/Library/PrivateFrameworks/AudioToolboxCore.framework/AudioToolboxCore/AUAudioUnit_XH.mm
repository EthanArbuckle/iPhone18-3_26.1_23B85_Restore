@interface AUAudioUnit_XH
- (id)speechSynthesisOutputMetadataBlock;
- (void)_internalInitWithExtension:(id)extension componentDescription:(AudioComponentDescription *)description instance:(OpaqueAudioComponentInstance *)instance completion:(id)completion;
- (void)_open:(id)_open completion:(id)completion;
- (void)dealloc;
- (void)requestViewControllerWithCompletionHandler:(id)handler;
- (void)setSpeechSynthesisOutputMetadataBlock:(id)block;
@end

@implementation AUAudioUnit_XH

- (id)speechSynthesisOutputMetadataBlock
{
  v2 = _Block_copy(self->_speechSynthesisOutputMetadataBlock);

  return v2;
}

- (void)setSpeechSynthesisOutputMetadataBlock:(id)block
{
  blockCopy = block;
  [(AUAudioUnit *)self componentDescription];
  if (v7 == 1635087216)
  {
    v5 = _Block_copy(blockCopy);
    speechSynthesisOutputMetadataBlock = self->_speechSynthesisOutputMetadataBlock;
    self->_speechSynthesisOutputMetadataBlock = v5;
  }
}

- (void)requestViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cachedViewController = [(AUAudioUnit *)self cachedViewController];
  handlerCopy[2](handlerCopy, cachedViewController);
}

- (void)dealloc
{
  if (self->_requestIdentifier)
  {
    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?];
    v3 = CADeprecated::TSingleton<AUExtensionInstanceMap>::instance();
    v4 = self->_requestIdentifier;
    v5 = *v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN22AUExtensionInstanceMap6removeEPU19objcproto9NSCopying11objc_object_block_invoke;
    block[3] = &unk_1E72C2870;
    v11 = v4;
    v12 = v3;
    v6 = v4;
    dispatch_sync(v5, block);

    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = 0;
  }

  speechSynthesisOutputMetadataBlock = self->_speechSynthesisOutputMetadataBlock;
  self->_speechSynthesisOutputMetadataBlock = 0;

  v9.receiver = self;
  v9.super_class = AUAudioUnit_XH;
  [(AUAudioUnit_XPC *)&v9 dealloc];
}

- (void)_open:(id)_open completion:(id)completion
{
  _openCopy = _open;
  completionCopy = completion;
  v8 = [_openCopy copyWithZone:0];
  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = v8;

  v10 = CADeprecated::TSingleton<AUExtensionInstanceMap>::instance();
  v11 = self->_requestIdentifier;
  selfCopy = self;
  v13 = *v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN22AUExtensionInstanceMap3addEPU19objcproto9NSCopying11objc_objectP14AUAudioUnit_XH_block_invoke;
  block[3] = &unk_1E72C16F0;
  v22 = v11;
  v23 = v10;
  v21 = selfCopy;
  v14 = v11;
  v15 = selfCopy;
  dispatch_sync(v13, block);

  v16 = [v15[123] _extensionContextForUUID:self->_requestIdentifier];
  [v16 setExtension:v15[123]];
  delegate = [v16 delegate];
  [delegate setAudioUnit:v15];

  xpcConnection = [v16 xpcConnection];
  v19.receiver = v15;
  v19.super_class = AUAudioUnit_XH;
  [(AUAudioUnit_XPC *)&v19 _doOpen:xpcConnection completion:completionCopy];
}

- (void)_internalInitWithExtension:(id)extension componentDescription:(AudioComponentDescription *)description instance:(OpaqueAudioComponentInstance *)instance completion:(id)completion
{
  extensionCopy = extension;
  completionCopy = completion;
  objc_storeStrong(&self->_extension, extension);
  [(AUAudioUnit_XPC *)self _setComponentInstance:instance];
  v12 = CADeprecated::TSingleton<AUExtensionInstanceMap>::instance();
  v13 = self->_extension;
  v14 = *v12;
  block = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = ___ZN22AUExtensionInstanceMap29setExtensionInterruptionBlockEP11NSExtension_block_invoke;
  v40 = &unk_1E72C2870;
  v41 = v13;
  v42 = v12;
  v15 = v13;
  dispatch_sync(v14, &block);

  extensionPointIdentifier = [(NSExtension *)self->_extension extensionPointIdentifier];
  LODWORD(v14) = [extensionPointIdentifier isEqualToString:@"com.apple.AudioUnit-UI"];

  objc_initWeak(&location, self);
  [(AUAudioUnit_XH *)self setStrongInstance:self];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__AUAudioUnit_XH__internalInitWithExtension_componentDescription_instance_completion___block_invoke;
  aBlock[3] = &unk_1E72C13E8;
  objc_copyWeak(&v31, &location);
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = v18;

  if (v14)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v20 = getAUAudioUnitRemoteViewControllerClass(void)::softClass;
    v36 = getAUAudioUnitRemoteViewControllerClass(void)::softClass;
    if (!getAUAudioUnitRemoteViewControllerClass(void)::softClass)
    {
      block = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = ___ZL39getAUAudioUnitRemoteViewControllerClassv_block_invoke;
      v40 = &unk_1E72C2B68;
      v41 = &v33;
      ___ZL39getAUAudioUnitRemoteViewControllerClassv_block_invoke(&block);
      v20 = v34[3];
    }

    v21 = v20;
    _Block_object_dispose(&v33, 8);
    extension = self->_extension;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__AUAudioUnit_XH__internalInitWithExtension_componentDescription_instance_completion___block_invoke_2;
    v27[3] = &unk_1E72C1410;
    v23 = &v28;
    objc_copyWeak(&v28, &location);
    [v20 _fetchViewControllerForExtension:extension inputItems:0 completion:v27];
  }

  else
  {
    v24 = self->_extension;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__AUAudioUnit_XH__internalInitWithExtension_componentDescription_instance_completion___block_invoke_3;
    v25[3] = &unk_1E72C1438;
    v23 = &v26;
    objc_copyWeak(&v26, &location);
    [(NSExtension *)v24 beginExtensionRequestWithInputItems:0 completion:v25];
  }

  objc_destroyWeak(v23);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

@end