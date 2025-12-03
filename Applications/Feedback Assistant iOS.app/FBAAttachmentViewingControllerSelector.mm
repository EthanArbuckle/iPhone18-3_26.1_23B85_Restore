@interface FBAAttachmentViewingControllerSelector
+ (id)_opaqueVCWithItem:(id)item;
+ (id)controllerForAttachment:(id)attachment;
+ (id)controllerForItem:(id)item;
+ (id)controllerForUrl:(id)url useFallback:(BOOL)fallback;
@end

@implementation FBAAttachmentViewingControllerSelector

+ (id)controllerForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy hasGroup])
  {
    v5 = [FBABugFormFileBrowserTableViewController alloc];
    group = [attachmentCopy group];
    v7 = [(FBABugFormFileBrowserTableViewController *)v5 initWithGroup:group];
  }

  else
  {
    group = [attachmentCopy item];
    v7 = [self controllerForItem:group];
  }

  v8 = v7;

  if (!v8)
  {
    if ([self fallbackToOpaqueViewer])
    {
      item = [attachmentCopy item];
      v8 = [self _opaqueVCWithItem:item];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)controllerForItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    if ([FBAOpaqueFileViewController shouldDisplayItem:itemCopy])
    {
      v5 = [self _opaqueVCWithItem:itemCopy];
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      attachedPath = [itemCopy attachedPath];
      v5 = [self controllerForUrl:attachedPath useFallback:0];

      if (v5)
      {
        goto LABEL_12;
      }
    }

    if ([self fallbackToOpaqueViewer])
    {
      v5 = [self _opaqueVCWithItem:itemCopy];
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

+ (id)controllerForUrl:(id)url useFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  urlCopy = url;
  v7 = +[FBADraftManager sharedInstance];
  appStoryboard = [v7 appStoryboard];

  if ([FBAOSLogViewController canDisplayURL:urlCopy])
  {
    v9 = [appStoryboard instantiateViewControllerWithIdentifier:@"FBAOSLogViewController"];
    [(FBABugFormFileBrowserTableViewController *)v9 setOSLogURL:urlCopy];
  }

  else if ([FBASqliteIndexViewController canDisplayURL:urlCopy])
  {
    v10 = [appStoryboard instantiateViewControllerWithIdentifier:@"FBASqliteIndexViewController"];
    v11 = [FBASqliteIndexViewController dbUrlForMetadataUrl:urlCopy];
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

  else if ([FBAPowerLogIndexViewController canDisplayURL:urlCopy])
  {
    v9 = [appStoryboard instantiateViewControllerWithIdentifier:@"FBAPowerLogViewController"];
    [(FBABugFormFileBrowserTableViewController *)v9 setPowerLogURL:urlCopy];
  }

  else
  {
    if (![FBABugFormAttachmentPreview canPreviewItem:urlCopy])
    {
      goto LABEL_15;
    }

    if ([FBABugFormAttachmentPreview urlPointsToTextFile:urlCopy])
    {
      v12 = [FBABugFormAttachmentPreview textFileForURL:urlCopy];

      urlCopy = v12;
    }

    v9 = [UIDocumentInteractionController interactionControllerWithURL:urlCopy];
  }

  if (v9)
  {
    goto LABEL_25;
  }

LABEL_15:
  v19 = 0;
  v13 = [urlCopy getResourceValue:&v19 forKey:NSURLIsDirectoryKey error:0];
  v14 = v19;
  v15 = v14;
  if (v13 && ([v14 BOOLValue] & 1) != 0)
  {
    v9 = [[FBABugFormFileBrowserTableViewController alloc] initWithUrl:urlCopy];

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
    v21 = urlCopy;
    v22 = 1024;
    v23 = fallbackCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Cannot display file [%{public}@], will fallback to opaque controller %d", buf, 0x12u);
  }

  if (fallbackCopy)
  {
    v17 = [DEDAttachmentItem itemWithURL:urlCopy];
    v9 = [self _opaqueVCWithItem:v17];
  }

  else
  {
    v9 = 0;
  }

LABEL_25:

  return v9;
}

+ (id)_opaqueVCWithItem:(id)item
{
  itemCopy = item;
  v4 = +[FBADraftManager sharedInstance];
  appStoryboard = [v4 appStoryboard];

  v6 = [appStoryboard instantiateViewControllerWithIdentifier:@"FBAOpaqueFileViewController"];
  [v6 setItem:itemCopy];

  return v6;
}

@end