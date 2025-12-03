@interface WebBookmark(SafariServicesExtras)
+ (id)_sf_lastSelectedFolderIn:()SafariServicesExtras;
+ (uint64_t)_sf_operationForDropSession:()SafariServicesExtras destinationSubtype:;
+ (void)_sf_webBookmarksFromDropSession:()SafariServicesExtras completionHandler:;
- (id)_sf_contextMenuUsingCollection:()SafariServicesExtras tabGroupActionProvider:additionalActions:analyticsPayload:withUserInfo:handler:;
- (id)_sf_icon;
- (id)_sf_iconKeyColor;
- (id)_sf_managedBookmark;
- (void)_sf_setIconKeyColor:()SafariServicesExtras;
@end

@implementation WebBookmark(SafariServicesExtras)

- (id)_sf_iconKeyColor
{
  localAttributes = [self localAttributes];
  v2 = [localAttributes objectForKeyedSubscript:@"IconKeyColor"];

  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"R"];
    [v3 doubleValue];
    v5 = v4;

    v6 = [v2 objectForKeyedSubscript:@"G"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v2 objectForKeyedSubscript:@"B"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v2 objectForKeyedSubscript:@"A"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [MEMORY[0x1E69DC888] colorWithRed:v5 green:v8 blue:v11 alpha:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_sf_setIconKeyColor:()SafariServicesExtras
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  localAttributes = [self localAttributes];
  v6 = [localAttributes mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = dictionary;

  if (v4)
  {
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    [v4 getRed:&v18 green:&v17 blue:&v16 alpha:&v15];
    v19[0] = @"R";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v20[0] = v10;
    v19[1] = @"G";
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v20[1] = v11;
    v19[2] = @"B";
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    v20[2] = v12;
    v19[3] = @"A";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v20[3] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    [v9 setObject:v14 forKeyedSubscript:@"IconKeyColor"];
  }

  else
  {
    [v9 removeObjectForKey:@"IconKeyColor"];
  }

  [self setLocalAttributes:v9];
}

- (id)_sf_icon
{
  iconData = [self iconData];
  if ([iconData length])
  {
    v2 = [MEMORY[0x1E69DCAB8] imageWithData:iconData];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_sf_lastSelectedFolderIn:()SafariServicesExtras
{
  v3 = a3;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [safari_browserDefaults stringForKey:*MEMORY[0x1E69B1F98]];

  if ([v5 isEqualToString:*MEMORY[0x1E69B1FA0]])
  {
    favoritesFolder = [v3 favoritesFolder];
  }

  else
  {
    if (!v5)
    {
      bookmarksBarBookmark = 0;
      goto LABEL_6;
    }

    favoritesFolder = [v3 bookmarkWithUUID:v5];
  }

  bookmarksBarBookmark = favoritesFolder;
LABEL_6:
  if ([bookmarksBarBookmark isBookmarksMenuFolder] && (objc_msgSend(v3, "listWithID:", objc_msgSend(bookmarksBarBookmark, "identifier")), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "bookmarkCount"), v8, !v9))
  {
  }

  else if (bookmarksBarBookmark)
  {
    goto LABEL_13;
  }

  bookmarksBarBookmark = [v3 bookmarksBarBookmark];
LABEL_13:

  return bookmarksBarBookmark;
}

+ (uint64_t)_sf_operationForDropSession:()SafariServicesExtras destinationSubtype:
{
  v32 = *MEMORY[0x1E69E9840];
  [a3 items];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {

    v23 = 0;
    v9 = 0;
LABEL_25:
    v24 = v9 != 0 && v23;
    if (v9 > 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v24;
    }

    goto LABEL_30;
  }

  v7 = v6;
  v8 = 0;
  v26 = 0;
  v9 = 0;
  v10 = *v28;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      _sf_localTabGroup = [v12 _sf_localTabGroup];

      if (_sf_localTabGroup)
      {
        v22 = 1;
LABEL_29:

        goto LABEL_30;
      }

      _sf_localBookmark = [v12 _sf_localBookmark];
      v15 = _sf_localBookmark;
      if (_sf_localBookmark)
      {
        if (a4 == 1 && ([_sf_localBookmark isFolder] & 1) != 0)
        {

          v22 = 0;
          goto LABEL_29;
        }

        ++v9;
        v8 = v8 || [v15 subtype] != a4;
      }

      else
      {
        itemProvider = [v12 itemProvider];
        v17 = [itemProvider canLoadObjectOfClass:objc_opt_class()];

        v26 += v17;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (v9 != 1 || v26)
  {
    v23 = v26 != 0;
    if (!v9 && v26)
    {
      v22 = 2;
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  firstObject = [v5 firstObject];
  _sf_localBookmark2 = [firstObject _sf_localBookmark];
  isReadingListItem = [_sf_localBookmark2 isReadingListItem];

  v21 = 2;
  if (!v8)
  {
    v21 = 3;
  }

  if (isReadingListItem)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

LABEL_30:

  return v22;
}

+ (void)_sf_webBookmarksFromDropSession:()SafariServicesExtras completionHandler:
{
  v5 = a4;
  v6 = MEMORY[0x1E69B1C38];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__WebBookmark_SafariServicesExtras___sf_webBookmarksFromDropSession_completionHandler___block_invoke;
  v8[3] = &unk_1E8490060;
  v9 = v5;
  v7 = v5;
  [v6 dropSession:a3 loadObjectsUsingLocalObjectLoader:localObjectLoader objectLoader:objectLoader completionHandler:v8];
}

- (id)_sf_contextMenuUsingCollection:()SafariServicesExtras tabGroupActionProvider:additionalActions:analyticsPayload:withUserInfo:handler:
{
  v134[1] = *MEMORY[0x1E69E9840];
  v94 = a3;
  v87 = a4;
  v88 = a5;
  v86 = a6;
  v89 = a7;
  v85 = a8;
  objc_initWeak(&location, v85);
  array = [MEMORY[0x1E695DF70] array];
  address = [self address];
  containsLeafBookmark = [v94 bookmarkContainsLeafBookmark:self];
  _sf_managedBookmark = [self _sf_managedBookmark];
  if (!((_sf_managedBookmark == 0) | containsLeafBookmark & 1))
  {
    containsLeafBookmark = [_sf_managedBookmark containsLeafBookmark];
  }

  if (([self isFolder] & 1) != 0 || !objc_msgSend(address, "length"))
  {
    if (([self isFolder] & containsLeafBookmark) == 1)
    {
      v19 = MEMORY[0x1E69DC628];
      v20 = _WBSLocalizedString();
      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_2;
      v128[3] = &unk_1E84900A8;
      v128[4] = self;
      v129 = v94;
      v22 = [v19 actionWithTitle:v20 image:v21 identifier:0 handler:v128];
      [array addObject:v22];
    }
  }

  else
  {
    v15 = MEMORY[0x1E69DC628];
    v16 = _WBSLocalizedString();
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke;
    v130[3] = &unk_1E848F480;
    v131 = address;
    v18 = [v15 actionWithTitle:v16 image:v17 identifier:0 handler:v130];
    [array addObject:v18];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  if (containsLeafBookmark)
  {
    isFolder = [self isFolder];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_4;
    aBlock[3] = &__block_descriptor_33_e18___NSString_16__0q8l;
    v84 = isFolder;
    v127 = isFolder;
    v24 = _Block_copy(aBlock);
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_5;
    v121[3] = &unk_1E8490118;
    v25 = v87;
    v122 = v25;
    selfCopy = self;
    objc_copyWeak(&v125, &location);
    v124 = v89;
    v26 = _Block_copy(v121);
    v27 = MEMORY[0x1E69DC628];
    v28 = v24[2](v24, 0);
    v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_7;
    v119[3] = &unk_1E8490140;
    v30 = v26;
    v120 = v30;
    v31 = [v27 actionWithTitle:v28 image:v29 identifier:0 handler:v119];
    [array2 addObject:v31];

    if (v25)
    {
      managedBookmarkUUID = [self managedBookmarkUUID];

      if (managedBookmarkUUID)
      {
        managedBookmarkUUID = [self _sf_managedBookmark];
        allDescendantsAsWebBookmarks = [managedBookmarkUUID allDescendantsAsWebBookmarks];
      }

      else
      {
        allDescendantsAsWebBookmarks = [v94 descendantsOfBookmarkFolder:self];
      }

      v34 = [allDescendantsAsWebBookmarks count];
      v35 = MEMORY[0x1E695DFF8];
      if (v34)
      {
        managedBookmarkUUID = [allDescendantsAsWebBookmarks objectAtIndexedSubscript:0];
        address2 = [managedBookmarkUUID address];
      }

      else
      {
        address2 = address;
      }

      v37 = [v35 URLWithString:address2];
      if (v34)
      {
      }

      if (!v84 || ([self isBookmarksBarFolder] & 1) != 0 || (objc_msgSend(self, "isBookmarksMenuFolder") & 1) != 0)
      {
        localizedTitle = 0;
      }

      else
      {
        localizedTitle = [self localizedTitle];
      }

      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_8;
      v116[3] = &unk_1E8490168;
      v117 = v30;
      v118 = v34;
      v39 = [v25 openInTabGroupMenuWithNewTabGroupName:localizedTitle URL:v37 descendantCount:v34 handler:v116];
      [array2 addObject:v39];
    }

    objc_destroyWeak(&v125);
  }

  v40 = [v88 mutableCopy];
  v41 = [v94 bookmarkWithID:{objc_msgSend(self, "parentID")}];
  subtype = [self subtype];
  rootBookmark = [v94 rootBookmark];
  v44 = [self isEqualToBookmark:rootBookmark];

  isEditable = [self isEditable];
  if (subtype == 5)
  {
    v46 = 0;
  }

  else
  {
    v46 = isEditable;
  }

  if (v46 == 1 && ([v41 isWebFilterAllowedSitesFolder] & 1) == 0 && ((objc_msgSend(self, "isReadingListItem") | v44) & 1) == 0)
  {
    v47 = MEMORY[0x1E69DC628];
    v48 = _WBSLocalizedString();
    v49 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.pencil"];
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_9;
    v113[3] = &unk_1E848F4F8;
    objc_copyWeak(&v115, &location);
    v113[4] = self;
    v114 = v89;
    v50 = [v47 actionWithTitle:v48 image:v49 identifier:0 handler:v113];

    [v50 setAccessibilityIdentifier:@"ContextMenuEditButton"];
    [v40 addObject:v50];

    objc_destroyWeak(&v115);
  }

  v51 = objc_loadWeakRetained(&location);
  v52 = objc_opt_respondsToSelector();

  if (v52)
  {
    if (([self isFolder] & 1) != 0 || !objc_msgSend(address, "length"))
    {
      if (([self isFolder] & containsLeafBookmark) == 1)
      {
        v57 = MEMORY[0x1E69DC628];
        v58 = _WBSLocalizedString();
        v59 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_11;
        v105[3] = &unk_1E84901B8;
        v105[4] = self;
        v106 = v94;
        objc_copyWeak(&v108, &location);
        v107 = v89;
        v60 = [v57 actionWithTitle:v58 image:v59 identifier:0 handler:v105];
        [v40 addObject:v60];

        objc_destroyWeak(&v108);
      }
    }

    else
    {
      v53 = MEMORY[0x1E69DC628];
      v54 = _WBSLocalizedString();
      v55 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_10;
      v109[3] = &unk_1E8490190;
      objc_copyWeak(&v112, &location);
      v109[4] = self;
      v110 = address;
      v111 = v89;
      v56 = [v53 actionWithTitle:v54 image:v55 identifier:0 handler:v109];
      [v40 addObject:v56];

      objc_destroyWeak(&v112);
    }
  }

  if ([self isDeletable] && ((objc_msgSend(v41, "isWebFilterAllowedSitesFolder") | v44) & 1) == 0)
  {
    v62 = MEMORY[0x1E69DC628];
    if (subtype == 5)
    {
      v68 = _WBSLocalizedString();
      v69 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_13;
      v101[3] = &unk_1E8490190;
      v65 = &v104;
      objc_copyWeak(&v104, &location);
      v101[4] = self;
      v70 = v89;
      v102 = v70;
      v103 = v86;
      v71 = [v62 actionWithTitle:v68 image:v69 identifier:0 handler:v101];

      [v40 addObject:v71];
      if ([MEMORY[0x1E69C8880] isInternalInstall] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v72 = MEMORY[0x1E69DC628];
        v73 = _WBSLocalizedString();
        v74 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_14;
        v98[3] = &unk_1E848F4F8;
        objc_copyWeak(&v100, &location);
        v98[4] = self;
        v99 = v70;
        v75 = [v72 actionWithTitle:v73 image:v74 identifier:0 handler:v98];

        v134[0] = v75;
        v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:1];

        objc_destroyWeak(&v100);
      }

      else
      {
        v61 = 0;
      }

      v67 = &v102;
      v66 = v103;
    }

    else
    {
      v63 = _WBSLocalizedString();
      v64 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_15;
      v95[3] = &unk_1E848F4F8;
      v65 = &v97;
      objc_copyWeak(&v97, &location);
      v95[4] = self;
      v96 = v89;
      v66 = [v62 actionWithTitle:v63 image:v64 identifier:0 handler:v95];

      [v66 setAttributes:2];
      [v40 addObject:v66];
      v61 = 0;
      v67 = &v96;
    }

    objc_destroyWeak(v65);
  }

  else
  {
    v61 = 0;
  }

  v76 = MEMORY[0x1E69DCC60];
  v77 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:array];
  v133[0] = v77;
  v78 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:array2];
  v133[1] = v78;
  v79 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v40];
  v133[2] = v79;
  v80 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v61];
  v133[3] = v80;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:4];
  v82 = [v76 menuWithTitle:&stru_1F4FE9E38 children:v81];

  objc_destroyWeak(&location);

  return v82;
}

- (id)_sf_managedBookmark
{
  managedBookmarkUUID = [self managedBookmarkUUID];

  if (managedBookmarkUUID)
  {
    mEMORY[0x1E69B1B38] = [MEMORY[0x1E69B1B38] sharedController];
    topLevelManagedBookmarkFolder = [mEMORY[0x1E69B1B38] topLevelManagedBookmarkFolder];
    managedBookmarkUUID2 = [self managedBookmarkUUID];
    v6 = [topLevelManagedBookmarkFolder findChildBookmarkWithUUID:managedBookmarkUUID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end