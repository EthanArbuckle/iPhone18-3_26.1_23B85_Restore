@interface AEAnnotationGroupHTMLActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
@end

@implementation AEAnnotationGroupHTMLActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  supportedActivityTypes = [(AEAnnotationHTMLActivityItemProvider *)self supportedActivityTypes];
  v7 = [supportedActivityTypes containsObject:typeCopy];

  if (v7)
  {
    v8 = objc_alloc_init(AEAnnotationGroupHTMLGenerator);
    [(AEAnnotationHTMLActivityItemProvider *)self populateHTMLGenerator:v8];
    documentString = [(AEAnnotationGroupHTMLGenerator *)v8 documentString];
  }

  else
  {
    v10 = AESharingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = typeCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", &v14, 0x16u);
    }

    documentString = 0;
  }

  return documentString;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  typeCopy = type;
  supportedActivityTypes = [(AEAnnotationHTMLActivityItemProvider *)self supportedActivityTypes];
  v7 = [supportedActivityTypes containsObject:typeCopy];

  if (v7)
  {
    propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    author = [propertyProvider author];
    v10 = [author length];
    v11 = IMCommonCoreBundle();
    v12 = v11;
    if (v10)
    {
      v13 = [v11 localizedStringForKey:@"Notes from \\U201C%@\\U201D by %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider2 title];
      propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      author2 = [propertyProvider3 author];
      v18 = [NSString stringWithFormat:v13, title, author2];
    }

    else
    {
      v13 = [v11 localizedStringForKey:@"Notes from \\U201C%@\\U201D" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider2 title];
      v18 = [NSString stringWithFormat:v13, title];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end