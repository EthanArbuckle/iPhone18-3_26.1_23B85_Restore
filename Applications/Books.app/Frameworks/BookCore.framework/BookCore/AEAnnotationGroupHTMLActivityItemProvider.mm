@interface AEAnnotationGroupHTMLActivityItemProvider
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
@end

@implementation AEAnnotationGroupHTMLActivityItemProvider

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(AEAnnotationHTMLActivityItemProvider *)self supportedActivityTypes];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    v8 = objc_alloc_init(AEAnnotationGroupHTMLGenerator);
    [(AEAnnotationHTMLActivityItemProvider *)self populateHTMLGenerator:v8];
    v9 = [(AEAnnotationGroupHTMLGenerator *)v8 documentString];
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
      v17 = v5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", &v14, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(AEAnnotationHTMLActivityItemProvider *)self supportedActivityTypes];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    v8 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    v9 = [v8 author];
    v10 = [v9 length];
    v11 = IMCommonCoreBundle();
    v12 = v11;
    if (v10)
    {
      v13 = [v11 localizedStringForKey:@"Notes from \\U201C%@\\U201D by %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      v14 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v15 = [v14 title];
      v16 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v17 = [v16 author];
      v18 = [NSString stringWithFormat:v13, v15, v17];
    }

    else
    {
      v13 = [v11 localizedStringForKey:@"Notes from \\U201C%@\\U201D" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      v14 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v15 = [v14 title];
      v18 = [NSString stringWithFormat:v13, v15];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end