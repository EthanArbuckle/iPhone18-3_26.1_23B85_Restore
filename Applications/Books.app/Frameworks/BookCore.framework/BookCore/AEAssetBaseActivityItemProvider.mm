@interface AEAssetBaseActivityItemProvider
- (AEAssetActivityItemProviderSourceDelegate)delegate;
- (AEAssetBaseActivityItemProvider)initWithDelegate:(id)delegate placeholderItem:(id)item propertySource:(id)source;
- (BOOL)shouldShareActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
@end

@implementation AEAssetBaseActivityItemProvider

- (AEAssetBaseActivityItemProvider)initWithDelegate:(id)delegate placeholderItem:(id)item propertySource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = AEAssetBaseActivityItemProvider;
  v10 = [(AEAssetBaseActivityItemProvider *)&v15 initWithPlaceholderItem:item];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v12 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:sourceCopy];
    propertyProvider = v11->_propertyProvider;
    v11->_propertyProvider = v12;
  }

  return v11;
}

- (BOOL)shouldShareActivityType:(id)type
{
  typeCopy = type;
  if ([(AEAssetBaseActivityItemProvider *)self supportsActivityType:typeCopy])
  {
    delegate = [(AEAssetBaseActivityItemProvider *)self delegate];
    v6 = [delegate itemProviderSource:self shouldShareActivityType:typeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v5 = [(AEAssetBaseActivityItemProvider *)self propertyProvider:controller];
  title = [v5 title];

  propertyProvider = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  author = [propertyProvider author];

  if ([title length])
  {
    v9 = [author length];
    v10 = IMCommonCoreBundle();
    v11 = v10;
    if (v9)
    {
      v12 = @"\\U201C%@\\U201D by %@";
    }

    else
    {
      v12 = @"\\U201C%@\\U201D";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v14 = [NSString stringWithFormat:v13, title, author];
  }

  else
  {
    v14 = &stru_2D2930;
  }

  return v14;
}

- (AEAssetActivityItemProviderSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end