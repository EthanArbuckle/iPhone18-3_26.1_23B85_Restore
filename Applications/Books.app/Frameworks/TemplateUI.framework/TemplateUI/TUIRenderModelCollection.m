@interface TUIRenderModelCollection
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGRect)boundingRectForMatchingQuery:(id)a3 viewState:(id)a4;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelCollection)initWithContent:(id)a3 sections:(id)a4 size:(CGSize)a5 insets:(UIEdgeInsets)a6 visibleBoundsObservers:(id)a7 info:(id)a8 anchorSet:(id)a9 layoutDirection:(unint64_t)a10 matchingUUID:(id)a11 matchingUID:(id)a12;
- (TUIRenderModelCollection)initWithOther:(id)a3;
- (UIEdgeInsets)insets;
- (id)identifierForViewAtIndexPath:(id)a3;
- (id)layoutAttributes;
- (id)layoutAttributesForImpressionAtIndexPath:(id)a3 snapshot:(id)a4;
- (id)layoutAttributesForViewAtIndexPath:(id)a3 withLiveTransformResolver:(id)a4;
- (id)sectionForIndexPath:(id)a3;
- (id)viewAtIndexPath:(id)a3 factory:(id)a4 host:(id)a5;
- (id)viewModelWithIndexPath:(id)a3;
- (unint64_t)hash;
- (void)appendImpressionLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 snapshot:(id)a5;
- (void)appendLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 withLiveTransformResolver:(id)a5;
- (void)appendLiveTransformViewInvalidationMap:(id)a3;
- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
- (void)invalidateRenderOverride:(id)a3 flags:(unint64_t)a4 feedView:(id)a5 uids:(id)a6;
- (void)updateVisibleBounds:(CGRect)a3;
@end

@implementation TUIRenderModelCollection

- (TUIRenderModelCollection)initWithContent:(id)a3 sections:(id)a4 size:(CGSize)a5 insets:(UIEdgeInsets)a6 visibleBoundsObservers:(id)a7 info:(id)a8 anchorSet:(id)a9 layoutDirection:(unint64_t)a10 matchingUUID:(id)a11 matchingUID:(id)a12
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  height = a5.height;
  width = a5.width;
  v25 = a3;
  v26 = a4;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v30 = a11;
  v31 = a12;
  v49.receiver = self;
  v49.super_class = TUIRenderModelCollection;
  v32 = [(TUIRenderModelCollection *)&v49 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_content, a3);
    v34 = [v26 copy];
    sections = v33->_sections;
    v33->_sections = v34;

    v33->_sectionCount = [(NSArray *)v33->_sections count];
    v33->_size.width = width;
    v33->_size.height = height;
    v36 = [v27 copy];
    visibleBoundsObservers = v33->_visibleBoundsObservers;
    v33->_visibleBoundsObservers = v36;

    v33->_insets.top = top;
    v33->_insets.left = left;
    v33->_insets.bottom = bottom;
    v33->_insets.right = right;
    v38 = [v28 copy];
    info = v33->_info;
    v33->_info = v38;

    v40 = [v29 copy];
    anchorSet = v33->_anchorSet;
    v33->_anchorSet = v40;

    v33->_layoutDirection = a10;
    v42 = [v30 copy];
    matchingSectionUUID = v33->_matchingSectionUUID;
    v33->_matchingSectionUUID = v42;

    v44 = [v31 copy];
    matchingSectionUID = v33->_matchingSectionUID;
    v33->_matchingSectionUID = v44;

    v46 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    [(TUIRenderModelCollection *)v33 appendLiveTransformViewInvalidationMap:v46];
    liveTransformViewInvalidationMap = v33->_liveTransformViewInvalidationMap;
    v33->_liveTransformViewInvalidationMap = v46;
  }

  return v33;
}

- (TUIRenderModelCollection)initWithOther:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = TUIRenderModelCollection;
  v5 = [(TUIRenderModelCollection *)&v29 init];
  if (v5)
  {
    v6 = [v4 content];
    content = v5->_content;
    v5->_content = v6;

    v8 = [v4 sections];
    sections = v5->_sections;
    v5->_sections = v8;

    v5->_sectionCount = [(NSArray *)v5->_sections count];
    [v4 size];
    v5->_size.width = v10;
    v5->_size.height = v11;
    v12 = [v4 visibleBoundsObservers];
    visibleBoundsObservers = v5->_visibleBoundsObservers;
    v5->_visibleBoundsObservers = v12;

    [v4 insets];
    v5->_insets.top = v14;
    v5->_insets.left = v15;
    v5->_insets.bottom = v16;
    v5->_insets.right = v17;
    v18 = [v4 info];
    info = v5->_info;
    v5->_info = v18;

    v20 = [v4 anchorSet];
    anchorSet = v5->_anchorSet;
    v5->_anchorSet = v20;

    v22 = [v4 liveTransformViewInvalidationMap];
    liveTransformViewInvalidationMap = v5->_liveTransformViewInvalidationMap;
    v5->_liveTransformViewInvalidationMap = v22;

    v24 = [v4 matchingSectionUUID];
    matchingSectionUUID = v5->_matchingSectionUUID;
    v5->_matchingSectionUUID = v24;

    v26 = [v4 matchingSectionUID];
    matchingSectionUID = v5->_matchingSectionUID;
    v5->_matchingSectionUID = v26;
  }

  return v5;
}

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_sections;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = *&a4->c;
        v14[0] = *&a4->a;
        v14[1] = v13;
        v14[2] = *&a4->tx;
        [v12 appendResourcesToCollector:v6 transform:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(TUIRenderModelCollection *)self uids];
  sections = self->_sections;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v15 = *&a4->c;
  v25 = *&a4->a;
  v26 = v15;
  v20[2] = sub_5C668;
  v20[3] = &unk_25F5C0;
  v20[4] = self;
  v21 = v13;
  v27 = *&a4->tx;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  v19 = v13;
  [(NSArray *)sections enumerateObjectsUsingBlock:v20];
}

- (void)updateVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_layoutDirection == 2)
  {
    v8 = self->_size.width;
    x = v8 - CGRectGetMinX(a3) - a3.size.width;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_visibleBoundsObservers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * i) visibleBoundsUpdated:{x, y, width, height, v14}];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)appendLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 withLiveTransformResolver:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_sections;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        [v18 appendLayoutAttributes:v11 forElementsInRect:v12 withLiveTransformResolver:{x, y, width, height, v19}];
        [v18 appendLiveTransformLayoutAttributes:v11 forElementsInRect:v12 withLiveTransformResolver:{x, y, width, height}];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (id)layoutAttributesForViewAtIndexPath:(id)a3 withLiveTransformResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 tui_section];
  if (v8 >= self->_sectionCount)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_sections objectAtIndexedSubscript:v8];
    v10 = [v9 layoutAttributesForViewAtIndexPath:v6 withLiveTransformResolver:v7];
  }

  return v10;
}

- (id)layoutAttributes
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) layoutAttributes];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)viewAtIndexPath:(id)a3 factory:(id)a4 host:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 tui_section];
  if (v11 >= self->_sectionCount)
  {
    v13 = 0;
  }

  else
  {
    v12 = [(NSArray *)self->_sections objectAtIndexedSubscript:v11];
    v13 = [v12 viewAtIndexPath:v8 factory:v9 host:v10];
  }

  return v13;
}

- (void)appendImpressionLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 snapshot:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_sections;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17) appendImpressionLayoutAttributes:v11 forElementsInRect:v12 snapshot:{x, y, width, height, v18}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (id)layoutAttributesForImpressionAtIndexPath:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 tui_section];
  if (v8 >= self->_sectionCount)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_sections objectAtIndexedSubscript:v8];
    v10 = [v9 layoutAttributesForImpressionAtIndexPath:v6 snapshot:v7];
  }

  return v10;
}

- (id)viewModelWithIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 tui_section];
  if (v5 >= self->_sectionCount)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sections objectAtIndexedSubscript:v5];
    v7 = [v6 viewModelWithIndex:{objc_msgSend(v4, "tui_row")}];
  }

  return v7;
}

- (id)sectionForIndexPath:(id)a3
{
  v4 = [a3 tui_section];
  if (v4 >= self->_sectionCount)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)identifierForViewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 tui_section];
  if (v5 >= self->_sectionCount)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sections objectAtIndexedSubscript:v5];
    v7 = [v6 identifierForViewAtIndex:{objc_msgSend(v4, "tui_row")}];
  }

  return v7;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && (v7 = -[TUIRenderModelCollection layoutDirection](self, "layoutDirection"), v7 == [v6 layoutDirection]) && ((-[TUIRenderModelCollection insets](self, "insets"), v9 = v8, v11 = v10, v13 = v12, v15 = v14, objc_msgSend(v6, "insets"), v11 == v19) ? (v20 = v9 == v16) : (v20 = 0), v20 ? (v21 = v15 == v18) : (v21 = 0), v21 ? (v22 = v13 == v17) : (v22 = 0), v22))
  {
    v25 = [(TUIRenderModelCollection *)self sections];
    v26 = [v6 sections];
    if (v25 == v26 || ([(TUIFeedContent *)v25 isEqual:v26]& 1) != 0)
    {

      content = self->_content;
      v25 = [v6 content];
      v23 = content == v25;
    }

    else
    {

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)appendLiveTransformViewInvalidationMap:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) appendLiveTransformViewInvalidationMap:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)invalidateRenderOverride:(id)a3 flags:(unint64_t)a4 feedView:(id)a5 uids:(id)a6
{
  v9 = a3;
  v36 = a5;
  v37 = a6;
  v35 = v9;
  v46 = [v9 query];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10 = self->_sections;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (!v11)
  {
    v13 = v10;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v52;
  v39 = v10;
  v40 = self;
  v38 = *v52;
  do
  {
    v15 = 0;
    v41 = v12;
    do
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v51 + 1) + 8 * v15);
      matchingSectionUUID = self->_matchingSectionUUID;
      if (matchingSectionUUID)
      {
        v18 = matchingSectionUUID;
      }

      else
      {
        v18 = [*(*(&v51 + 1) + 8 * v15) UUID];
      }

      v19 = v18;
      v20 = [v16 section];
      matchingSectionUID = self->_matchingSectionUID;
      if (matchingSectionUID)
      {
        v22 = matchingSectionUID;
      }

      else
      {
        v22 = [v37 objectAtIndexedSubscript:v20];
      }

      v23 = v22;
      if ([v46 matchesUUID:v19 uid:v22])
      {
        v42 = v23;
        v43 = v19;
        v44 = v15;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = [v16 viewModels];
        v24 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = v20;
          v27 = *v48;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v48 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v47 + 1) + 8 * i);
              v30 = [v29 refId];
              v31 = [v29 refInstance];
              v32 = [v29 identifier];
              v33 = [v46 matchesRefId:v30 refInstance:v31 identifier:v32];

              if (v33)
              {
                if (!v13)
                {
                  v13 = objc_alloc_init(TUIFeedViewInvalidationContext);
                }

                v34 = +[NSIndexPath tui_indexPathForRow:inSection:](NSIndexPath, "tui_indexPathForRow:inSection:", [v29 itemIndex], v26);
                [(TUIFeedViewInvalidationContext *)v13 invalidateIndexPath:v34];
              }
            }

            v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v25);
        }

        v10 = v39;
        self = v40;
        v14 = v38;
        v12 = v41;
        v23 = v42;
        v19 = v43;
        v15 = v44;
      }

      v15 = v15 + 1;
    }

    while (v15 != v12);
    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
  }

  while (v12);

  if (v13)
  {
    [v36 invalidateWithContext:v13];
LABEL_30:
  }
}

- (CGRect)boundingRectForMatchingQuery:(id)a3 viewState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TUIRenderReferenceCollector referenceCollectorWithViewState:v7];
  v9 = *&CGAffineTransformIdentity.c;
  v25 = *&CGAffineTransformIdentity.a;
  v26 = v9;
  origin = *&CGAffineTransformIdentity.tx;
  [(TUIRenderModelCollection *)self appendReferencesToCollector:v8 transform:&v25 query:v6 liveTransformResolver:0];
  v10 = [v8 renderReferences];
  v11 = [v10 count];

  if (v11)
  {
    *&v25 = 0;
    *(&v25 + 1) = &v25;
    *&v26 = 0x4010000000;
    *(&v26 + 1) = "";
    size = CGRectNull.size;
    origin = CGRectNull.origin;
    v28 = size;
    v13 = [v8 renderReferences];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_5D810;
    v24[3] = &unk_25F610;
    v24[4] = &v25;
    [v13 enumerateKeysAndObjectsUsingBlock:v24];

    if (self->_layoutDirection == 2)
    {
      [(TUIRenderModelCollection *)self size];
      x = v14 - CGRectGetMaxX(*(*(&v25 + 1) + 32));
      v16 = *(&v25 + 1);
      *(*(&v25 + 1) + 32) = x;
    }

    else
    {
      v16 = *(&v25 + 1);
      x = *(*(&v25 + 1) + 32);
    }

    y = v16[5];
    width = v16[6];
    height = v16[7];
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (unint64_t)hash
{
  v2 = [(TUIRenderModelCollection *)self identifier];
  v3 = TUIIdentifierHash(v2);

  return v3;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  v7 = NSStringFromCGSize(self->_size);
  [v6 appendFormat:@" size=%@", v7];

  v8 = [NSNumber numberWithUnsignedInteger:self->_sectionCount];
  [v6 appendFormat:@" sectionCount=%@", v8];

  [v6 appendFormat:@" sections=%@", self->_sections];
  [v6 appendFormat:@">"];
  v9 = [v6 copy];

  return v9;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end