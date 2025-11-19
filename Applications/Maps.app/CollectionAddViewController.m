@interface CollectionAddViewController
- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4;
- (CollectionAddViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)headerTitle;
- (void)saveMapItem:(id)a3;
@end

@implementation CollectionAddViewController

- (void)saveMapItem:(id)a3
{
  v4 = a3;
  v5 = [(CollectionEditSession *)self->_editSession collection];
  [(CollectionEditSession *)self->_editSession addSelectedObject:v4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100ACEB80;
  v15[3] = &unk_101661A90;
  v15[4] = self;
  v6 = v5;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  if ([(CollectionSaveSession *)self->_editSession canRenameSelectedObjectInCollection:v6])
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100ACEBFC;
    v12 = &unk_10165F618;
    v13 = v4;
    v14 = v7;
    v8 = [UIViewController _maps_viewControllerForRenamingMapItem:v13 saveHandler:&v9 cancelHandler:0];
    [(CollectionAddViewController *)self presentViewController:v8 animated:1 completion:0, v9, v10, v11, v12];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4
{
  v6 = a4;
  editSession = self->_editSession;
  v8 = a3;
  v9 = [(CollectionEditSession *)editSession collection];
  v15.receiver = self;
  v15.super_class = CollectionAddViewController;
  LOBYTE(self) = [(AddFromACViewController *)&v15 searchDataSource:v8 shouldFilterItem:v6];

  if ((self & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v6 geoCompletionItem];
      v12 = [v11 geoMapItem];

      v13 = [[MKMapItem alloc] initWithGeoMapItem:v12 isPlaceHolderPlace:0];
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

      v13 = v6;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v10 = [v9 containsItem:v13];

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

- (CollectionAddViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = CollectionAddViewController;
  v4 = [(AddFromACViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ContaineeViewController *)v4 cardPresentationController];
    [v6 setAllowsSwipeToDismiss:0];
  }

  return v5;
}

@end