@interface CollectionAddViewController
- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item;
- (CollectionAddViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)headerTitle;
- (void)saveMapItem:(id)item;
@end

@implementation CollectionAddViewController

- (void)saveMapItem:(id)item
{
  itemCopy = item;
  collection = [(CollectionEditSession *)self->_editSession collection];
  [(CollectionEditSession *)self->_editSession addSelectedObject:itemCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100ACEB80;
  v15[3] = &unk_101661A90;
  v15[4] = self;
  v6 = collection;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  if ([(CollectionSaveSession *)self->_editSession canRenameSelectedObjectInCollection:v6])
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100ACEBFC;
    v12 = &unk_10165F618;
    v13 = itemCopy;
    v14 = v7;
    v8 = [UIViewController _maps_viewControllerForRenamingMapItem:v13 saveHandler:&v9 cancelHandler:0];
    [(CollectionAddViewController *)self presentViewController:v8 animated:1 completion:0, v9, v10, v11, v12];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item
{
  itemCopy = item;
  editSession = self->_editSession;
  sourceCopy = source;
  collection = [(CollectionEditSession *)editSession collection];
  v15.receiver = self;
  v15.super_class = CollectionAddViewController;
  LOBYTE(self) = [(AddFromACViewController *)&v15 searchDataSource:sourceCopy shouldFilterItem:itemCopy];

  if ((self & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      geoCompletionItem = [itemCopy geoCompletionItem];
      geoMapItem = [geoCompletionItem geoMapItem];

      v13 = [[MKMapItem alloc] initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
      if (!v13)
      {
LABEL_9:
        v10 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v13 = itemCopy;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v10 = [collection containsItem:v13];

    goto LABEL_10;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Guide] Save to My Guides" value:@"localized string not found" table:0];

  return v3;
}

- (CollectionAddViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = CollectionAddViewController;
  v4 = [(AddFromACViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    cardPresentationController = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController setAllowsSwipeToDismiss:0];
  }

  return v5;
}

@end