@interface MCDStorePlaybackItemsManager
- (id)_modelRequest;
@end

@implementation MCDStorePlaybackItemsManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  dataSource = [(_MCDContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(_MCDContentManager *)self dataSource];
    requestLabel = [dataSource2 requestLabel];
    [v3 setLabel:requestLabel];
  }

  dataSource3 = [(_MCDContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource4 = [(_MCDContentManager *)self dataSource];
    requestSectionKind = [dataSource4 requestSectionKind];
    [v3 setSectionKind:requestSectionKind];
  }

  dataSource5 = [(_MCDContentManager *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    dataSource6 = [(_MCDContentManager *)self dataSource];
    requestSectionProperties = [dataSource6 requestSectionProperties];
    [v3 setSectionProperties:requestSectionProperties];
  }

  dataSource7 = [(_MCDContentManager *)self dataSource];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    dataSource8 = [(_MCDContentManager *)self dataSource];
    requestItemKind = [dataSource8 requestItemKind];
    [v3 setItemKind:requestItemKind];
  }

  dataSource9 = [(_MCDContentManager *)self dataSource];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    dataSource10 = [(_MCDContentManager *)self dataSource];
    requestItemProperties = [dataSource10 requestItemProperties];
    [v3 setItemProperties:requestItemProperties];
  }

  dataSource11 = [(_MCDContentManager *)self dataSource];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    dataSource12 = [(_MCDContentManager *)self dataSource];
    storeIDs = [dataSource12 storeIDs];
    [v3 setStoreIDs:storeIDs];
  }

  return v3;
}

@end