@interface MailRecategorizationDataSource
- (MFTriageInteractionDelegate)delegate;
- (MailRecategorizationDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4;
- (id)_configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5;
- (id)cardActionAtIndexPath:(id)a3;
- (void)_configureReusableSupplementaryView;
- (void)reloadDataSource;
- (void)updateDataSourceWithMessageListItem:(id)a3 completion:(id)a4;
@end

@implementation MailRecategorizationDataSource

- (MailRecategorizationDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MailRecategorizationDataSource;
  v9 = [(MailRecategorizationDataSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collectionView, a3);
    v11 = [[UICollectionViewDiffableDataSource alloc] initWithCollectionView:v7 cellProvider:v8];
    collectionViewDataSource = v10->_collectionViewDataSource;
    v10->_collectionViewDataSource = v11;
  }

  return v10;
}

- (void)updateDataSourceWithMessageListItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v34 = a4;
  v7 = [MSMessageListItemSelection alloc];
  v53 = v6;
  v8 = [NSArray arrayWithObjects:&v53 count:1];
  v33 = [v7 initWithMessageListItems:v8];

  v9 = [v6 senderList];
  v35 = [v9 firstObject];

  v10 = [v35 emailAddressValue];
  v32 = [v10 simpleAddress];

  if (v35)
  {
    v11 = v35;
    v12 = [v11 emailAddressValue];
    v13 = [v12 em_displayableString];
    v14 = v13;
    if (v13)
    {
      v31 = v13;
    }

    else
    {
      v15 = [v12 simpleAddress];
      v16 = v15;
      if (v15)
      {
        v31 = v15;
      }

      else
      {
        v31 = [v11 stringValue];
      }
    }
  }

  else
  {
    v31 = &stru_100662A88;
  }

  [(MailRecategorizationDataSource *)self _configureReusableSupplementaryView];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001248EC;
  v45[3] = &unk_100650D50;
  v30 = v33;
  v46 = v30;
  v17 = v32;
  v47 = v17;
  v18 = v31;
  v48 = v18;
  v29 = v6;
  v49 = v29;
  v50 = self;
  v19 = v34;
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
  v3 = [(MailRecategorizationDataSource *)self collectionViewDataSource];
  v6 = [v3 snapshot];

  v4 = [v6 sectionIdentifiers];
  [v6 reloadSectionsWithIdentifiers:v4];

  v5 = [(MailRecategorizationDataSource *)self collectionViewDataSource];
  [v5 applySnapshot:v6 animatingDifferences:0];
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

- (id)_configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:UICollectionElementKindSectionHeader])
  {
    v11 = [(MailRecategorizationDataSource *)self manualCategorizationHeaderRegistration];
    v12 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v11 forIndexPath:v10];
  }

  else
  {
    if (![v9 isEqualToString:UICollectionElementKindSectionFooter])
    {
      v13 = 0;
      goto LABEL_10;
    }

    if ([v10 section])
    {
      [(MailRecategorizationDataSource *)self manualCategorizationFooterRegistration];
    }

    else
    {
      [(MailRecategorizationDataSource *)self autoCategorizationFooterRegistration];
    }
    v11 = ;
    v12 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v11 forIndexPath:v10];
  }

  v13 = v12;

LABEL_10:

  return v13;
}

- (id)cardActionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MailRecategorizationDataSource *)self collectionViewDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  return v6;
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end