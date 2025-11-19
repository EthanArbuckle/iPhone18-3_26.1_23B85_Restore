@interface MCDStorePlaybackItemsManager
- (id)_modelRequest;
@end

@implementation MCDStorePlaybackItemsManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v4 = [(_MCDContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_MCDContentManager *)self dataSource];
    v7 = [v6 requestLabel];
    [v3 setLabel:v7];
  }

  v8 = [(_MCDContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_MCDContentManager *)self dataSource];
    v11 = [v10 requestSectionKind];
    [v3 setSectionKind:v11];
  }

  v12 = [(_MCDContentManager *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(_MCDContentManager *)self dataSource];
    v15 = [v14 requestSectionProperties];
    [v3 setSectionProperties:v15];
  }

  v16 = [(_MCDContentManager *)self dataSource];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(_MCDContentManager *)self dataSource];
    v19 = [v18 requestItemKind];
    [v3 setItemKind:v19];
  }

  v20 = [(_MCDContentManager *)self dataSource];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(_MCDContentManager *)self dataSource];
    v23 = [v22 requestItemProperties];
    [v3 setItemProperties:v23];
  }

  v24 = [(_MCDContentManager *)self dataSource];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(_MCDContentManager *)self dataSource];
    v27 = [v26 storeIDs];
    [v3 setStoreIDs:v27];
  }

  return v3;
}

@end