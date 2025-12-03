@interface MailRecategorizationDataSource
- (MFTriageInteractionDelegate)delegate;
- (MailRecategorizationDataSource)initWithCollectionView:(id)view cellProvider:(id)provider;
- (id)_configuredReusableSupplementaryViewForCollectionView:(id)view elementKind:(id)kind indexPath:(id)path;
- (id)cardActionAtIndexPath:(id)path;
- (void)_configureReusableSupplementaryView;
- (void)reloadDataSource;
- (void)updateDataSourceWithMessageListItem:(id)item completion:(id)completion;
@end

@implementation MailRecategorizationDataSource

- (MailRecategorizationDataSource)initWithCollectionView:(id)view cellProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = MailRecategorizationDataSource;
  v9 = [(MailRecategorizationDataSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collectionView, view);
    v11 = [[UICollectionViewDiffableDataSource alloc] initWithCollectionView:viewCopy cellProvider:providerCopy];
    collectionViewDataSource = v10->_collectionViewDataSource;
    v10->_collectionViewDataSource = v11;
  }

  return v10;
}

- (void)updateDataSourceWithMessageListItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v7 = [MSMessageListItemSelection alloc];
  v53 = itemCopy;
  v8 = [NSArray arrayWithObjects:&v53 count:1];
  v33 = [v7 initWithMessageListItems:v8];

  senderList = [itemCopy senderList];
  firstObject = [senderList firstObject];

  emailAddressValue = [firstObject emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];

  if (firstObject)
  {
    v11 = firstObject;
    emailAddressValue2 = [v11 emailAddressValue];
    em_displayableString = [emailAddressValue2 em_displayableString];
    v14 = em_displayableString;
    if (em_displayableString)
    {
      stringValue = em_displayableString;
    }

    else
    {
      simpleAddress2 = [emailAddressValue2 simpleAddress];
      v16 = simpleAddress2;
      if (simpleAddress2)
      {
        stringValue = simpleAddress2;
      }

      else
      {
        stringValue = [v11 stringValue];
      }
    }
  }

  else
  {
    stringValue = &stru_100662A88;
  }

  [(MailRecategorizationDataSource *)self _configureReusableSupplementaryView];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001248EC;
  v45[3] = &unk_100650D50;
  v30 = v33;
  v46 = v30;
  v17 = simpleAddress;
  v47 = v17;
  v18 = stringValue;
  v48 = v18;
  v29 = itemCopy;
  v49 = v29;
  selfCopy = self;
  v19 = completionCopy;
  v51 = v19;
  v20 = objc_retainBlock(v45);
  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = (v20[2])(v20, 0);
  v52 = v22;
  v23 = [NSArray arrayWithObjects:&v52 count:1];
  [v21 setObject:v23 forKeyedSubscript:&off_100674180];

  v24 = +[NSMutableArray array];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_100124A4C;
  v42 = &unk_100650D78;
  v25 = v20;
  v44 = v25;
  v26 = v24;
  v43 = v26;
  MUIBucketEnumerateAllBuckets();
  [v21 setObject:v26 forKeyedSubscript:&off_100674198];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100124AC0;
  v36[3] = &unk_10064C6B0;
  v36[4] = self;
  v37 = &off_100674F58;
  v27 = v21;
  v38 = v27;
  v28 = +[EFScheduler mainThreadScheduler];
  [v28 performBlock:v36];
}

- (void)reloadDataSource
{
  collectionViewDataSource = [(MailRecategorizationDataSource *)self collectionViewDataSource];
  snapshot = [collectionViewDataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  [snapshot reloadSectionsWithIdentifiers:sectionIdentifiers];

  collectionViewDataSource2 = [(MailRecategorizationDataSource *)self collectionViewDataSource];
  [collectionViewDataSource2 applySnapshot:snapshot animatingDifferences:0];
}

- (void)_configureReusableSupplementaryView
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v3 = [(MailRecategorizationDataSource *)self collectionViewDataSource:_NSConcreteStackBlock];
  [v3 setSupplementaryViewProvider:&v7];

  v4 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionHeader configurationHandler:&stru_100650DB8];
  [(MailRecategorizationDataSource *)self setAutoCategorizationFooterRegistration:v4];

  v5 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionHeader configurationHandler:&stru_100650DD8];
  [(MailRecategorizationDataSource *)self setManualCategorizationHeaderRegistration:v5];

  v6 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionHeader configurationHandler:&stru_100650DF8];
  [(MailRecategorizationDataSource *)self setManualCategorizationFooterRegistration:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_configuredReusableSupplementaryViewForCollectionView:(id)view elementKind:(id)kind indexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:UICollectionElementKindSectionHeader])
  {
    manualCategorizationHeaderRegistration = [(MailRecategorizationDataSource *)self manualCategorizationHeaderRegistration];
    v12 = [viewCopy dequeueConfiguredReusableSupplementaryViewWithRegistration:manualCategorizationHeaderRegistration forIndexPath:pathCopy];
  }

  else
  {
    if (![kindCopy isEqualToString:UICollectionElementKindSectionFooter])
    {
      v13 = 0;
      goto LABEL_10;
    }

    if ([pathCopy section])
    {
      [(MailRecategorizationDataSource *)self manualCategorizationFooterRegistration];
    }

    else
    {
      [(MailRecategorizationDataSource *)self autoCategorizationFooterRegistration];
    }
    manualCategorizationHeaderRegistration = ;
    v12 = [viewCopy dequeueConfiguredReusableSupplementaryViewWithRegistration:manualCategorizationHeaderRegistration forIndexPath:pathCopy];
  }

  v13 = v12;

LABEL_10:

  return v13;
}

- (id)cardActionAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(MailRecategorizationDataSource *)self collectionViewDataSource];
  v6 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  return v6;
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end