@interface AAUIContactsProvider
- (AAUIContactsProvider)init;
- (void)_fetchImageDataForLocalContact:(id)a3 ofSize:(double)a4 withCompletion:(id)a5;
- (void)_fetchImagesForContacts:(id)a3 ofSize:(double)a4 completion:(id)a5;
- (void)_fetchServerImageDataFor:(id)a3 WithCompletion:(id)a4;
- (void)fetchSuggestedBeneficiariesWithImagesOfSize:(double)a3 andCompletion:(id)a4;
- (void)fetchSuggestedCustodiansForUpsellWithImagesOfSize:(double)a3 telemetryFlowID:(id)a4 andCompletion:(id)a5;
- (void)fetchSuggestedCustodiansWithImagesOfSize:(double)a3 andCompletion:(id)a4;
@end

@implementation AAUIContactsProvider

- (AAUIContactsProvider)init
{
  v6.receiver = self;
  v6.super_class = AAUIContactsProvider;
  v2 = [(AAUIContactsProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactsManager = v2->_contactsManager;
    v2->_contactsManager = v3;
  }

  return v2;
}

- (void)fetchSuggestedCustodiansWithImagesOfSize:(double)a3 andCompletion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4B70;
  v6[3] = &unk_592B8;
  v9 = a3;
  v7 = self;
  v8 = a4;
  v5.receiver = v7;
  v5.super_class = AAUIContactsProvider;
  v4 = v8;
  [(AAUIContactsProvider *)&v5 fetchSuggestedCustodians:v6];
}

- (void)fetchSuggestedCustodiansForUpsellWithImagesOfSize:(double)a3 telemetryFlowID:(id)a4 andCompletion:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4C38;
  v7[3] = &unk_592B8;
  v10 = a3;
  v8 = self;
  v9 = a5;
  v6 = v9;
  [(AAUIContactsProvider *)v8 fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:a4 completion:v7];
}

- (void)fetchSuggestedBeneficiariesWithImagesOfSize:(double)a3 andCompletion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4D08;
  v6[3] = &unk_592B8;
  v9 = a3;
  v7 = self;
  v8 = a4;
  v5.receiver = v7;
  v5.super_class = AAUIContactsProvider;
  v4 = v8;
  [(AAUIContactsProvider *)&v5 fetchSuggestedBeneficiaries:v6];
}

- (void)_fetchImagesForContacts:(id)a3 ofSize:(double)a4 completion:(id)a5
{
  v8 = a3;
  v20 = a5;
  v9 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 imageData];

        if (!v16)
        {
          dispatch_group_enter(v9);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_4F6C;
          v24[3] = &unk_592E0;
          v24[4] = v15;
          v25 = v9;
          [(AAUIContactsProvider *)self _fetchImageDataForLocalContact:v15 ofSize:v24 withCompletion:a4];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v17 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4FAC;
  block[3] = &unk_59308;
  v22 = v10;
  v23 = v20;
  v18 = v10;
  v19 = v20;
  dispatch_group_notify(v9, v17, block);
}

- (void)_fetchImageDataForLocalContact:(id)a3 ofSize:(double)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  contactsManager = self->_contactsManager;
  v11 = [v8 handle];
  v12 = [(AAContactsManager *)contactsManager contactForHandle:v11];

  v13 = [v12 imageData];

  if (v13)
  {
    v14 = [v12 imageData];
  }

  else
  {
    v15 = [v12 thumbnailImageData];

    if (!v15)
    {
      v17 = [v8 familyDSID];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_514C;
      v18[3] = &unk_59330;
      v19 = v8;
      v21 = a4;
      v20 = v9;
      [(AAUIContactsProvider *)self _fetchServerImageDataFor:v17 WithCompletion:v18];

      goto LABEL_6;
    }

    v14 = [v12 thumbnailImageData];
  }

  v16 = v14;
  (*(v9 + 2))(v9, v14);

LABEL_6:
}

- (void)_fetchServerImageDataFor:(id)a3 WithCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [[FAFetchFamilyPhotoRequest alloc] initWithFamilyMemberDSID:v5 size:1 localFallback:1];
    [v8 setUseMonogramAsLastResort:0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_538C;
    v9[3] = &unk_59358;
    v10 = v7;
    [v8 startRequestWithCompletionHandler:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end