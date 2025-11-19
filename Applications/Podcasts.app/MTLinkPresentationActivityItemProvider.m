@interface MTLinkPresentationActivityItemProvider
- (MTLinkPresentationActivityItemProvider)initWithDataSource:(id)a3;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
@end

@implementation MTLinkPresentationActivityItemProvider

- (MTLinkPresentationActivityItemProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTLinkPresentationActivityItemProvider;
  v6 = [(MTLinkPresentationActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v3 = [(MTLinkPresentationActivityItemProvider *)self dataSource];
  v4 = [MTLinkPresentationMetadataUtil linkMetadataForDataSource:v3];

  return v4;
}

@end