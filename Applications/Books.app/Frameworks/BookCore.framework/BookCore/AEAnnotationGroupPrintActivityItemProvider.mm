@interface AEAnnotationGroupPrintActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)supportedActivityTypes;
- (void)populateHTMLGenerator:(id)generator;
@end

@implementation AEAnnotationGroupPrintActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypePrint;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  supportedActivityTypes = [(AEAnnotationGroupPrintActivityItemProvider *)self supportedActivityTypes];
  v9 = [supportedActivityTypes containsObject:typeCopy];

  if (v9)
  {
    v15.receiver = self;
    v15.super_class = AEAnnotationGroupPrintActivityItemProvider;
    v10 = [(AEAnnotationGroupHTMLActivityItemProvider *)&v15 activityViewController:controllerCopy itemForActivityType:typeCopy];
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
      v19 = typeCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = [[UIMarkupTextPrintFormatter alloc] initWithMarkupText:&stru_2D2930];

  return v3;
}

- (void)populateHTMLGenerator:(id)generator
{
  v4.receiver = self;
  v4.super_class = AEAnnotationGroupPrintActivityItemProvider;
  generatorCopy = generator;
  [(AEAnnotationHTMLActivityItemProvider *)&v4 populateHTMLGenerator:generatorCopy];
  [generatorCopy setCitationsAllowed:{0, v4.receiver, v4.super_class}];
  [generatorCopy setForPrint:1];
}

@end