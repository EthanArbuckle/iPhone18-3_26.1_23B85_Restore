@interface MPModelStoreGroupingsMusicKitResponseParser
- (BOOL)featuredContentKindCorrespondsToItem:(id)a3;
- (BOOL)isContentNodeAnEditorialElement:(id)a3;
- (MPModelStoreGroupingsMusicKitResponseParser)initWithRawResponseOutput:(id)a3 sectionBuilder:(id)a4 contentItemBuilder:(id)a5 filteredFCKinds:(id)a6 userIdentity:(id)a7 rootObjectIdentifier:(id)a8 options:(unint64_t)a9 storeURLBag:(id)a10;
- (MPSectionedCollection)results;
- (id)_parsedContentNode:(id)a3 uniformContentItemTypeResolver:(id)a4 additionalAttributesFromParent:(id)a5 recommendationID:(id)a6;
- (id)_parsedEditorialElement:(id)a3 recommendationID:(id)a4;
- (id)_parsedEditorialElementX:(id)a3;
- (id)_parsedEditorialElements:(id)a3;
- (id)_parsedSectionedCollection;
- (id)attributesForContentNode:(id)a3;
- (id)bagRoomURLRegularExpression;
- (id)childrenOfContentNode:(id)a3;
- (id)description;
- (id)firstChildOfContentNode:(id)a3;
- (id)linkSectionWithDictionary:(id)a3;
- (id)musicAPIURLWithLinkURLString:(id)a3;
- (id)recommendationIDOfContentNode:(id)a3;
- (int64_t)featuredContentKindForNode:(id)a3;
@end

@implementation MPModelStoreGroupingsMusicKitResponseParser

- (id)_parsedContentNode:(id)a3 uniformContentItemTypeResolver:(id)a4 additionalAttributesFromParent:(id)a5 recommendationID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!_NSIsNSDictionary())
  {
    v22 = 0;
    goto LABEL_21;
  }

  v14 = v10;
  v15 = [v14 objectForKey:@"id"];
  v16 = v15;
  if (v15)
  {
    v17 = MPStoreItemMetadataStringNormalizeStoreIDValue(v15);
    if (v17)
    {
      v18 = [v14 objectForKey:@"type"];
      if (_NSIsNSString())
      {
        [(MPModelStoreBrowseContentItemBuilder *)self->_contentItemBuilder contentItemTypeForMusicAPIType:v18];
      }

      v19 = [v14 objectForKey:@"attributes"];
      v28 = v19;
      if (_NSIsNSDictionary())
      {
        v27 = v18;
        v20 = [v12 mutableCopy];
        if (v20)
        {
          v21 = v20;
          [v20 addEntriesFromDictionary:v19];
        }

        else
        {
          v21 = [v19 mutableCopy];
        }

        [v21 setObject:v17 forKey:@"id"];
        v26 = [v14 objectForKey:@"relationships"];
        if (v26)
        {
          v24 = [v14 objectForKey:@"relationships"];
          [v21 setObject:v24 forKey:@"relationships"];
        }

        if (v13)
        {
          [v21 setObject:v13 forKey:@"recommendationId"];
        }

        v23 = [[MPStoreItemMetadata alloc] initWithStoreMusicAPIDictionary:v21];

        v18 = v27;
      }

      else
      {
        v23 = 0;
      }

      [v11 addContentItemType:{-[MPModelStoreBrowseContentItemBuilder contentItemTypeForStoreItemMetadata:](self->_contentItemBuilder, "contentItemTypeForStoreItemMetadata:", v23)}];
      v22 = [(MPStoreModelObjectBuilder *)self->_contentItemBuilder modelObjectWithStoreItemMetadata:v23 userIdentity:self->_userIdentity];

      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = 0;
LABEL_20:

LABEL_21:

  return v22;
}

- (BOOL)isContentNodeAnEditorialElement:(id)a3
{
  v3 = a3;
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"type"];
    if (_NSIsNSString())
    {
      v5 = [v4 isEqualToString:@"editorial-elements"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)featuredContentKindCorrespondsToItem:(id)a3
{
  v4 = a3;
  if (_NSIsNSDictionary())
  {
    v5 = [(MPModelStoreGroupingsMusicKitResponseParser *)self featuredContentKindForNode:v4];
    v7 = v5 != 317 && v5 != 383;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)childrenOfContentNode:(id)a3
{
  v3 = a3;
  if (_NSIsNSDictionary())
  {
    v4 = [v3 arrayAtKeyPath:@"relationships.children??contents.data"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)recommendationIDOfContentNode:(id)a3
{
  v3 = a3;
  if (_NSIsNSDictionary())
  {
    v4 = [v3 stringAtKeyPath:@"relationships.children??contents.meta.metrics.reco_id"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)firstChildOfContentNode:(id)a3
{
  v3 = [(MPModelStoreGroupingsMusicKitResponseParser *)self childrenOfContentNode:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)attributesForContentNode:(id)a3
{
  v3 = a3;
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"attributes"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)featuredContentKindForNode:(id)a3
{
  v3 = a3;
  if (_NSIsNSDictionary())
  {
    v4 = [v3 stringAtKeyPath:@"attributes.editorialElementKind"];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)linkSectionWithDictionary:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NSIsNSDictionary())
  {
    v5 = [v4 objectForKey:@"label"];
    if (v5)
    {
      v6 = [v4 objectForKey:@"url"];
      v7 = [(MPModelStoreGroupingsMusicKitResponseParser *)self musicAPIURLWithLinkURLString:v6];

      LOBYTE(v11) = 0;
      v8 = [(MPModelStoreBrowseSectionBuilder *)self->_sectionBuilder modelObjectWithTitle:v5 loadAdditionalContentURL:v7 uniformContentItemType:16 isMemberOfChartSet:0 isBrick:0 displaysAsGridCellInCarPlay:0 previouslyRetrievedNestedResponse:0 onlyContainsEditorialElements:v11 featuredContentKind:0 modelObject:0];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v4;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Dropping link without label: %{public}@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)musicAPIURLWithLinkURLString:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || (storeBagLinkRegularExpression = self->_storeBagLinkRegularExpression) == 0 && ([(MPModelStoreGroupingsMusicKitResponseParser *)self bagRoomURLRegularExpression], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_storeBagLinkRegularExpression, self->_storeBagLinkRegularExpression = v6, v7, (storeBagLinkRegularExpression = self->_storeBagLinkRegularExpression) == 0))
  {
    v17 = 0;
    goto LABEL_21;
  }

  v8 = storeBagLinkRegularExpression;
  v9 = -[NSRegularExpression matchesInString:options:range:](v8, "matchesInString:options:range:", v4, 0, 0, [v4 length]);
  v10 = [v9 firstObject];
  if (!v10)
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "No match found, URL is not supported: %{public}@", buf, 0xCu);
    }

    v17 = 0;
    goto LABEL_20;
  }

  v11 = [(ICURLBag *)self->_storeURLBag stringForBagKey:*MEMORY[0x1E69E42E0]];
  if ((_NSIsNSString() & 1) == 0)
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "countryCode not found in bag";
      v19 = v15;
      v20 = 2;
LABEL_17:
      _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v12 = [v10 rangeWithName:@"identifier"];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || ([v4 substringWithRange:{v12, v13}], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v10;
      v18 = "Match didn't capture an identifier: %{public}@";
      v19 = v15;
      v20 = 12;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v15 = v14;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/v1/editorial/%@/rooms/%@", v11, v14];
  v17 = MusicURLWithPathUsingURLBag(v16, self->_storeURLBag, 0);

LABEL_19:
LABEL_20:

LABEL_21:

  return v17;
}

- (id)bagRoomURLRegularExpression
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(ICURLBag *)self->_storeURLBag dictionaryForBagKey:*MEMORY[0x1E69E4320]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"viewRoomUrlRegex"];
    if (_NSIsNSString())
    {
      v9 = 0;
      v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v4 options:0 error:&v9];
      v6 = v9;
      if (v6)
      {
        v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v11 = v4;
          v12 = 2114;
          v13 = v6;
          _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Regex cannot be generated from pattern: %{public}@ with error %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_parsedEditorialElement:(id)a3 recommendationID:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v64 = a4;
  if (!_NSIsNSDictionary())
  {
    v12 = 0;
    goto LABEL_86;
  }

  v7 = objc_opt_new();
  v63 = v6;
  v8 = [(MPModelStoreGroupingsMusicKitResponseParser *)self featuredContentKindForNode:?];
  filteredFCKinds = self->_filteredFCKinds;
  if (!filteredFCKinds || [(NSIndexSet *)filteredFCKinds containsIndex:v8])
  {
    v10 = [v63 objectForKey:@"attributes"];
    if (!_NSIsNSDictionary())
    {
      v12 = 0;
LABEL_84:

      goto LABEL_85;
    }

    v62 = v8;
    v11 = [v10 objectForKey:@"name"];
    if (_NSIsNSString())
    {
      if (v11)
      {
LABEL_16:
        if (_parsedEditorialElement_recommendationID__onceToken == -1)
        {
          if (v11)
          {
            goto LABEL_20;
          }
        }

        else
        {
          dispatch_once(&_parsedEditorialElement_recommendationID__onceToken, &__block_literal_global_38401);
          if (v11)
          {
            goto LABEL_20;
          }
        }

        if (self->_options & 4) == 0 || (v14 = _parsedEditorialElement_recommendationID__featuredContentKindInWhichTitleCanBeIgnored, [MEMORY[0x1E696AD98] numberWithInteger:v62], v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "containsObject:", v15), v15, (v14))
        {
LABEL_20:
          v16 = [v10 objectForKey:@"seeAllUrl"];
          if (_NSIsNSString())
          {
            v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];

            v60 = v17;
            if (v17)
            {
LABEL_31:
              if (_NSIsNSDictionary())
              {
                v20 = [v10 objectForKey:@"emphasize"];
                v56 = [v20 BOOLValue];
              }

              else
              {
                v56 = 0;
              }

              v59 = v6;
              v57 = v10;
              v61 = v11;
              if (_NSIsNSDictionary())
              {
                v21 = [v10 objectForKey:@"displayStyle"];
                if (_NSIsNSString())
                {
                  if ([v21 isEqualToString:@"compact"])
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v23 = [v21 isEqualToString:@"expanded"];
                    v22 = 2;
                    if (!v23)
                    {
                      v22 = 0;
                    }
                  }

                  v55 = v22;
                }

                else
                {
                  v55 = 0;
                }
              }

              else
              {
                v55 = 0;
              }

              v58 = v7;
              v24 = [(MPModelStoreGroupingsMusicKitResponseParser *)self childrenOfContentNode:v63];
              v25 = objc_opt_new();
              v26 = objc_opt_new();
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v27 = v24;
              v28 = [v27 countByEnumeratingWithState:&v69 objects:v74 count:16];
              if (!v28)
              {
                v31 = 1;
                goto LABEL_62;
              }

              v29 = v28;
              v30 = *v70;
              v31 = 1;
              while (1)
              {
                v32 = 0;
                do
                {
                  if (*v70 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v33 = *(*(&v69 + 1) + 8 * v32);
                  v34 = [(MPModelStoreGroupingsMusicKitResponseParser *)self featuredContentKindCorrespondsToItem:v33];
                  if (![(MPModelStoreGroupingsMusicKitResponseParser *)self isContentNodeAnEditorialElement:v33])
                  {
                    v38 = [(MPModelStoreGroupingsMusicKitResponseParser *)self attributesForContentNode:v63];
                    v37 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedContentNode:v33 uniformContentItemTypeResolver:v25 additionalAttributesFromParent:v38 recommendationID:v64];

LABEL_53:
                    v31 = 0;
                    if (!v37)
                    {
                      goto LABEL_55;
                    }

LABEL_54:
                    [v26 addObject:v37];
                    goto LABEL_55;
                  }

                  if (v34)
                  {
                    v35 = [(MPModelStoreGroupingsMusicKitResponseParser *)self firstChildOfContentNode:v33];
                    v36 = [(MPModelStoreGroupingsMusicKitResponseParser *)self attributesForContentNode:v33];
                    v37 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedContentNode:v35 uniformContentItemTypeResolver:v25 additionalAttributesFromParent:v36 recommendationID:v64];

                    goto LABEL_53;
                  }

                  v37 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedEditorialElement:v33 recommendationID:v64];
                  if (v37)
                  {
                    goto LABEL_54;
                  }

LABEL_55:

                  ++v32;
                }

                while (v29 != v32);
                v39 = [v27 countByEnumeratingWithState:&v69 objects:v74 count:16];
                v29 = v39;
                if (!v39)
                {
LABEL_62:

                  v40 = [(MPModelStoreGroupingsMusicKitResponseParser *)self linksForContentNode:v63];
                  if (![v26 count] && objc_msgSend(v40, "count"))
                  {
                    v67 = 0u;
                    v68 = 0u;
                    v65 = 0u;
                    v66 = 0u;
                    v54 = v40;
                    v41 = v40;
                    v42 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
                    if (v42)
                    {
                      v43 = v42;
                      v44 = *v66;
                      do
                      {
                        for (i = 0; i != v43; ++i)
                        {
                          if (*v66 != v44)
                          {
                            objc_enumerationMutation(v41);
                          }

                          v46 = [(MPModelStoreGroupingsMusicKitResponseParser *)self linkSectionWithDictionary:*(*(&v65 + 1) + 8 * i)];
                          if (v46)
                          {
                            [v26 addObject:v46];
                          }
                        }

                        v43 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
                      }

                      while (v43);
                    }

                    v40 = v54;
                  }

                  if ([v26 count] || v62 == 332)
                  {
                    v7 = v58;
                    if (v62 == 489 || v62 == 383)
                    {
                      v48 = [v26 firstObject];
                      v49 = [v48 radioStation];
                    }

                    else
                    {
                      v49 = 0;
                    }

                    sectionBuilder = self->_sectionBuilder;
                    LOBYTE(v53) = v31 & 1;
                    v47 = v60;
                    v51 = -[MPModelStoreBrowseSectionBuilder modelObjectWithTitle:loadAdditionalContentURL:uniformContentItemType:isMemberOfChartSet:isBrick:displaysAsGridCellInCarPlay:displayStyle:previouslyRetrievedNestedResponse:onlyContainsEditorialElements:featuredContentKind:modelObject:](sectionBuilder, "modelObjectWithTitle:loadAdditionalContentURL:uniformContentItemType:isMemberOfChartSet:isBrick:displaysAsGridCellInCarPlay:displayStyle:previouslyRetrievedNestedResponse:onlyContainsEditorialElements:featuredContentKind:modelObject:", v61, v60, [v25 uniformContentItemType], v62 == 323, v62 == 325, v56, v55, 0, v53, v62, v49);
                    [v58 appendSection:v51];
                    [v58 appendItems:v26];
                    v12 = [v58 copy];
                  }

                  else
                  {
                    v12 = 0;
                    v7 = v58;
                    v47 = v60;
                  }

                  v6 = v59;
                  v10 = v57;
                  v11 = v61;
                  goto LABEL_83;
                }
              }
            }
          }

          else
          {
          }

          v18 = [v10 objectForKey:@"link"];
          if (_NSIsNSDictionary())
          {
            v19 = [v18 objectForKey:@"url"];
            if (_NSIsNSString())
            {
              v60 = [MEMORY[0x1E695DFF8] URLWithString:v19];
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = 0;
            v19 = v18;
          }

          goto LABEL_31;
        }

        v47 = _MPLogCategoryDefault();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v76 = v63;
          _os_log_impl(&dword_1A238D000, v47, OS_LOG_TYPE_ERROR, "Dropping node without title: %{public}@", buf, 0xCu);
        }

        v12 = 0;
LABEL_83:

        goto LABEL_84;
      }
    }

    else
    {
    }

    v13 = [v10 objectForKey:@"title"];
    if (_NSIsNSString())
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_16;
  }

  v12 = 0;
LABEL_85:

LABEL_86:

  return v12;
}

void __88__MPModelStoreGroupingsMusicKitResponseParser__parsedEditorialElement_recommendationID___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1509AC0, &unk_1F1509AD8, &unk_1F1509AF0, &unk_1F1509B08, 0}];
  v1 = _parsedEditorialElement_recommendationID__featuredContentKindInWhichTitleCanBeIgnored;
  _parsedEditorialElement_recommendationID__featuredContentKindInWhichTitleCanBeIgnored = v0;
}

- (id)_parsedEditorialElementX:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!_NSIsNSDictionary())
  {
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_23;
  }

  v5 = v4;
  v6 = [(MPModelStoreGroupingsMusicKitResponseParser *)self featuredContentKindForNode:v5];
  filteredFCKinds = self->_filteredFCKinds;
  if (filteredFCKinds && ![(NSIndexSet *)filteredFCKinds containsIndex:v6])
  {
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_22;
  }

  options = self->_options;
  if ((options & 1) != 0 && v6 == 488 || (options & 2) != 0 && v6 == 316)
  {
    v9 = [(MPModelStoreGroupingsMusicKitResponseParser *)self recommendationIDOfContentNode:v5];
    v10 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(MPModelStoreGroupingsMusicKitResponseParser *)self childrenOfContentNode:v5, 0];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedEditorialElement:*(*(&v21 + 1) + 8 * i) recommendationID:v9];
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
  }

  else
  {
    v9 = [(MPModelStoreGroupingsMusicKitResponseParser *)self recommendationIDOfContentNode:v5];
    v20 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedEditorialElement:v5 recommendationID:v9];
    v10 = v20;
    if (!v20)
    {
      v18 = MEMORY[0x1E695E0F0];
      goto LABEL_19;
    }

    v25 = v20;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  }

  v18 = v17;
LABEL_19:

LABEL_22:
LABEL_23:

  return v18;
}

- (id)_parsedEditorialElements:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v18 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedEditorialElementX:*(*(&v37 + 1) + 8 * i)];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v8)
        {
          v9 = *v34;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v34 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v33 + 1) + 8 * j);
              v12 = [v11 firstSection];
              [v4 appendSection:v12];

              v13 = [v11 allItems];
              [v4 appendItems:v13];
            }

            v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v8);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38435;
  v27 = __Block_byref_object_dispose__38436;
  v28 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__MPModelStoreGroupingsMusicKitResponseParser__parsedEditorialElements___block_invoke;
  v22[3] = &unk_1E767CC20;
  v22[4] = &v29;
  v22[5] = &v23;
  [v4 enumerateSectionsUsingBlock:v22];
  if (*(v30 + 24) == 1)
  {
    v14 = v24[5];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__MPModelStoreGroupingsMusicKitResponseParser__parsedEditorialElements___block_invoke_2;
    v20[3] = &unk_1E7680030;
    v21 = v4;
    [v14 enumerateIndexesUsingBlock:v20];
  }

  if ([v4 numberOfSections])
  {
    v15 = [v4 copy];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v15;
}

uint64_t __72__MPModelStoreGroupingsMusicKitResponseParser__parsedEditorialElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 sectionType];
  if ((result - 13) >= 2)
  {
    if (result == 12)
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);

      return [v6 addIndex:a3];
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (id)_parsedSectionedCollection
{
  v60[5] = *MEMORY[0x1E69E9840];
  v3 = [MPMediaAPIParserLayer layerWithKey:@"data" ofType:0];
  v60[0] = v3;
  v4 = [MPMediaAPIParserLayer layerWithFirstObjectOfType:1];
  v60[1] = v4;
  v5 = [MPMediaAPIParserLayer layerWithKey:@"relationships" ofType:1];
  v60[2] = v5;
  v6 = [MPMediaAPIParserLayer layerWithKey:@"tabs" ofType:1];
  v60[3] = v6;
  v7 = [MPMediaAPIParserLayer layerWithKey:@"data" ofType:0];
  v60[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:5];

  if ((_NSIsNSDictionary() & 1) == 0)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      rawResponseOutput = self->_rawResponseOutput;
      *buf = 138543362;
      v56 = rawResponseOutput;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Can't parse because input has unexpected type: %{public}@", buf, 0xCu);
    }

    v32 = 0;
    goto LABEL_63;
  }

  v9 = self->_rawResponseOutput;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = v8;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v59 count:16];
  v12 = v9;
  if (v11)
  {
    v13 = v11;
    v14 = *v51;
    v12 = v9;
    do
    {
      v15 = v9;
      for (i = 0; i != v13; ++i)
      {
        v17 = v12;
        if (*v51 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v50 + 1) + 8 * i);
        v19 = [v18 key];

        if (v19)
        {
          v20 = [v18 key];
          v12 = [v12 objectForKey:v20];

          if (!v12)
          {
            v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v34 = [v18 key];
              *buf = 138543618;
              v56 = v34;
              v57 = 2114;
              v58 = v17;
              _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Can't parse because %{public}@ property doesn't exist: %{public}@", buf, 0x16u);
            }

LABEL_47:
            v8 = v45;
            v9 = v15;
            goto LABEL_61;
          }
        }

        else
        {
          v21 = [v12 firstObject];
          if (!v21)
          {
            v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v56 = v17;
              _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Can't parse because array doesn't contain anything: %{public}@", buf, 0xCu);
            }

            goto LABEL_47;
          }

          v12 = v21;
        }

        v22 = [v18 type];
        if (v22 == 1)
        {
          if ((_NSIsNSDictionary() & 1) == 0)
          {
            v35 = [v18 key];

            v40 = os_log_create("com.apple.amp.mediaplayer", "Default");
            v36 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
            if (!v35)
            {
              v8 = v45;
              v9 = v15;
              if (!v36)
              {
                goto LABEL_60;
              }

              *buf = 138543362;
              v56 = v12;
              v42 = "Can't parse because array first object is not of expected (NSDictionary) type: %{public}@";
              goto LABEL_59;
            }

            v8 = v45;
            v9 = v15;
            if (v36)
            {
              v37 = [v18 key];
              *buf = 138543618;
              v56 = v37;
              v57 = 2114;
              v58 = v12;
              v38 = "Can't parse because %{public}@ property is not of expected (NSDictionary) type: %{public}@";
              goto LABEL_54;
            }

LABEL_60:

LABEL_61:
            v32 = 0;
            goto LABEL_62;
          }
        }

        else if (!v22 && (_NSIsNSArray() & 1) == 0)
        {
          v39 = [v18 key];

          v40 = os_log_create("com.apple.amp.mediaplayer", "Default");
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
          if (v39)
          {
            v8 = v45;
            v9 = v15;
            if (v41)
            {
              v37 = [v18 key];
              *buf = 138543618;
              v56 = v37;
              v57 = 2114;
              v58 = v12;
              v38 = "Can't parse because %{public}@ property is not of expected (NSArray) type: %{public}@";
LABEL_54:
              _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, v38, buf, 0x16u);
            }

            goto LABEL_60;
          }

          v8 = v45;
          v9 = v15;
          if (!v41)
          {
            goto LABEL_60;
          }

          *buf = 138543362;
          v56 = v12;
          v42 = "Can't parse because array first object is not of expected (NSArray) type: %{public}@";
LABEL_59:
          _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
          goto LABEL_60;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v50 objects:v59 count:16];
      v9 = v15;
    }

    while (v13);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = v12;
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v54 count:16];
  v17 = v23;
  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = v24;
  v44 = v9;
  v26 = *v47;
  while (2)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v47 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v46 + 1) + 8 * j);
      if (self->_rootObjectIdentifier)
      {
        v29 = [*(*(&v46 + 1) + 8 * j) objectForKey:@"attributes"];
        if (!_NSIsNSDictionary())
        {
          goto LABEL_34;
        }

        v30 = [v29 objectForKey:@"token"];
        if (!_NSIsNSString() || ![v30 isEqualToString:self->_rootObjectIdentifier])
        {
          goto LABEL_33;
        }
      }

      v29 = [v28 objectForKey:{@"relationships", v44}];
      if (!_NSIsNSDictionary())
      {
        goto LABEL_34;
      }

      v30 = [v29 objectForKey:@"children"];
      if (_NSIsNSDictionary())
      {
        v17 = [v30 objectForKey:@"data"];
        if (_NSIsNSArray())
        {

          goto LABEL_43;
        }
      }

LABEL_33:

LABEL_34:
    }

    v25 = [v23 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

  v17 = v23;
LABEL_43:
  v9 = v44;
LABEL_44:

  v32 = [(MPModelStoreGroupingsMusicKitResponseParser *)self _parsedEditorialElements:v17];
  v8 = v45;
LABEL_62:

LABEL_63:

  return v32;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_options)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v6 appendFormat:@"; createIndependentSectionsForLiveRadioStations = %@", v7];
  if ((self->_options & 2) != 0)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v6 appendFormat:@"; useOneLevelHeroListHierarchy = %@", v8];
  if ((self->_options & 4) != 0)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@"; disallowEmptyTitleSections = %@", v9];
  [v6 appendString:@">"];

  return v6;
}

- (MPSectionedCollection)results
{
  parseOnceToken = self->_parseOnceToken;
  p_parseOnceToken = &self->_parseOnceToken;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPModelStoreGroupingsMusicKitResponseParser_results__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  if (parseOnceToken != -1)
  {
    dispatch_once(p_parseOnceToken, block);
  }

  return self->_results;
}

void __54__MPModelStoreGroupingsMusicKitResponseParser_results__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _parsedSectionedCollection];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (MPModelStoreGroupingsMusicKitResponseParser)initWithRawResponseOutput:(id)a3 sectionBuilder:(id)a4 contentItemBuilder:(id)a5 filteredFCKinds:(id)a6 userIdentity:(id)a7 rootObjectIdentifier:(id)a8 options:(unint64_t)a9 storeURLBag:(id)a10
{
  v17 = a3;
  v18 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  obj = a8;
  v24 = a8;
  v19 = a10;
  v28.receiver = self;
  v28.super_class = MPModelStoreGroupingsMusicKitResponseParser;
  v20 = [(MPModelStoreGroupingsMusicKitResponseParser *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_rawResponseOutput, a3);
    objc_storeStrong(&v21->_sectionBuilder, a4);
    objc_storeStrong(&v21->_contentItemBuilder, a5);
    objc_storeStrong(&v21->_filteredFCKinds, a6);
    objc_storeStrong(&v21->_userIdentity, a7);
    objc_storeStrong(&v21->_rootObjectIdentifier, obj);
    v21->_options = a9;
    objc_storeStrong(&v21->_storeURLBag, a10);
  }

  return v21;
}

@end