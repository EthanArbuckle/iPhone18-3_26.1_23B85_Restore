@interface AEEPubPictureBookPlugin
- (AEEPubPictureBookPlugin)init;
- (id)helperForURL:(id)a3 withOptions:(id)a4;
- (id)newViewControllerForAEBookInfo:(id)a3 storeID:(id)a4;
@end

@implementation AEEPubPictureBookPlugin

- (AEEPubPictureBookPlugin)init
{
  v3.receiver = self;
  v3.super_class = AEEPubPictureBookPlugin;
  return [(AEEPubPictureBookPlugin *)&v3 init];
}

- (id)helperForURL:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = [[AEEPubPictureBookHelper alloc] initWithDelegate:self forURL:v5];

  return v6;
}

- (id)newViewControllerForAEBookInfo:(id)a3 storeID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isFixedLayout])
  {
    [BKEpubBookParser recomputeFixedLayoutDimensionsForBook:v5];
    v7 = [v5 managedObjectContext];
    v8 = [v7 hasChanges];

    if (v8)
    {
      v9 = [v5 managedObjectContext];
      [v9 save:0];
    }

    v10 = [[BKPictureBookViewController alloc] initWithBook:v5 storeID:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end