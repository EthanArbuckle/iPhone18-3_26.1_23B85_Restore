@interface AEEPubPictureBookPlugin
- (AEEPubPictureBookPlugin)init;
- (id)helperForURL:(id)l withOptions:(id)options;
- (id)newViewControllerForAEBookInfo:(id)info storeID:(id)d;
@end

@implementation AEEPubPictureBookPlugin

- (AEEPubPictureBookPlugin)init
{
  v3.receiver = self;
  v3.super_class = AEEPubPictureBookPlugin;
  return [(AEEPubPictureBookPlugin *)&v3 init];
}

- (id)helperForURL:(id)l withOptions:(id)options
{
  lCopy = l;
  v6 = [[AEEPubPictureBookHelper alloc] initWithDelegate:self forURL:lCopy];

  return v6;
}

- (id)newViewControllerForAEBookInfo:(id)info storeID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if ([infoCopy isFixedLayout])
  {
    [BKEpubBookParser recomputeFixedLayoutDimensionsForBook:infoCopy];
    managedObjectContext = [infoCopy managedObjectContext];
    hasChanges = [managedObjectContext hasChanges];

    if (hasChanges)
    {
      managedObjectContext2 = [infoCopy managedObjectContext];
      [managedObjectContext2 save:0];
    }

    v10 = [[BKPictureBookViewController alloc] initWithBook:infoCopy storeID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end