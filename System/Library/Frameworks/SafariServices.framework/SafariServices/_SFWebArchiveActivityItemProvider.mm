@interface _SFWebArchiveActivityItemProvider
- (_SFWebArchiveActivityItemProvider)initWithWebArchiveProvider:(id)provider;
- (id)_webArchiveItemProvider;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation _SFWebArchiveActivityItemProvider

- (_SFWebArchiveActivityItemProvider)initWithWebArchiveProvider:(id)provider
{
  v17[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v6 = providerCopy;
  if (providerCopy && [providerCopy canGenerateWebArchive])
  {
    webView = [v6 webView];
    v8 = [webView URL];
    title = [webView title];
    v16.receiver = self;
    v16.super_class = _SFWebArchiveActivityItemProvider;
    self = [(_SFActivityItemProvider *)&v16 initWithURL:v8 pageTitle:title webView:webView];

    if (self)
    {
      objc_storeStrong(&self->_webArchiveProvider, provider);
      v10 = MEMORY[0x1E695DFD8];
      v17[0] = *MEMORY[0x1E69CDA90];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v12 = [v10 setWithArray:v11];
      [(_SFActivityItemProvider *)self setExcludedActivityTypes:v12];

      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)_webArchiveItemProvider
{
  if ([(_SFWebArchiveProvider *)self->_webArchiveProvider canGenerateWebArchive])
  {
    v3 = self->_webArchiveProvider;
    v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v5 = *MEMORY[0x1E69638F0];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __60___SFWebArchiveActivityItemProvider__webArchiveItemProvider__block_invoke;
    v12 = &unk_1E8490230;
    v13 = v3;
    selfCopy = self;
    v6 = v3;
    [v4 registerItemForTypeIdentifier:v5 loadHandler:&v9];
    [v4 setPreferredPresentationStyle:{2, v9, v10, v11, v12}];
    suggestedFilenameWithExtension = [(_SFWebArchiveProvider *)self->_webArchiveProvider suggestedFilenameWithExtension];
    [v4 setSuggestedName:suggestedFilenameWithExtension];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(_SFWebArchiveProvider *)self->_webArchiveProvider canGenerateWebArchive])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v5 = getLPLinkMetadataClass_softClass;
    v25 = getLPLinkMetadataClass_softClass;
    if (!getLPLinkMetadataClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getLPLinkMetadataClass_block_invoke;
      v20 = &unk_1E848F710;
      v21 = &v22;
      __getLPLinkMetadataClass_block_invoke(&v17);
      v5 = v23[3];
    }

    v6 = v5;
    _Block_object_dispose(&v22, 8);
    v7 = objc_alloc_init(v5);
    if (v7)
    {
      v8 = [(_SFActivityItemProvider *)self url];
      [v7 setOriginalURL:v8];

      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v9 = getLPFileMetadataClass_softClass;
      v25 = getLPFileMetadataClass_softClass;
      if (!getLPFileMetadataClass_softClass)
      {
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __getLPFileMetadataClass_block_invoke;
        v20 = &unk_1E848F710;
        v21 = &v22;
        __getLPFileMetadataClass_block_invoke(&v17);
        v9 = v23[3];
      }

      v10 = v9;
      _Block_object_dispose(&v22, 8);
      v11 = objc_alloc_init(v9);
      suggestedFilenameWithoutExtension = [(_SFWebArchiveProvider *)self->_webArchiveProvider suggestedFilenameWithoutExtension];
      [v11 setName:suggestedFilenameWithoutExtension];

      [v11 setType:*MEMORY[0x1E69638F0]];
      [v7 setSpecialization:v11];
      specialization = [v7 specialization];
      linkPreviewFileMetadata = self->_linkPreviewFileMetadata;
      self->_linkPreviewFileMetadata = specialization;

      v15 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end