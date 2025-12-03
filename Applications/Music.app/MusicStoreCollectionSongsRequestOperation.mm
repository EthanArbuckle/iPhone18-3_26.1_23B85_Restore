@interface MusicStoreCollectionSongsRequestOperation
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MusicStoreCollectionSongsRequestOperation

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  request = [(MusicStoreCollectionSongsRequestOperation *)self request];
  collectionIdentifiers = [request collectionIdentifiers];
  universalStore = [collectionIdentifiers universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  if ([globalPlaylistID length])
  {
    if (globalPlaylistID)
    {
LABEL_3:
      v9 = [MPStoreModelRequestConfiguration alloc];
      v16 = globalPlaylistID;
      v10 = [NSArray arrayWithObjects:&v16 count:1];
      v11 = [v9 initWithRequestedItemIdentifiers:v10 reason:2];

      goto LABEL_8;
    }
  }

  else
  {
    universalStore2 = [collectionIdentifiers universalStore];
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [universalStore2 adamID]);
    v14 = MPStoreItemMetadataStringNormalizeStoreIDValue();

    globalPlaylistID = v14;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  if (error)
  {
    SSError();
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  outputCopy = output;
  completionCopy = completion;
  itemIdentifiers = [outputCopy itemIdentifiers];
  firstObject = [itemIdentifiers firstObject];

  if (!firstObject)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v10 = [outputCopy storeItemMetadataForItemIdentifier:firstObject];
  if (!v10)
  {
LABEL_8:
    request = SSError();
    completionCopy[2](completionCopy, 0, request);
    goto LABEL_11;
  }

  request = [(MusicStoreCollectionSongsRequestOperation *)self request];
  sectionProperties = [request sectionProperties];
  itemProperties = [request itemProperties];
  v13 = [[MPModelStoreBrowseContentItemBuilder alloc] initWithRequestedPropertySet:sectionProperties];
  userIdentity = [(MusicStoreCollectionSongsRequestOperation *)self userIdentity];
  v15 = [v13 modelObjectWithStoreItemMetadata:v10 userIdentity:userIdentity];

  if (!v15)
  {

    goto LABEL_8;
  }

  v25 = v13;
  v16 = objc_alloc_init(MPMutableSectionedCollection);
  [v16 appendSection:v15];
  v17 = [[MusicStoreCollectionSongsResponse alloc] initWithRequest:request];
  childrenStoreIDs = [v10 childrenStoreIDs];
  if ([childrenStoreIDs count])
  {
    v24 = v17;
    v18 = v16;
    v19 = childrenStoreIDs;
    +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
    v20 = v23 = sectionProperties;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000DC880;
    v28[3] = &unk_101097D88;
    v28[4] = self;
    v33 = completionCopy;
    v29 = itemProperties;
    v30 = v19;
    v31 = v18;
    v32 = v24;
    v21 = v19;
    v16 = v18;
    v17 = v24;
    v22 = v21;
    [v20 requestStoreItemMetadataForReason:1 withItemIdentifiers:v21 responseHandler:v28];

    sectionProperties = v23;
  }

  else
  {
    [(MusicStoreCollectionSongsResponse *)v17 setResults:v16];
    (completionCopy)[2](completionCopy, v17, 0);
  }

LABEL_11:
}

@end