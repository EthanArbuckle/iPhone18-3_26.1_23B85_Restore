@interface FBAAttachmentViewingControllerSelector
+ (id)_opaqueVCWithItem:(id)a3;
+ (id)controllerForAttachment:(id)a3;
+ (id)controllerForItem:(id)a3;
+ (id)controllerForUrl:(id)a3 useFallback:(BOOL)a4;
@end

@implementation FBAAttachmentViewingControllerSelector

+ (id)controllerForAttachment:(id)a3
{
  v4 = a3;
  if ([v4 hasGroup])
  {
    v5 = [FBABugFormFileBrowserTableViewController alloc];
    v6 = [v4 group];
    v7 = [(FBABugFormFileBrowserTableViewController *)v5 initWithGroup:v6];
  }

  else
  {
    v6 = [v4 item];
    v7 = [a1 controllerForItem:v6];
  }

  v8 = v7;

  if (!v8)
  {
    if ([a1 fallbackToOpaqueViewer])
    {
      v9 = [v4 item];
      v8 = [a1 _opaqueVCWithItem:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)controllerForItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([FBAOpaqueFileViewController shouldDisplayItem:v4])
    {
      v5 = [a1 _opaqueVCWithItem:v4];
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = [v4 attachedPath];
      v5 = [a1 controllerForUrl:v7 useFallback:0];

      if (v5)
      {
        goto LABEL_12;
      }
    }

    if ([a1 fallbackToOpaqueViewer])
    {
      v5 = [a1 _opaqueVCWithItem:v4];
      goto LABEL_12;
    }
  }

  else
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100091EF4(v6);
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

+ (id)controllerForUrl:(id)a3 useFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[FBADraftManager sharedInstance];
  v8 = [v7 appStoryboard];

  if ([FBAOSLogViewController canDisplayURL:v6])
  {
    v9 = [v8 instantiateViewControllerWithIdentifier:@"FBAOSLogViewController"];
    [(FBABugFormFileBrowserTableViewController *)v9 setOSLogURL:v6];
  }

  else if ([FBASqliteIndexViewController canDisplayURL:v6])
  {
    v10 = [v8 instantiateViewControllerWithIdentifier:@"FBASqliteIndexViewController"];
    v11 = [FBASqliteIndexViewController dbUrlForMetadataUrl:v6];
    if (v11)
    {
      [v10 setDbUrl:v11];
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  else if ([FBAPowerLogIndexViewController canDisplayURL:v6])
  {
    v9 = [v8 instantiateViewControllerWithIdentifier:@"FBAPowerLogViewController"];
    [(FBABugFormFileBrowserTableViewController *)v9 setPowerLogURL:v6];
  }

  else
  {
    if (![FBABugFormAttachmentPreview canPreviewItem:v6])
    {
      goto LABEL_15;
    }

    if ([FBABugFormAttachmentPreview urlPointsToTextFile:v6])
    {
      v12 = [FBABugFormAttachmentPreview textFileForURL:v6];

      v6 = v12;
    }

    v9 = [UIDocumentInteractionController interactionControllerWithURL:v6];
  }

  if (v9)
  {
    goto LABEL_25;
  }

LABEL_15:
  v19 = 0;
  v13 = [v6 getResourceValue:&v19 forKey:NSURLIsDirectoryKey error:0];
  v14 = v19;
  v15 = v14;
  if (v13 && ([v14 BOOLValue] & 1) != 0)
  {
    v9 = [[FBABugFormFileBrowserTableViewController alloc] initWithUrl:v6];

    if (v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v16 = +[FBALog appHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v21 = v6;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Cannot display file [%{public}@], will fallback to opaque controller %d", buf, 0x12u);
  }

  if (v4)
  {
    v17 = [DEDAttachmentItem itemWithURL:v6];
    v9 = [a1 _opaqueVCWithItem:v17];
  }

  else
  {
    v9 = 0;
  }

LABEL_25:

  return v9;
}

+ (id)_opaqueVCWithItem:(id)a3
{
  v3 = a3;
  v4 = +[FBADraftManager sharedInstance];
  v5 = [v4 appStoryboard];

  v6 = [v5 instantiateViewControllerWithIdentifier:@"FBAOpaqueFileViewController"];
  [v6 setItem:v3];

  return v6;
}

@end