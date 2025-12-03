@interface MCDLibraryContentManager
- (id)_modelRequest;
- (void)setSortingPreference:(id)preference;
@end

@implementation MCDLibraryContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelLibraryRequest);
  dataSource = [(_MCDContentManager *)self dataSource];
  requestItemKind = [dataSource requestItemKind];
  [v3 setItemKind:requestItemKind];

  dataSource2 = [(_MCDContentManager *)self dataSource];
  requestSectionProperties = [dataSource2 requestSectionProperties];
  [v3 setSectionProperties:requestSectionProperties];

  dataSource3 = [(_MCDContentManager *)self dataSource];
  requestItemProperties = [dataSource3 requestItemProperties];
  [v3 setItemProperties:requestItemProperties];

  if ([(_MCDContentManager *)self limitedUI])
  {
    [v3 setContentRange:{0, 12}];
  }

  else
  {
    dataSource4 = [(_MCDContentManager *)self dataSource];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      dataSource5 = [(_MCDContentManager *)self dataSource];
      contentRange = [dataSource5 contentRange];
      [v3 setContentRange:{contentRange, v14}];
    }
  }

  dataSource6 = [(_MCDContentManager *)self dataSource];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    dataSource7 = [(_MCDContentManager *)self dataSource];
    requestLabel = [dataSource7 requestLabel];
    [v3 setLabel:requestLabel];
  }

  dataSource8 = [(_MCDContentManager *)self dataSource];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    dataSource9 = [(_MCDContentManager *)self dataSource];
    itemSortDescriptors = [dataSource9 itemSortDescriptors];
    [v3 setItemSortDescriptors:itemSortDescriptors];
  }

  dataSource10 = [(_MCDContentManager *)self dataSource];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    dataSource11 = [(_MCDContentManager *)self dataSource];
    scopedContainers = [dataSource11 scopedContainers];
    [v3 setScopedContainers:scopedContainers];
  }

  dataSource12 = [(_MCDContentManager *)self dataSource];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    dataSource13 = [(_MCDContentManager *)self dataSource];
    allowedSectionIdentifiers = [dataSource13 allowedSectionIdentifiers];
    [v3 setAllowedSectionIdentifiers:allowedSectionIdentifiers];
  }

  dataSource14 = [(_MCDContentManager *)self dataSource];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    dataSource15 = [(_MCDContentManager *)self dataSource];
    requestSectionKind = [dataSource15 requestSectionKind];
    [v3 setSectionKind:requestSectionKind];
  }

  if ([(_MCDContentManager *)self showLocalContent])
  {
    [v3 setFilteringOptions:{objc_msgSend(v3, "filteringOptions") | 2}];
  }

  if ([(_MCDContentManager *)self showFavoriteContent])
  {
    dataSource16 = [(_MCDContentManager *)self dataSource];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      dataSource17 = [(_MCDContentManager *)self dataSource];
      [v3 setFilteringOptions:{objc_msgSend(v3, "filteringOptions") | objc_msgSend(dataSource17, "favoriteFilteringOptions")}];
    }
  }

  dataSource18 = [(_MCDContentManager *)self dataSource];
  v39 = objc_opt_respondsToSelector();

  if (v39)
  {
    dataSource19 = [(_MCDContentManager *)self dataSource];
    [v3 setFilteringOptions:{objc_msgSend(v3, "filteringOptions") | objc_msgSend(dataSource19, "contentRestrictionsFilteringOptions")}];
  }

  return v3;
}

- (void)setSortingPreference:(id)preference
{
  preferenceCopy = preference;
  if (self->_sortingPreference != preferenceCopy)
  {
    self->_sortingPreference = preferenceCopy;
    v8 = preferenceCopy;
    dataSource = [(_MCDContentManager *)self dataSource];
    v6 = objc_opt_respondsToSelector();

    preferenceCopy = v8;
    if (v6)
    {
      dataSource2 = [(_MCDContentManager *)self dataSource];
      [dataSource2 setSortingPreference:v8];

      [(_MCDContentManager *)self setLastReceivedResponse:0];
      preferenceCopy = v8;
    }
  }
}

@end