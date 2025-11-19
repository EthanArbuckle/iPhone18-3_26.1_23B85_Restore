@interface SharingItem
- (SharingItem)initWithData:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation SharingItem

- (SharingItem)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SharingItem;
  v5 = [(SharingItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SharingItem *)v5 setData:v4];
  }

  return v6;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = [UIImage alloc];
  v6 = [(SharingItem *)self data];
  v7 = [v5 initWithData:v6];

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = [UIImage alloc];
  v5 = [(SharingItem *)self data];
  v6 = [v4 initWithData:v5];

  return v6;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = objc_alloc_init(LPLinkMetadata);
  v5 = objc_alloc_init(LPFileMetadata);
  v6 = [LPImage alloc];
  v7 = [UIImage alloc];
  v8 = [(SharingItem *)self data];
  v9 = [v7 initWithData:v8];
  v10 = [v6 initWithPlatformImage:v9];
  [v5 setThumbnail:v10];

  [v5 setName:@"Apple TV Screenshot"];
  v11 = [UTTypeImage identifier];
  [v5 setType:v11];

  [v4 setSpecialization:v5];

  return v4;
}

@end