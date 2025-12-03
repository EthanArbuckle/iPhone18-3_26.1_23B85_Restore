@interface SharingItem
- (SharingItem)initWithData:(id)data;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation SharingItem

- (SharingItem)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = SharingItem;
  v5 = [(SharingItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SharingItem *)v5 setData:dataCopy];
  }

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v5 = [UIImage alloc];
  data = [(SharingItem *)self data];
  v7 = [v5 initWithData:data];

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v4 = [UIImage alloc];
  data = [(SharingItem *)self data];
  v6 = [v4 initWithData:data];

  return v6;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_alloc_init(LPLinkMetadata);
  v5 = objc_alloc_init(LPFileMetadata);
  v6 = [LPImage alloc];
  v7 = [UIImage alloc];
  data = [(SharingItem *)self data];
  v9 = [v7 initWithData:data];
  v10 = [v6 initWithPlatformImage:v9];
  [v5 setThumbnail:v10];

  [v5 setName:@"Apple TV Screenshot"];
  identifier = [UTTypeImage identifier];
  [v5 setType:identifier];

  [v4 setSpecialization:v5];

  return v4;
}

@end