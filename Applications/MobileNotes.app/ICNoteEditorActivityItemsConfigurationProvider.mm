@interface ICNoteEditorActivityItemsConfigurationProvider
- (ICNoteEditorActivityItemsConfigurationProvider)initWithDelegate:(id)delegate;
- (ICNoteEditorActivityItemsConfigurationProviderDelegate)delegate;
- (id)activityItemsConfiguration;
@end

@implementation ICNoteEditorActivityItemsConfigurationProvider

- (ICNoteEditorActivityItemsConfigurationProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ICNoteEditorActivityItemsConfigurationProvider;
  v5 = [(ICNoteEditorActivityItemsConfigurationProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (id)activityItemsConfiguration
{
  objc_opt_class();
  delegate = [(ICNoteEditorActivityItemsConfigurationProvider *)self delegate];
  noteForActivityItemsConfiguration = [delegate noteForActivityItemsConfiguration];
  v5 = ICDynamicCast();

  if ([v5 canBeSharedViaICloud])
  {
    sharedRootObject = [v5 sharedRootObject];
    v7 = sharedRootObject;
    if (sharedRootObject)
    {
      v8 = sharedRootObject;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    sub_1004E9FC8(v10);
    v12 = objc_alloc_init(*(v11 + 56));
    objc_opt_class();
    v13 = ICDynamicCast();
    objc_opt_class();
    v14 = ICDynamicCast();
    v15 = v14;
    if (v13 | v14)
    {
      v16 = &ICTagSelectionMenuReplacementSubstring_ptr;
      v17 = &ICTagSelectionMenuReplacementSubstring_ptr;
      if (v13)
      {
        title = [v13 title];
        [v12 setTitle:title];

        delegate2 = [(ICNoteEditorActivityItemsConfigurationProvider *)self delegate];
        isDarkModeForActivityItemsConfiguration = [delegate2 isDarkModeForActivityItemsConfiguration];

        v21 = [ICAppearanceInfo appearanceInfoWithType:isDarkModeForActivityItemsConfiguration];
        v22 = [[ICThumbnailConfiguration alloc] initForSharePreviewThumbnailWithNote:v13 appearanceInfo:v21];
        v23 = objc_alloc_init(NSItemProvider);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10003C990;
        v42[3] = &unk_1006455C0;
        v43 = v22;
        v24 = v22;
        v17 = &ICTagSelectionMenuReplacementSubstring_ptr;
        [v23 registerDataRepresentationForContentType:UTTypePNG visibility:0 loadHandler:v42];
        [v12 setImageProvider:v23];

        v16 = &ICTagSelectionMenuReplacementSubstring_ptr;
      }

      else if (v14)
      {
        title2 = [v14 title];
        [v12 setTitle:title2];

        sub_1004E9F80(v27);
        v29 = objc_alloc(*(v28 + 40));
        v30 = +[ICCollaborationController shareSheetFolderThumbnailImage];
        v31 = [v29 initWithPlatformImage:v30];
        [v12 setImage:v31];
      }

      v32 = objc_alloc_init(v17[279]);
      sharedInstance = [v16[27] sharedInstance];
      [sharedInstance registerShareForObject:v9 itemProvider:v32 generateThumbnails:0];

      v34 = [UIActivityItemsConfiguration alloc];
      v44 = v32;
      v35 = [NSArray arrayWithObjects:&v44 count:1];
      v25 = [v34 initWithItemProviders:v35];

      v36 = +[NSMutableDictionary dictionary];
      [v36 ic_setNonNilObject:v12 forNonNilKey:UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata];
      title3 = [v12 title];
      [v36 ic_setNonNilObject:title3 forNonNilKey:UIActivityItemsConfigurationMetadataKeyTitle];

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10003CB04;
      v40[3] = &unk_1006455E8;
      v41 = v36;
      v38 = v36;
      [v25 setMetadataProvider:v40];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (ICNoteEditorActivityItemsConfigurationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end