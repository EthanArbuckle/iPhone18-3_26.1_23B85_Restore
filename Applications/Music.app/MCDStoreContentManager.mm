@interface MCDStoreContentManager
- (id)_modelRequest;
- (id)_operationForRequest:(id)a3;
@end

@implementation MCDStoreContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MusicStoreCollectionSongsRequest);
  v4 = [(_MCDContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_MCDContentManager *)self dataSource];
    v7 = [v6 requestSectionKind];
    [(MusicStoreCollectionSongsRequest *)v3 setSectionKind:v7];
  }

  v8 = [(_MCDContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_MCDContentManager *)self dataSource];
    v11 = [v10 requestSectionProperties];
    [(MusicStoreCollectionSongsRequest *)v3 setSectionProperties:v11];
  }

  v12 = [(_MCDContentManager *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(_MCDContentManager *)self dataSource];
    v15 = [v14 requestItemKind];
    [(MusicStoreCollectionSongsRequest *)v3 setItemKind:v15];
  }

  v16 = [(_MCDContentManager *)self dataSource];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(_MCDContentManager *)self dataSource];
    v19 = [v18 requestItemProperties];
    [(MusicStoreCollectionSongsRequest *)v3 setItemProperties:v19];
  }

  v20 = [(_MCDContentManager *)self dataSource];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(_MCDContentManager *)self dataSource];
    v23 = [v22 itemSortDescriptors];
    [(MusicStoreCollectionSongsRequest *)v3 setItemSortDescriptors:v23];
  }

  v24 = [(_MCDContentManager *)self dataSource];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(_MCDContentManager *)self dataSource];
    v27 = [v26 requestIdentifierSet];
    [(MusicStoreCollectionSongsRequest *)v3 setCollectionIdentifiers:v27];
  }

  v28 = [(_MCDContentManager *)self dataSource];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = [(_MCDContentManager *)self dataSource];
    v31 = [v30 requestLabel];
    [(MusicStoreCollectionSongsRequest *)v3 setLabel:v31];
  }

  return v3;
}

- (id)_operationForRequest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F2504;
  v5[3] = &unk_101098280;
  v5[4] = self;
  v3 = [a3 newOperationWithResponseHandler:v5];

  return v3;
}

@end