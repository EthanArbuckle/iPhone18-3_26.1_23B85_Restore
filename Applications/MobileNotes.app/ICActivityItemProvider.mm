@interface ICActivityItemProvider
- (ICActivityItemProvider)initWithItemProvider:(id)a3 title:(id)a4 image:(id)a5;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation ICActivityItemProvider

- (ICActivityItemProvider)initWithItemProvider:(id)a3 title:(id)a4 image:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = ICActivityItemProvider;
  v11 = [(ICActivityItemProvider *)&v15 initWithPlaceholderItem:v8];
  v12 = v11;
  if (v11)
  {
    [(ICActivityItemProvider *)v11 setItemProvider:v8];
    v13 = [[ICLinkPresentationMetadata alloc] initWithTitle:v9 image:v10];
    [(ICActivityItemProvider *)v12 setLinkPresentationMetadata:v13];
  }

  return v12;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v3 = [(ICActivityItemProvider *)self linkPresentationMetadata];
  v4 = [v3 linkMetadata];

  return v4;
}

@end