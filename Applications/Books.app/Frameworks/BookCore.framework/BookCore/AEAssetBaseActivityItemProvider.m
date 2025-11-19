@interface AEAssetBaseActivityItemProvider
- (AEAssetActivityItemProviderSourceDelegate)delegate;
- (AEAssetBaseActivityItemProvider)initWithDelegate:(id)a3 placeholderItem:(id)a4 propertySource:(id)a5;
- (BOOL)shouldShareActivityType:(id)a3;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
@end

@implementation AEAssetBaseActivityItemProvider

- (AEAssetBaseActivityItemProvider)initWithDelegate:(id)a3 placeholderItem:(id)a4 propertySource:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = AEAssetBaseActivityItemProvider;
  v10 = [(AEAssetBaseActivityItemProvider *)&v15 initWithPlaceholderItem:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v12 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:v9];
    propertyProvider = v11->_propertyProvider;
    v11->_propertyProvider = v12;
  }

  return v11;
}

- (BOOL)shouldShareActivityType:(id)a3
{
  v4 = a3;
  if ([(AEAssetBaseActivityItemProvider *)self supportsActivityType:v4])
  {
    v5 = [(AEAssetBaseActivityItemProvider *)self delegate];
    v6 = [v5 itemProviderSource:self shouldShareActivityType:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = [(AEAssetBaseActivityItemProvider *)self propertyProvider:a3];
  v6 = [v5 title];

  v7 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  v8 = [v7 author];

  if ([v6 length])
  {
    v9 = [v8 length];
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

    v14 = [NSString stringWithFormat:v13, v6, v8];
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