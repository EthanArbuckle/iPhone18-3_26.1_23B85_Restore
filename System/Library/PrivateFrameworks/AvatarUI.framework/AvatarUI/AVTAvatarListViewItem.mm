@interface AVTAvatarListViewItem
- (AVTAvatarListViewItem)initWithView:(id)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)downcastWithRecordHandler:(id)a3 imageHandler:(id)a4 viewHandler:(id)a5;
@end

@implementation AVTAvatarListViewItem

- (AVTAvatarListViewItem)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarListViewItem;
  v6 = [(AVTAvatarListViewItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (void)downcastWithRecordHandler:(id)a3 imageHandler:(id)a4 viewHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, self);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
    }

    v5 = [v4 view];
    v6 = [(AVTAvatarListViewItem *)self view];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(AVTAvatarListViewItem *)self view];
  v3 = [v2 hash];

  return v3;
}

@end