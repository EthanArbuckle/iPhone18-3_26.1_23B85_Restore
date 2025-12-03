@interface MCDStoreContentManager
- (id)_modelRequest;
- (id)_operationForRequest:(id)request;
@end

@implementation MCDStoreContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MusicStoreCollectionSongsRequest);
  dataSource = [(_MCDContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(_MCDContentManager *)self dataSource];
    requestSectionKind = [dataSource2 requestSectionKind];
    [(MusicStoreCollectionSongsRequest *)v3 setSectionKind:requestSectionKind];
  }

  dataSource3 = [(_MCDContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource4 = [(_MCDContentManager *)self dataSource];
    requestSectionProperties = [dataSource4 requestSectionProperties];
    [(MusicStoreCollectionSongsRequest *)v3 setSectionProperties:requestSectionProperties];
  }

  dataSource5 = [(_MCDContentManager *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    dataSource6 = [(_MCDContentManager *)self dataSource];
    requestItemKind = [dataSource6 requestItemKind];
    [(MusicStoreCollectionSongsRequest *)v3 setItemKind:requestItemKind];
  }

  dataSource7 = [(_MCDContentManager *)self dataSource];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    dataSource8 = [(_MCDContentManager *)self dataSource];
    requestItemProperties = [dataSource8 requestItemProperties];
    [(MusicStoreCollectionSongsRequest *)v3 setItemProperties:requestItemProperties];
  }

  dataSource9 = [(_MCDContentManager *)self dataSource];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    dataSource10 = [(_MCDContentManager *)self dataSource];
    itemSortDescriptors = [dataSource10 itemSortDescriptors];
    [(MusicStoreCollectionSongsRequest *)v3 setItemSortDescriptors:itemSortDescriptors];
  }

  dataSource11 = [(_MCDContentManager *)self dataSource];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    dataSource12 = [(_MCDContentManager *)self dataSource];
    requestIdentifierSet = [dataSource12 requestIdentifierSet];
    [(MusicStoreCollectionSongsRequest *)v3 setCollectionIdentifiers:requestIdentifierSet];
  }

  dataSource13 = [(_MCDContentManager *)self dataSource];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    dataSource14 = [(_MCDContentManager *)self dataSource];
    requestLabel = [dataSource14 requestLabel];
    [(MusicStoreCollectionSongsRequest *)v3 setLabel:requestLabel];
  }

  return v3;
}

- (id)_operationForRequest:(id)request
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F2504;
  v5[3] = &unk_101098280;
  v5[4] = self;
  v3 = [request newOperationWithResponseHandler:v5];

  return v3;
}

@end