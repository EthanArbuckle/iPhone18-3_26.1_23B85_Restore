@interface AAUIContactsProvider
- (AAUIContactsProvider)init;
- (void)_fetchImageDataForLocalContact:(id)contact ofSize:(double)size withCompletion:(id)completion;
- (void)_fetchImagesForContacts:(id)contacts ofSize:(double)size completion:(id)completion;
- (void)_fetchServerImageDataFor:(id)for WithCompletion:(id)completion;
- (void)fetchSuggestedBeneficiariesWithImagesOfSize:(double)size andCompletion:(id)completion;
- (void)fetchSuggestedCustodiansForUpsellWithImagesOfSize:(double)size telemetryFlowID:(id)d andCompletion:(id)completion;
- (void)fetchSuggestedCustodiansWithImagesOfSize:(double)size andCompletion:(id)completion;
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

- (void)fetchSuggestedCustodiansWithImagesOfSize:(double)size andCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4B70;
  v6[3] = &unk_592B8;
  sizeCopy = size;
  selfCopy = self;
  completionCopy = completion;
  v5.receiver = selfCopy;
  v5.super_class = AAUIContactsProvider;
  v4 = completionCopy;
  [(AAUIContactsProvider *)&v5 fetchSuggestedCustodians:v6];
}

- (void)fetchSuggestedCustodiansForUpsellWithImagesOfSize:(double)size telemetryFlowID:(id)d andCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4C38;
  v7[3] = &unk_592B8;
  sizeCopy = size;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  [(AAUIContactsProvider *)selfCopy fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:d completion:v7];
}

- (void)fetchSuggestedBeneficiariesWithImagesOfSize:(double)size andCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4D08;
  v6[3] = &unk_592B8;
  sizeCopy = size;
  selfCopy = self;
  completionCopy = completion;
  v5.receiver = selfCopy;
  v5.super_class = AAUIContactsProvider;
  v4 = completionCopy;
  [(AAUIContactsProvider *)&v5 fetchSuggestedBeneficiaries:v6];
}

- (void)_fetchImagesForContacts:(id)contacts ofSize:(double)size completion:(id)completion
{
  contactsCopy = contacts;
  completionCopy = completion;
  v9 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = contactsCopy;
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
        imageData = [v15 imageData];

        if (!imageData)
        {
          dispatch_group_enter(v9);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_4F6C;
          v24[3] = &unk_592E0;
          v24[4] = v15;
          v25 = v9;
          [(AAUIContactsProvider *)self _fetchImageDataForLocalContact:v15 ofSize:v24 withCompletion:size];
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
  v23 = completionCopy;
  v18 = v10;
  v19 = completionCopy;
  dispatch_group_notify(v9, v17, block);
}

- (void)_fetchImageDataForLocalContact:(id)contact ofSize:(double)size withCompletion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  contactsManager = self->_contactsManager;
  handle = [contactCopy handle];
  v12 = [(AAContactsManager *)contactsManager contactForHandle:handle];

  imageData = [v12 imageData];

  if (imageData)
  {
    imageData2 = [v12 imageData];
  }

  else
  {
    thumbnailImageData = [v12 thumbnailImageData];

    if (!thumbnailImageData)
    {
      familyDSID = [contactCopy familyDSID];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_514C;
      v18[3] = &unk_59330;
      v19 = contactCopy;
      sizeCopy = size;
      v20 = completionCopy;
      [(AAUIContactsProvider *)self _fetchServerImageDataFor:familyDSID WithCompletion:v18];

      goto LABEL_6;
    }

    imageData2 = [v12 thumbnailImageData];
  }

  v16 = imageData2;
  (*(completionCopy + 2))(completionCopy, imageData2);

LABEL_6:
}

- (void)_fetchServerImageDataFor:(id)for WithCompletion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  v7 = completionCopy;
  if (forCopy)
  {
    v8 = [[FAFetchFamilyPhotoRequest alloc] initWithFamilyMemberDSID:forCopy size:1 localFallback:1];
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
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end