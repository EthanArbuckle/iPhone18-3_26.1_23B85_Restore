@interface _SFWebProcessSharingLinkExtractor
- (_SFWebProcessSharingLinkExtractor)initWithPageController:(id)a3;
- (id)_extractCanonicalLinkWithInjectedObject:(id)a3;
- (id)_extractDominantIFrameWithInjectedObject:(id)a3;
- (id)_extractSharingLink;
- (id)_injectedLinkExtractorSourceString;
- (void)_setUpRemoteInterface;
- (void)_withInjectedLinkExtractorObjectInFrame:(id)a3 callback:(id)a4;
- (void)fetchSharingLinkWithCompletionHandler:(id)a3;
@end

@implementation _SFWebProcessSharingLinkExtractor

- (_SFWebProcessSharingLinkExtractor)initWithPageController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFWebProcessSharingLinkExtractor;
  v5 = [(_SFWebProcessSharingLinkExtractor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, v4);
    [(_SFWebProcessSharingLinkExtractor *)v6 _setUpRemoteInterface];
    v7 = v6;
  }

  return v6;
}

- (void)_setUpRemoteInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50BB310];
  sharingLinkExtractorInterface = self->_sharingLinkExtractorInterface;
  self->_sharingLinkExtractorInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v6 = [WeakRetained browserContextController];
  v7 = [v6 _remoteObjectRegistry];

  [v7 registerExportedObject:self interface:self->_sharingLinkExtractorInterface];
}

- (id)_injectedLinkExtractorSourceString
{
  v2 = _injectedLinkExtractorSourceString_sourceString;
  if (!_injectedLinkExtractorSourceString_sourceString)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [v3 initWithBytesNoCopy:sharingLinkExtractorSource length:996 encoding:4 freeWhenDone:0];
    v5 = _injectedLinkExtractorSourceString_sourceString;
    _injectedLinkExtractorSourceString_sourceString = v4;

    v2 = _injectedLinkExtractorSourceString_sourceString;
  }

  return v2;
}

- (void)_withInjectedLinkExtractorObjectInFrame:(id)a3 callback:(id)a4
{
  v6 = MEMORY[0x1E6985398];
  v7 = a4;
  v8 = a3;
  v14 = [v6 world];
  v9 = [v8 jsContextForWorld:v14];

  v10 = [(_SFWebProcessSharingLinkExtractor *)self _injectedLinkExtractorSourceString];
  v11 = [v9 evaluateScript:v10];

  v12 = [v9 globalObject];
  v13 = [v12 valueForProperty:@"SharingLinkExtractorJS"];

  v7[2](v7, v13);
  [v14 clearWrappers];
}

- (void)fetchSharingLinkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_SFWebProcessSharingLinkExtractor *)self _extractSharingLink];
  v4[2](v4, v5);
}

- (id)_extractSharingLink
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v4 = [WeakRetained browserContextController];
  v5 = [v4 mainFrame];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__14;
  v28 = __Block_byref_object_dispose__14;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56___SFWebProcessSharingLinkExtractor__extractSharingLink__block_invoke;
  v17[3] = &unk_1E8496460;
  v17[4] = self;
  v17[5] = &v24;
  v17[6] = &v18;
  [(_SFWebProcessSharingLinkExtractor *)self _withInjectedLinkExtractorObjectInFrame:v5 callback:v17];
  v6 = v25[5];
  if (v6 || (v8 = v19[5]) == 0)
  {
    v7 = v6;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__14;
    v15 = __Block_byref_object_dispose__14;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56___SFWebProcessSharingLinkExtractor__extractSharingLink__block_invoke_2;
    v10[3] = &unk_1E8496488;
    v10[4] = self;
    v10[5] = &v11;
    [(_SFWebProcessSharingLinkExtractor *)self _withInjectedLinkExtractorObjectInFrame:v8 callback:v10];
    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v7;
}

- (id)_extractCanonicalLinkWithInjectedObject:(id)a3
{
  v3 = [a3 invokeMethod:@"extractCanonicalLink" withArguments:0];
  v4 = [v3 toObjectOfClass:objc_opt_class()];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_extractDominantIFrameWithInjectedObject:(id)a3
{
  v3 = a3;
  v4 = [v3 invokeMethod:@"viewportDominantIFrameElement" withArguments:0];
  v5 = 0;
  if ([v4 isObject])
  {
    v6 = MEMORY[0x1E6985390];
    v7 = [v3 context];
    v8 = [v6 nodeHandleWithJSValue:v4 inContext:v7];

    v5 = [v8 htmlIFrameElementContentFrame];
  }

  return v5;
}

@end