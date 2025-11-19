@interface PDCDestructiveChangeConfirmationViewController
- (id)_contentViewControllerForUserInfo:(id)a3;
- (void)configureWithCompletion:(id)a3;
@end

@implementation PDCDestructiveChangeConfirmationViewController

- (void)configureWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDCDestructiveChangeConfirmationViewController *)self extensionContext];
  v6 = [v5 inputItems];
  v7 = [v6 firstObject];
  v8 = [v7 userInfo];

  v9 = [(PDCDestructiveChangeConfirmationViewController *)self _contentViewControllerForUserInfo:v8];
  if (v9)
  {
    [(PDCDestructiveChangeConfirmationViewController *)self addChildViewController:v9];
    v10 = [(PDCDestructiveChangeConfirmationViewController *)self view];
    y = CGRectZero.origin.y;
    [v9 preferredContentSize];
    [v10 setFrame:{CGRectZero.origin.x, y, v12, v13}];
    v14 = [v9 view];
    [v14 setAutoresizingMask:18];
    [v10 addSubview:v14];
    [v9 didMoveToParentViewController:self];
    [v9 preferredContentSize];
    [(PDCDestructiveChangeConfirmationViewController *)self setPreferredContentSize:?];
    v4[2](v4);
  }

  else
  {
    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to load view controller for user info %@", &v16, 0xCu);
    }

    [(PDCDestructiveChangeConfirmationViewController *)self setPreferredContentSize:CGSizeZero.width, CGSizeZero.height];
    v4[2](v4);
  }
}

- (id)_contentViewControllerForUserInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"previewStyle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKeyedSubscript:@"assetLocalIdentifiers"];
    objc_opt_class();
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v10 = v8;
    if (v9)
    {
      v11 = v9;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v10 = v8;
    }

LABEL_16:
    v16 = v10;

    if ([v4 isEqualToString:@"currentAssets"])
    {
      v15 = objc_alloc_init(PDCRemoteAssetPreviewController);
      v17 = [v3 objectForKeyedSubscript:@"photoLibraryURLString"];
      v18 = [NSURL URLWithString:v17];
      [(PDCRemoteAssetPreviewController *)v15 setPhotoLibraryURL:v18];

      [(PDCRemoteAssetPreviewController *)v15 setAssetLocalIdentifiers:v16];
      [(PDCRemoteAssetPreviewController *)v15 setResizePreviewToFillParentView:1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end