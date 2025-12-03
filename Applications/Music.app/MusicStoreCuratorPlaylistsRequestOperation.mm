@interface MusicStoreCuratorPlaylistsRequestOperation
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (void)_produceIncrementalResponseWithLoadedItemMetadataResponse:(id)response completion:(id)completion;
- (void)_produceInitialResponseWithLoadedItemMetadataResponse:(id)response completion:(id)completion;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MusicStoreCuratorPlaylistsRequestOperation

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  request = [(MusicStoreCuratorPlaylistsRequestOperation *)self request];
  previousResponse = [request previousResponse];
  additionalPlaylistIdentifiers = [previousResponse additionalPlaylistIdentifiers];
  v9 = [additionalPlaylistIdentifiers count];
  if (!v9)
  {
    v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [request curatorStoreAdamID]);
    v18 = MPStoreItemMetadataStringNormalizeStoreIDValue();

    if (v18)
    {
      v19 = [MPStoreModelRequestConfiguration alloc];
      v22 = v18;
      v20 = [NSArray arrayWithObjects:&v22 count:1];
      v15 = [v19 initWithRequestedItemIdentifiers:v20 reason:2];
    }

    else if (error)
    {
      SSError();
      *error = v15 = 0;
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
  v11 = additionalPlaylistIdentifiers;
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
    v21[2] = sub_1001079BC;
    v21[3] = &unk_101098180;
    v21[4] = self;
    v21[5] = v14;
    [(MusicStoreCuratorPlaylistsRequestOperation *)self dispatchSync:v21];
  }

LABEL_6:

  return v15;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  outputCopy = output;
  completionCopy = completion;
  v8 = outputCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100107AE8;
  v10[3] = &unk_1010988A8;
  v10[4] = self;
  v10[5] = &v11;
  [(MusicStoreCuratorPlaylistsRequestOperation *)self dispatchSync:v10];
  v9 = v12[3];
  if (v9)
  {
    if (v9 == 1)
    {
      [(MusicStoreCuratorPlaylistsRequestOperation *)self _produceIncrementalResponseWithLoadedItemMetadataResponse:v8 completion:completionCopy];
    }
  }

  else
  {
    [(MusicStoreCuratorPlaylistsRequestOperation *)self _produceInitialResponseWithLoadedItemMetadataResponse:v8 completion:completionCopy];
  }

  _Block_object_dispose(&v11, 8);
}

- (void)_produceInitialResponseWithLoadedItemMetadataResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  itemIdentifiers = [responseCopy itemIdentifiers];
  firstObject = [itemIdentifiers firstObject];

  if (!firstObject)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [responseCopy storeItemMetadataForItemIdentifier:firstObject];
  if (!v10)
  {
LABEL_10:
    v29 = SSError();
    completionCopy[2](completionCopy, 0, v29);

    goto LABEL_14;
  }

  v45 = responseCopy;
  request = [(MusicStoreCuratorPlaylistsRequestOperation *)self request];
  sectionProperties = [request sectionProperties];
  itemProperties = [request itemProperties];
  v14 = [[MPStoreModelCuratorBuilder alloc] initWithRequestedPropertySet:sectionProperties];
  userIdentity = [(MusicStoreCuratorPlaylistsRequestOperation *)self userIdentity];
  v16 = [v14 modelObjectWithStoreItemMetadata:v10 userIdentity:userIdentity];

  if (!v16)
  {

    responseCopy = v45;
    goto LABEL_10;
  }

  v17 = v16;
  selfCopy = self;
  v42 = firstObject;
  v44 = itemProperties;
  v18 = objc_alloc_init(MPMutableSectionedCollection);
  [v18 appendSection:v17];
  v19 = [[MusicStoreCuratorPlaylistsResponse alloc] initWithRequest:request];
  playlistIdentifiers = [v10 playlistIdentifiers];
  v21 = [playlistIdentifiers count];
  v43 = v14;
  if (v21)
  {
    v22 = v21;
    v36 = v17;
    v39 = sectionProperties;
    v23 = playlistIdentifiers;
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
    v46[2] = sub_100107EA8;
    v46[3] = &unk_1010988D0;
    v46[4] = selfCopy;
    v52 = completionCopy;
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
    request = v38;
    sectionProperties = v40;
    v17 = v37;
  }

  else
  {
    [(MusicStoreCuratorPlaylistsResponse *)v19 setResults:v18];
    (completionCopy)[2](completionCopy, v19, 0);
    v30 = itemProperties;
  }

  responseCopy = v45;
  firstObject = v42;
LABEL_14:
}

- (void)_produceIncrementalResponseWithLoadedItemMetadataResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  selfCopy = self;
  request = [(MusicStoreCuratorPlaylistsRequestOperation *)self request];
  previousResponse = [request previousResponse];
  additionalPlaylistIdentifiers = [previousResponse additionalPlaylistIdentifiers];
  v10 = [additionalPlaylistIdentifiers count];
  v11 = +[MPStoreItemMetadataRequestController optimalBatchSize];
  v12 = additionalPlaylistIdentifiers;
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

  request2 = [previousResponse request];
  itemProperties = [request2 itemProperties];
  v19 = itemProperties;
  v44 = request;
  v42 = v13;
  if (itemProperties)
  {
    itemProperties2 = itemProperties;
  }

  else
  {
    itemProperties2 = [request itemProperties];
  }

  v21 = itemProperties2;

  v43 = previousResponse;
  results = [previousResponse results];
  v23 = [results mutableCopy];

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

        v31 = [responseCopy storeItemMetadataForItemIdentifier:*(*(&v52 + 1) + 8 * i)];
        if (v31)
        {
          userIdentity = [(MusicStoreCuratorPlaylistsRequestOperation *)selfCopy userIdentity];
          v33 = [v26 modelObjectWithStoreItemMetadata:v31 userIdentity:userIdentity];

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
    v50[2] = sub_1001084A8;
    v50[3] = &unk_1010988F8;
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
  completionCopy[2](completionCopy, v39, 0);
}

@end