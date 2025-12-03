@interface AVTAvatarListViewItem
- (AVTAvatarListViewItem)initWithView:(id)view;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)downcastWithRecordHandler:(id)handler imageHandler:(id)imageHandler viewHandler:(id)viewHandler;
@end

@implementation AVTAvatarListViewItem

- (AVTAvatarListViewItem)initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = AVTAvatarListViewItem;
  v6 = [(AVTAvatarListViewItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (void)downcastWithRecordHandler:(id)handler imageHandler:(id)imageHandler viewHandler:(id)viewHandler
{
  if (viewHandler)
  {
    (*(viewHandler + 2))(viewHandler, self);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", equalCopy}];
    }

    view = [equalCopy view];
    view2 = [(AVTAvatarListViewItem *)self view];
    v7 = view == view2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  view = [(AVTAvatarListViewItem *)self view];
  v3 = [view hash];

  return v3;
}

@end