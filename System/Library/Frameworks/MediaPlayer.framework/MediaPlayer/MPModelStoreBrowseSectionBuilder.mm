@interface MPModelStoreBrowseSectionBuilder
+ (id)allSupportedInternalOnlyProperties;
+ (id)allSupportedPropertiesIncludingInternalOnlyProperties:(BOOL)a3;
- (MPModelStoreBrowseSectionBuilder)initWithRequestedPropertySet:(id)a3;
- (MPPropertySet)requestedPropertySetExcludingInternalOnlyProperties;
- (id)modelObjectWithTitle:(id)a3 loadAdditionalContentURL:(id)a4 uniformContentItemType:(int64_t)a5 isMemberOfChartSet:(BOOL)a6 isBrick:(BOOL)a7 displaysAsGridCellInCarPlay:(BOOL)a8 displayStyle:(int64_t)a9 previouslyRetrievedNestedResponse:(id)a10 onlyContainsEditorialElements:(BOOL)a11 featuredContentKind:(int64_t)a12 modelObject:(id)a13;
@end

@implementation MPModelStoreBrowseSectionBuilder

- (id)modelObjectWithTitle:(id)a3 loadAdditionalContentURL:(id)a4 uniformContentItemType:(int64_t)a5 isMemberOfChartSet:(BOOL)a6 isBrick:(BOOL)a7 displaysAsGridCellInCarPlay:(BOOL)a8 displayStyle:(int64_t)a9 previouslyRetrievedNestedResponse:(id)a10 onlyContainsEditorialElements:(BOOL)a11 featuredContentKind:(int64_t)a12 modelObject:(id)a13
{
  v13 = a6;
  v17 = a11;
  v18 = a3;
  v19 = a4;
  v20 = a10;
  v21 = a13;
  if ((*&self->_requestedBrowseSectionProperties & 1) == 0)
  {
    v22 = [(MPModelStoreBrowseSectionBuilder *)self requestedPropertySet];
    v23 = [v22 properties];
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyTitle"])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFFD | v24;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyType"])
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFFB | v25;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyLoadAdditionalContentURL"])
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFF7 | v26;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyPreviouslyRetrievedNestedResponse"])
    {
      v27 = 16;
    }

    else
    {
      v27 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFEF | v27;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyUniformContentItemType"])
    {
      v28 = 32;
    }

    else
    {
      v28 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFDF | v28;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyMemberOfChartSet"])
    {
      v29 = 64;
    }

    else
    {
      v29 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFBF | v29;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyBrick"])
    {
      v30 = 512;
    }

    else
    {
      v30 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFDFF | v30;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyDisplaysAsGridCellInCarPlay"])
    {
      v31 = 128;
    }

    else
    {
      v31 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFF7F | v31;
    if ([v23 containsObject:@"MPModelStoreBrowseSectionPropertyDisplayStyle"])
    {
      v32 = 257;
    }

    else
    {
      v32 = 1;
    }

    *&self->_requestedBrowseSectionProperties = v32 | *&self->_requestedBrowseSectionProperties & 0xFEFE;

    v17 = a11;
  }

  if (a12 <= 387)
  {
    switch(a12)
    {
      case 326:
        v33 = 15;
        goto LABEL_68;
      case 332:
        v33 = 9;
        goto LABEL_68;
      case 383:
        v33 = 12;
        goto LABEL_68;
    }
  }

  else if (a12 > 487)
  {
    if (a12 == 488)
    {
      v33 = 13;
      goto LABEL_68;
    }

    if (a12 == 489)
    {
      v33 = 14;
      goto LABEL_68;
    }
  }

  else
  {
    if (a12 == 388)
    {
      v33 = 10;
      goto LABEL_68;
    }

    if (a12 == 391)
    {
      v33 = 11;
      goto LABEL_68;
    }
  }

  v34 = 0;
  if (v13)
  {
    if (a5 <= 9)
    {
      if (a5 == 1)
      {
        v34 = 2;
      }

      else if (a5 == 6)
      {
        v34 = 3;
      }

      goto LABEL_65;
    }

    if (a5 != 10)
    {
LABEL_56:
      if (a5 == 16)
      {
        v34 = 11;
      }

      goto LABEL_65;
    }

    v34 = 1;
  }

  else
  {
    if (a5 <= 4)
    {
      if (a5 == 3)
      {
        v34 = 4;
      }

      else if (a5 == 4)
      {
        v34 = 5;
      }

      goto LABEL_65;
    }

    if (a5 == 5)
    {
      v34 = 6;
    }

    else
    {
      if (a5 != 7)
      {
        goto LABEL_56;
      }

      v34 = 7;
    }
  }

LABEL_65:
  if (v17)
  {
    v33 = 8;
  }

  else
  {
    v33 = v34;
  }

LABEL_68:
  v35 = [MPModelStoreBrowseSection alloc];
  v36 = +[MPIdentifierSet emptyIdentifierSet];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __269__MPModelStoreBrowseSectionBuilder_modelObjectWithTitle_loadAdditionalContentURL_uniformContentItemType_isMemberOfChartSet_isBrick_displaysAsGridCellInCarPlay_displayStyle_previouslyRetrievedNestedResponse_onlyContainsEditorialElements_featuredContentKind_modelObject___block_invoke;
  v45[3] = &unk_1E767CBF0;
  v45[4] = self;
  v46 = v18;
  v53 = a8;
  v47 = v21;
  v48 = v19;
  v51 = v33;
  v52 = a5;
  v54 = v13;
  v55 = a7;
  v49 = v20;
  v50 = a9;
  v37 = v20;
  v38 = v19;
  v39 = v21;
  v40 = v18;
  v41 = [(MPModelObject *)v35 initWithIdentifiers:v36 block:v45];

  return v41;
}

void __269__MPModelStoreBrowseSectionBuilder_modelObjectWithTitle_loadAdditionalContentURL_uniformContentItemType_isMemberOfChartSet_isBrick_displaysAsGridCellInCarPlay_displayStyle_previouslyRetrievedNestedResponse_onlyContainsEditorialElements_featuredContentKind_modelObject___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 2) != 0)
  {
    [v5 setTitle:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 8);
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [v5 setDisplaysAsGridCellInCarPlay:*(a1 + 96)];
  if ((*(*(a1 + 32) + 8) & 0x100) != 0)
  {
LABEL_4:
    [v5 setDisplayStyle:*(a1 + 72)];
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setRadioStation:*(a1 + 48)];
  }

  v4 = *(*(a1 + 32) + 8);
  if ((v4 & 4) != 0)
  {
    [v5 setSectionType:*(a1 + 80)];
    v4 = *(*(a1 + 32) + 8);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

  [v5 setLoadAdditionalContentURL:*(a1 + 56)];
  v4 = *(*(a1 + 32) + 8);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 setUniformContentItemType:*(a1 + 88)];
  v4 = *(*(a1 + 32) + 8);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 setMemberOfChartSet:*(a1 + 97)];
  v4 = *(*(a1 + 32) + 8);
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  [v5 setBrick:*(a1 + 98)];
  if ((*(*(a1 + 32) + 8) & 0x10) != 0)
  {
LABEL_13:
    [v5 setPreviouslyRetrievedNestedResponse:*(a1 + 64)];
  }

LABEL_14:
}

- (MPPropertySet)requestedPropertySetExcludingInternalOnlyProperties
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(MPModelStoreBrowseSectionBuilder *)self requestedPropertySet];
  v3 = [v2 properties];
  v4 = [v3 mutableCopy];

  v5 = [objc_opt_class() allSupportedInternalOnlyProperties];
  v6 = [v5 properties];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v4 removeObject:{*(*(&v17 + 1) + 8 * i), v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [MPPropertySet alloc];
  v13 = [v4 allObjects];
  v14 = [v2 relationships];
  v15 = [(MPPropertySet *)v12 initWithProperties:v13 relationships:v14];

  return v15;
}

- (MPModelStoreBrowseSectionBuilder)initWithRequestedPropertySet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelStoreBrowseSectionBuilder;
  v5 = [(MPModelStoreBrowseSectionBuilder *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestedPropertySet = v5->_requestedPropertySet;
    v5->_requestedPropertySet = v6;
  }

  return v5;
}

+ (id)allSupportedInternalOnlyProperties
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelStoreBrowseSectionPropertyLoadAdditionalContentURL";
  v5[1] = @"MPModelStoreBrowseSectionPropertyUniformContentItemType";
  v5[2] = @"MPModelStoreBrowseSectionPropertyMemberOfChartSet";
  v5[3] = @"MPModelStoreBrowseSectionPropertyBrick";
  v5[4] = @"MPModelStoreBrowseSectionPropertyPreviouslyRetrievedNestedResponse";
  v5[5] = @"MPModelStoreBrowseSectionPropertyDisplaysAsGridCellInCarPlay";
  v5[6] = @"MPModelStoreBrowseSectionPropertyDisplayStyle";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

+ (id)allSupportedPropertiesIncludingInternalOnlyProperties:(BOOL)a3
{
  v3 = a3;
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"MPModelStoreBrowseSectionPropertyTitle";
  v10[1] = @"MPModelStoreBrowseSectionPropertyType";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [MPPropertySet propertySetWithProperties:v5];

  if (v3)
  {
    v7 = [a1 allSupportedInternalOnlyProperties];
    v8 = [v6 propertySetByCombiningWithPropertySet:v7];

    v6 = v8;
  }

  return v6;
}

@end