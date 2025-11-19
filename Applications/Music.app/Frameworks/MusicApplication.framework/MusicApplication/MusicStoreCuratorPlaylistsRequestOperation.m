@interface MusicStoreCuratorPlaylistsRequestOperation
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4;
- (void)_produceIncrementalResponseWithLoadedItemMetadataResponse:(id)a3 completion:(id)a4;
- (void)_produceInitialResponseWithLoadedItemMetadataResponse:(id)a3 completion:(id)a4;
- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4;
@end

@implementation MusicStoreCuratorPlaylistsRequestOperation

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4
{
  v6 = [(MusicStoreCuratorPlaylistsRequestOperation *)self request];
  v7 = [v6 previousResponse];
  v8 = [v7 additionalPlaylistIdentifiers];
  v9 = [v8 count];
  if (!v9)
  {
    v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 curatorStoreAdamID]);
    v18 = MPStoreItemMetadataStringNormalizeStoreIDValue();

    if (v18)
    {
      v19 = [MPStoreModelRequestConfiguration alloc];
      v22 = v18;
      v20 = [NSArray arrayWithObjects:&v22 count:1];
      v15 = [v19 initWithRequestedItemIdentifiers:v20 reason:2];
    }

    else if (a4)
    {
      SSError();
      *a4 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    v14 = 0;
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = v9;
  v11 = v8;
  v12 = +[MPStoreItemMetadataRequestController optimalBatchSize];
  if (v10 > v12)
  {
    v13 = [v11 subarrayWithRange:{0, v12}];

    v11 = v13;
  }

  v14 = 1;
  v15 = [[MPStoreModelRequestConfiguration alloc] initWithRequestedItemIdentifiers:v11 reason:1];

  if (v15)
  {
LABEL_5:
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __100__MusicStoreCuratorPlaylistsRequestOperation_configurationForLoadingModelDataWithStoreURLBag_error___block_invoke;
    v21[3] = &unk_CEF550;
    v21[4] = self;
    v21[5] = v14;
    [(MusicStoreCuratorPlaylistsRequestOperation *)self dispatchSync:v21];
  }

LABEL_6:

  return v15;
}

- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __89__MusicStoreCuratorPlaylistsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke;
  v10[3] = &unk_CEF288;
  v10[4] = self;
  v10[5] = &v11;
  [(MusicStoreCuratorPlaylistsRequestOperation *)self dispatchSync:v10];
  v9 = v12[3];
  if (v9)
  {
    if (v9 == 1)
    {
      [(MusicStoreCuratorPlaylistsRequestOperation *)self _produceIncrementalResponseWithLoadedItemMetadataResponse:v8 completion:v7];
    }
  }

  else
  {
    [(MusicStoreCuratorPlaylistsRequestOperation *)self _produceInitialResponseWithLoadedItemMetadataResponse:v8 completion:v7];
  }

  _Block_object_dispose(&v11, 8);
}

id __89__MusicStoreCuratorPlaylistsRequestOperation_produceResponseWithLoadedOutput_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _requestType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_produceInitialResponseWithLoadedItemMetadataResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 itemIdentifiers];
  v9 = [v8 firstObject];

  if (!v9)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [v6 storeItemMetadataForItemIdentifier:v9];
  if (!v10)
  {
LABEL_10:
    v29 = SSError();
    v7[2](v7, 0, v29);

    goto LABEL_14;
  }

  v45 = v6;
  v11 = [(MusicStoreCuratorPlaylistsRequestOperation *)self request];
  v12 = [v11 sectionProperties];
  v13 = [v11 itemProperties];
  v14 = [[MPStoreModelCuratorBuilder alloc] initWithRequestedPropertySet:v12];
  v15 = [(MusicStoreCuratorPlaylistsRequestOperation *)self userIdentity];
  v16 = [v14 modelObjectWithStoreItemMetadata:v10 userIdentity:v15];

  if (!v16)
  {

    v6 = v45;
    goto LABEL_10;
  }

  v17 = v16;
  v41 = self;
  v42 = v9;
  v44 = v13;
  v18 = objc_alloc_init(MPMutableSectionedCollection);
  [v18 appendSection:v17];
  v19 = [[MusicStoreCuratorPlaylistsResponse alloc] initWithRequest:v11];
  v20 = [v10 playlistIdentifiers];
  v21 = [v20 count];
  v43 = v14;
  if (v21)
  {
    v22 = v21;
    v36 = v17;
    v39 = v12;
    v23 = v20;
    v24 = +[MPStoreItemMetadataRequestController optimalBatchSize];
    v25 = v22 > v24;
    v26 = v22 - v24;
    if (v25)
    {
      v27 = v24;
      v28 = [v23 subarrayWithRange:{0, v24}];

      v31 = [v23 subarrayWithRange:{v27, v26}];
      v23 = v28;
    }

    else
    {
      v31 = 0;
    }

    v32 = [MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController:v36];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = __111__MusicStoreCuratorPlaylistsRequestOperation__produceInitialResponseWithLoadedItemMetadataResponse_completion___block_invoke;
    v46[3] = &unk_CEF578;
    v46[4] = v41;
    v52 = v7;
    v30 = v44;
    v47 = v44;
    v48 = v23;
    v49 = v18;
    v33 = v19;
    v50 = v19;
    v51 = v31;
    v34 = v31;
    v35 = v23;
    [v32 requestStoreItemMetadataForReason:1 withItemIdentifiers:v35 responseHandler:v46];

    v19 = v33;
    v11 = v38;
    v12 = v40;
    v17 = v37;
  }

  else
  {
    [(MusicStoreCuratorPlaylistsResponse *)v19 setResults:v18];
    (v7)[2](v7, v19, 0);
    v30 = v13;
  }

  v6 = v45;
  v9 = v42;
LABEL_14:
}

void __111__MusicStoreCuratorPlaylistsRequestOperation__produceInitialResponseWithLoadedItemMetadataResponse_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v6)
    {
      (*(*(a1 + 80) + 16))();
    }

    else if ([v5 isFinalResponse])
    {
      v7 = [[MPStoreModelPlaylistBuilder alloc] initWithRequestedPropertySet:*(a1 + 40)];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = *(a1 + 48);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v5 storeItemMetadataForItemIdentifier:*(*(&v16 + 1) + 8 * i)];
            if (v13)
            {
              v14 = [*(a1 + 32) userIdentity];
              v15 = [v7 modelObjectWithStoreItemMetadata:v13 userIdentity:v14];

              if (v15)
              {
                [*(a1 + 56) appendItem:v15];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      [*(a1 + 64) setResults:*(a1 + 56)];
      [*(a1 + 64) setAdditionalPlaylistIdentifiers:*(a1 + 72)];
      (*(*(a1 + 80) + 16))();

      v6 = 0;
    }
  }
}

- (void)_produceIncrementalResponseWithLoadedItemMetadataResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v45 = a4;
  v49 = self;
  v7 = [(MusicStoreCuratorPlaylistsRequestOperation *)self request];
  v8 = [v7 previousResponse];
  v9 = [v8 additionalPlaylistIdentifiers];
  v10 = [v9 count];
  v11 = +[MPStoreItemMetadataRequestController optimalBatchSize];
  v12 = v9;
  v13 = v12;
  v14 = v10 > v11;
  v15 = v10 - v11;
  if (v14)
  {
    v16 = [v12 subarrayWithRange:{0, v11}];

    v41 = [v13 subarrayWithRange:{v11, v15}];
  }

  else
  {
    v41 = 0;
    v16 = v12;
  }

  v17 = [v8 request];
  v18 = [v17 itemProperties];
  v19 = v18;
  v44 = v7;
  v42 = v13;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [v7 itemProperties];
  }

  v21 = v20;

  v43 = v8;
  v22 = [v8 results];
  v23 = [v22 mutableCopy];

  v46 = [v23 numberOfSections] - 1;
  v47 = v23;
  v24 = [v23 numberOfItemsInSection:?];
  v25 = objc_alloc_init(NSMutableArray);
  v40 = v21;
  v26 = [[MPStoreModelPlaylistBuilder alloc] initWithRequestedPropertySet:v21];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v16;
  v27 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v53;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = [v6 storeItemMetadataForItemIdentifier:*(*(&v52 + 1) + 8 * i)];
        if (v31)
        {
          v32 = [(MusicStoreCuratorPlaylistsRequestOperation *)v49 userIdentity];
          v33 = [v26 modelObjectWithStoreItemMetadata:v31 userIdentity:v32];

          if (v33)
          {
            [v47 appendItem:v33];
            v34 = [NSIndexPath indexPathForItem:v24 inSection:v46];
            [v25 addObject:v34];

            ++v24;
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v28);
  }

  v35 = v25;
  if ([v25 count])
  {
    v36 = [MPChangeDetails alloc];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = __115__MusicStoreCuratorPlaylistsRequestOperation__produceIncrementalResponseWithLoadedItemMetadataResponse_completion___block_invoke;
    v50[3] = &unk_CEF5A0;
    v51 = v35;
    v37 = [v36 initWithBlock:v50];
  }

  else
  {
    v37 = 0;
  }

  v38 = v35;
  v39 = [[MusicStoreCuratorPlaylistsResponse alloc] initWithRequest:v44];
  [(MusicStoreCuratorPlaylistsResponse *)v39 setResults:v47];
  [(MusicStoreCuratorPlaylistsResponse *)v39 setChangeDetails:v37];
  [(MusicStoreCuratorPlaylistsResponse *)v39 setAdditionalPlaylistIdentifiers:v41];
  v45[2](v45, v39, 0);
}

@end