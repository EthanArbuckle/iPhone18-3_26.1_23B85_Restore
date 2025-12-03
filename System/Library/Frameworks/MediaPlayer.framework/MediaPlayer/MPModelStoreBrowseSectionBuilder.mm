@interface MPModelStoreBrowseSectionBuilder
+ (id)allSupportedInternalOnlyProperties;
+ (id)allSupportedPropertiesIncludingInternalOnlyProperties:(BOOL)properties;
- (MPModelStoreBrowseSectionBuilder)initWithRequestedPropertySet:(id)set;
- (MPPropertySet)requestedPropertySetExcludingInternalOnlyProperties;
- (id)modelObjectWithTitle:(id)title loadAdditionalContentURL:(id)l uniformContentItemType:(int64_t)type isMemberOfChartSet:(BOOL)set isBrick:(BOOL)brick displaysAsGridCellInCarPlay:(BOOL)play displayStyle:(int64_t)style previouslyRetrievedNestedResponse:(id)self0 onlyContainsEditorialElements:(BOOL)self1 featuredContentKind:(int64_t)self2 modelObject:(id)self3;
@end

@implementation MPModelStoreBrowseSectionBuilder

- (id)modelObjectWithTitle:(id)title loadAdditionalContentURL:(id)l uniformContentItemType:(int64_t)type isMemberOfChartSet:(BOOL)set isBrick:(BOOL)brick displaysAsGridCellInCarPlay:(BOOL)play displayStyle:(int64_t)style previouslyRetrievedNestedResponse:(id)self0 onlyContainsEditorialElements:(BOOL)self1 featuredContentKind:(int64_t)self2 modelObject:(id)self3
{
  setCopy = set;
  elementsCopy2 = elements;
  titleCopy = title;
  lCopy = l;
  responseCopy = response;
  objectCopy = object;
  if ((*&self->_requestedBrowseSectionProperties & 1) == 0)
  {
    requestedPropertySet = [(MPModelStoreBrowseSectionBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyTitle"])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFFD | v24;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyType"])
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFFB | v25;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyLoadAdditionalContentURL"])
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFF7 | v26;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyPreviouslyRetrievedNestedResponse"])
    {
      v27 = 16;
    }

    else
    {
      v27 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFEF | v27;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyUniformContentItemType"])
    {
      v28 = 32;
    }

    else
    {
      v28 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFDF | v28;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyMemberOfChartSet"])
    {
      v29 = 64;
    }

    else
    {
      v29 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFFBF | v29;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyBrick"])
    {
      v30 = 512;
    }

    else
    {
      v30 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFDFF | v30;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyDisplaysAsGridCellInCarPlay"])
    {
      v31 = 128;
    }

    else
    {
      v31 = 0;
    }

    *&self->_requestedBrowseSectionProperties = *&self->_requestedBrowseSectionProperties & 0xFF7F | v31;
    if ([properties containsObject:@"MPModelStoreBrowseSectionPropertyDisplayStyle"])
    {
      v32 = 257;
    }

    else
    {
      v32 = 1;
    }

    *&self->_requestedBrowseSectionProperties = v32 | *&self->_requestedBrowseSectionProperties & 0xFEFE;

    elementsCopy2 = elements;
  }

  if (kind <= 387)
  {
    switch(kind)
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

  else if (kind > 487)
  {
    if (kind == 488)
    {
      v33 = 13;
      goto LABEL_68;
    }

    if (kind == 489)
    {
      v33 = 14;
      goto LABEL_68;
    }
  }

  else
  {
    if (kind == 388)
    {
      v33 = 10;
      goto LABEL_68;
    }

    if (kind == 391)
    {
      v33 = 11;
      goto LABEL_68;
    }
  }

  v34 = 0;
  if (setCopy)
  {
    if (type <= 9)
    {
      if (type == 1)
      {
        v34 = 2;
      }

      else if (type == 6)
      {
        v34 = 3;
      }

      goto LABEL_65;
    }

    if (type != 10)
    {
LABEL_56:
      if (type == 16)
      {
        v34 = 11;
      }

      goto LABEL_65;
    }

    v34 = 1;
  }

  else
  {
    if (type <= 4)
    {
      if (type == 3)
      {
        v34 = 4;
      }

      else if (type == 4)
      {
        v34 = 5;
      }

      goto LABEL_65;
    }

    if (type == 5)
    {
      v34 = 6;
    }

    else
    {
      if (type != 7)
      {
        goto LABEL_56;
      }

      v34 = 7;
    }
  }

LABEL_65:
  if (elementsCopy2)
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
  v46 = titleCopy;
  playCopy = play;
  v47 = objectCopy;
  v48 = lCopy;
  v51 = v33;
  typeCopy = type;
  v54 = setCopy;
  brickCopy = brick;
  v49 = responseCopy;
  styleCopy = style;
  v37 = responseCopy;
  v38 = lCopy;
  v39 = objectCopy;
  v40 = titleCopy;
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
  requestedPropertySet = [(MPModelStoreBrowseSectionBuilder *)self requestedPropertySet];
  properties = [requestedPropertySet properties];
  v4 = [properties mutableCopy];

  allSupportedInternalOnlyProperties = [objc_opt_class() allSupportedInternalOnlyProperties];
  properties2 = [allSupportedInternalOnlyProperties properties];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = properties2;
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
  allObjects = [v4 allObjects];
  relationships = [requestedPropertySet relationships];
  v15 = [(MPPropertySet *)v12 initWithProperties:allObjects relationships:relationships];

  return v15;
}

- (MPModelStoreBrowseSectionBuilder)initWithRequestedPropertySet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = MPModelStoreBrowseSectionBuilder;
  v5 = [(MPModelStoreBrowseSectionBuilder *)&v9 init];
  if (v5)
  {
    v6 = [setCopy copy];
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

+ (id)allSupportedPropertiesIncludingInternalOnlyProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"MPModelStoreBrowseSectionPropertyTitle";
  v10[1] = @"MPModelStoreBrowseSectionPropertyType";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [MPPropertySet propertySetWithProperties:v5];

  if (propertiesCopy)
  {
    allSupportedInternalOnlyProperties = [self allSupportedInternalOnlyProperties];
    v8 = [v6 propertySetByCombiningWithPropertySet:allSupportedInternalOnlyProperties];

    v6 = v8;
  }

  return v6;
}

@end