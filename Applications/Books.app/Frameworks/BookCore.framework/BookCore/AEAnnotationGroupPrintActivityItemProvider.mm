@interface AEAnnotationGroupPrintActivityItemProvider
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (id)supportedActivityTypes;
- (void)populateHTMLGenerator:(id)a3;
@end

@implementation AEAnnotationGroupPrintActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypePrint;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEAnnotationGroupPrintActivityItemProvider *)self supportedActivityTypes];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v15.receiver = self;
    v15.super_class = AEAnnotationGroupPrintActivityItemProvider;
    v10 = [(AEAnnotationGroupHTMLActivityItemProvider *)&v15 activityViewController:v6 itemForActivityType:v7];
    v11 = [[UIMarkupTextPrintFormatter alloc] initWithMarkupText:v10];
  }

  else
  {
    v10 = AESharingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [[UIMarkupTextPrintFormatter alloc] initWithMarkupText:&stru_2D2930];

  return v3;
}

- (void)populateHTMLGenerator:(id)a3
{
  v4.receiver = self;
  v4.super_class = AEAnnotationGroupPrintActivityItemProvider;
  v3 = a3;
  [(AEAnnotationHTMLActivityItemProvider *)&v4 populateHTMLGenerator:v3];
  [v3 setCitationsAllowed:{0, v4.receiver, v4.super_class}];
  [v3 setForPrint:1];
}

@end