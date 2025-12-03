@interface ICActivityItemProvider
- (ICActivityItemProvider)initWithItemProvider:(id)provider title:(id)title image:(id)image;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation ICActivityItemProvider

- (ICActivityItemProvider)initWithItemProvider:(id)provider title:(id)title image:(id)image
{
  providerCopy = provider;
  titleCopy = title;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = ICActivityItemProvider;
  v11 = [(ICActivityItemProvider *)&v15 initWithPlaceholderItem:providerCopy];
  v12 = v11;
  if (v11)
  {
    [(ICActivityItemProvider *)v11 setItemProvider:providerCopy];
    v13 = [[ICLinkPresentationMetadata alloc] initWithTitle:titleCopy image:imageCopy];
    [(ICActivityItemProvider *)v12 setLinkPresentationMetadata:v13];
  }

  return v12;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  linkPresentationMetadata = [(ICActivityItemProvider *)self linkPresentationMetadata];
  linkMetadata = [linkPresentationMetadata linkMetadata];

  return linkMetadata;
}

@end