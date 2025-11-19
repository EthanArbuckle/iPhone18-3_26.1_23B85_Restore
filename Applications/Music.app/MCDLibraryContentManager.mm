@interface MCDLibraryContentManager
- (id)_modelRequest;
- (void)setSortingPreference:(id)a3;
@end

@implementation MCDLibraryContentManager

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelLibraryRequest);
  v4 = [(_MCDContentManager *)self dataSource];
  v5 = [v4 requestItemKind];
  [v3 setItemKind:v5];

  v6 = [(_MCDContentManager *)self dataSource];
  v7 = [v6 requestSectionProperties];
  [v3 setSectionProperties:v7];

  v8 = [(_MCDContentManager *)self dataSource];
  v9 = [v8 requestItemProperties];
  [v3 setItemProperties:v9];

  if ([(_MCDContentManager *)self limitedUI])
  {
    [v3 setContentRange:{0, 12}];
  }

  else
  {
    v10 = [(_MCDContentManager *)self dataSource];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(_MCDContentManager *)self dataSource];
      v13 = [v12 contentRange];
      [v3 setContentRange:{v13, v14}];
    }
  }

  v15 = [(_MCDContentManager *)self dataSource];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(_MCDContentManager *)self dataSource];
    v18 = [v17 requestLabel];
    [v3 setLabel:v18];
  }

  v19 = [(_MCDContentManager *)self dataSource];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(_MCDContentManager *)self dataSource];
    v22 = [v21 itemSortDescriptors];
    [v3 setItemSortDescriptors:v22];
  }

  v23 = [(_MCDContentManager *)self dataSource];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(_MCDContentManager *)self dataSource];
    v26 = [v25 scopedContainers];
    [v3 setScopedContainers:v26];
  }

  v27 = [(_MCDContentManager *)self dataSource];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(_MCDContentManager *)self dataSource];
    v30 = [v29 allowedSectionIdentifiers];
    [v3 setAllowedSectionIdentifiers:v30];
  }

  v31 = [(_MCDContentManager *)self dataSource];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = [(_MCDContentManager *)self dataSource];
    v34 = [v33 requestSectionKind];
    [v3 setSectionKind:v34];
  }

  if ([(_MCDContentManager *)self showLocalContent])
  {
    [v3 setFilteringOptions:{objc_msgSend(v3, "filteringOptions") | 2}];
  }

  if ([(_MCDContentManager *)self showFavoriteContent])
  {
    v35 = [(_MCDContentManager *)self dataSource];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = [(_MCDContentManager *)self dataSource];
      [v3 setFilteringOptions:{objc_msgSend(v3, "filteringOptions") | objc_msgSend(v37, "favoriteFilteringOptions")}];
    }
  }

  v38 = [(_MCDContentManager *)self dataSource];
  v39 = objc_opt_respondsToSelector();

  if (v39)
  {
    v40 = [(_MCDContentManager *)self dataSource];
    [v3 setFilteringOptions:{objc_msgSend(v3, "filteringOptions") | objc_msgSend(v40, "contentRestrictionsFilteringOptions")}];
  }

  return v3;
}

- (void)setSortingPreference:(id)a3
{
  v4 = a3;
  if (self->_sortingPreference != v4)
  {
    self->_sortingPreference = v4;
    v8 = v4;
    v5 = [(_MCDContentManager *)self dataSource];
    v6 = objc_opt_respondsToSelector();

    v4 = v8;
    if (v6)
    {
      v7 = [(_MCDContentManager *)self dataSource];
      [v7 setSortingPreference:v8];

      [(_MCDContentManager *)self setLastReceivedResponse:0];
      v4 = v8;
    }
  }
}

@end