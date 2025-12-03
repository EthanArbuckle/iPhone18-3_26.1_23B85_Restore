@interface AEAnnotationLinkPresentationItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation AEAnnotationLinkPresentationItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  v6 = AESharingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = typeCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%@ returning LPMetadat.URL for activity:%@", &v12, 0x16u);
  }

  _generateLinkMetadata = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
  v10 = [_generateLinkMetadata URL];

  return v10;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

@end