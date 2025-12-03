@interface MTAirDropActivityItemSource
- (MTAirDropActivityItemSource)initWithDataSource:(id)source;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation MTAirDropActivityItemSource

- (MTAirDropActivityItemSource)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(MTAirDropActivityItemSource *)self init];
  v6 = v5;
  if (v5)
  {
    [(MTAirDropActivityItemSource *)v5 setDataSource:sourceCopy];
  }

  return v6;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  dataSource = [(MTAirDropActivityItemSource *)self dataSource];
  shareURL = [dataSource shareURL];

  return shareURL;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:UIActivityTypeAirDrop])
  {
    dataSource = [(MTAirDropActivityItemSource *)self dataSource];
    shareURL = [dataSource shareURL];
  }

  else
  {
    shareURL = 0;
  }

  return shareURL;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  if ([type isEqualToString:{UIActivityTypeAirDrop, size.width, size.height}])
  {
    dataSource = [(MTAirDropActivityItemSource *)self dataSource];
    shareImage = [dataSource shareImage];
  }

  else
  {
    shareImage = 0;
  }

  return shareImage;
}

@end