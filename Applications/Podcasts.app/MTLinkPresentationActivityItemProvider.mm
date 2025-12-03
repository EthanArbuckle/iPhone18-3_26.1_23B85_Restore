@interface MTLinkPresentationActivityItemProvider
- (MTLinkPresentationActivityItemProvider)initWithDataSource:(id)source;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
@end

@implementation MTLinkPresentationActivityItemProvider

- (MTLinkPresentationActivityItemProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = MTLinkPresentationActivityItemProvider;
  v6 = [(MTLinkPresentationActivityItemProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  dataSource = [(MTLinkPresentationActivityItemProvider *)self dataSource];
  v4 = [MTLinkPresentationMetadataUtil linkMetadataForDataSource:dataSource];

  return v4;
}

@end