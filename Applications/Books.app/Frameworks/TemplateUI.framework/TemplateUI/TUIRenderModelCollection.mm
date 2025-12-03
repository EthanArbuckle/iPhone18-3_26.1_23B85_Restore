@interface TUIRenderModelCollection
- (BOOL)isEqualToRenderModel:(id)model;
- (CGRect)boundingRectForMatchingQuery:(id)query viewState:(id)state;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelCollection)initWithContent:(id)content sections:(id)sections size:(CGSize)size insets:(UIEdgeInsets)insets visibleBoundsObservers:(id)observers info:(id)info anchorSet:(id)set layoutDirection:(unint64_t)self0 matchingUUID:(id)self1 matchingUID:(id)self2;
- (TUIRenderModelCollection)initWithOther:(id)other;
- (UIEdgeInsets)insets;
- (id)identifierForViewAtIndexPath:(id)path;
- (id)layoutAttributes;
- (id)layoutAttributesForImpressionAtIndexPath:(id)path snapshot:(id)snapshot;
- (id)layoutAttributesForViewAtIndexPath:(id)path withLiveTransformResolver:(id)resolver;
- (id)sectionForIndexPath:(id)path;
- (id)viewAtIndexPath:(id)path factory:(id)factory host:(id)host;
- (id)viewModelWithIndexPath:(id)path;
- (unint64_t)hash;
- (void)appendImpressionLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect snapshot:(id)snapshot;
- (void)appendLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect withLiveTransformResolver:(id)resolver;
- (void)appendLiveTransformViewInvalidationMap:(id)map;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
- (void)invalidateRenderOverride:(id)override flags:(unint64_t)flags feedView:(id)view uids:(id)uids;
- (void)updateVisibleBounds:(CGRect)bounds;
@end

@implementation TUIRenderModelCollection

- (TUIRenderModelCollection)initWithContent:(id)content sections:(id)sections size:(CGSize)size insets:(UIEdgeInsets)insets visibleBoundsObservers:(id)observers info:(id)info anchorSet:(id)set layoutDirection:(unint64_t)self0 matchingUUID:(id)self1 matchingUID:(id)self2
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  contentCopy = content;
  sectionsCopy = sections;
  observersCopy = observers;
  infoCopy = info;
  setCopy = set;
  dCopy = d;
  iDCopy = iD;
  v49.receiver = self;
  v49.super_class = TUIRenderModelCollection;
  v32 = [(TUIRenderModelCollection *)&v49 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_content, content);
    v34 = [sectionsCopy copy];
    sections = v33->_sections;
    v33->_sections = v34;

    v33->_sectionCount = [(NSArray *)v33->_sections count];
    v33->_size.width = width;
    v33->_size.height = height;
    v36 = [observersCopy copy];
    visibleBoundsObservers = v33->_visibleBoundsObservers;
    v33->_visibleBoundsObservers = v36;

    v33->_insets.top = top;
    v33->_insets.left = left;
    v33->_insets.bottom = bottom;
    v33->_insets.right = right;
    v38 = [infoCopy copy];
    info = v33->_info;
    v33->_info = v38;

    v40 = [setCopy copy];
    anchorSet = v33->_anchorSet;
    v33->_anchorSet = v40;

    v33->_layoutDirection = direction;
    v42 = [dCopy copy];
    matchingSectionUUID = v33->_matchingSectionUUID;
    v33->_matchingSectionUUID = v42;

    v44 = [iDCopy copy];
    matchingSectionUID = v33->_matchingSectionUID;
    v33->_matchingSectionUID = v44;

    v46 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    [(TUIRenderModelCollection *)v33 appendLiveTransformViewInvalidationMap:v46];
    liveTransformViewInvalidationMap = v33->_liveTransformViewInvalidationMap;
    v33->_liveTransformViewInvalidationMap = v46;
  }

  return v33;
}

- (TUIRenderModelCollection)initWithOther:(id)other
{
  otherCopy = other;
  v29.receiver = self;
  v29.super_class = TUIRenderModelCollection;
  v5 = [(TUIRenderModelCollection *)&v29 init];
  if (v5)
  {
    content = [otherCopy content];
    content = v5->_content;
    v5->_content = content;

    sections = [otherCopy sections];
    sections = v5->_sections;
    v5->_sections = sections;

    v5->_sectionCount = [(NSArray *)v5->_sections count];
    [otherCopy size];
    v5->_size.width = v10;
    v5->_size.height = v11;
    visibleBoundsObservers = [otherCopy visibleBoundsObservers];
    visibleBoundsObservers = v5->_visibleBoundsObservers;
    v5->_visibleBoundsObservers = visibleBoundsObservers;

    [otherCopy insets];
    v5->_insets.top = v14;
    v5->_insets.left = v15;
    v5->_insets.bottom = v16;
    v5->_insets.right = v17;
    info = [otherCopy info];
    info = v5->_info;
    v5->_info = info;

    anchorSet = [otherCopy anchorSet];
    anchorSet = v5->_anchorSet;
    v5->_anchorSet = anchorSet;

    liveTransformViewInvalidationMap = [otherCopy liveTransformViewInvalidationMap];
    liveTransformViewInvalidationMap = v5->_liveTransformViewInvalidationMap;
    v5->_liveTransformViewInvalidationMap = liveTransformViewInvalidationMap;

    matchingSectionUUID = [otherCopy matchingSectionUUID];
    matchingSectionUUID = v5->_matchingSectionUUID;
    v5->_matchingSectionUUID = matchingSectionUUID;

    matchingSectionUID = [otherCopy matchingSectionUID];
    matchingSectionUID = v5->_matchingSectionUID;
    v5->_matchingSectionUID = matchingSectionUID;
  }

  return v5;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
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
        v13 = *&transform->c;
        v14[0] = *&transform->a;
        v14[1] = v13;
        v14[2] = *&transform->tx;
        [v12 appendResourcesToCollector:collectorCopy transform:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  collectorCopy = collector;
  queryCopy = query;
  resolverCopy = resolver;
  uids = [(TUIRenderModelCollection *)self uids];
  sections = self->_sections;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v15 = *&transform->c;
  v25 = *&transform->a;
  v26 = v15;
  v20[2] = sub_5C668;
  v20[3] = &unk_25F5C0;
  v20[4] = self;
  v21 = uids;
  v27 = *&transform->tx;
  v22 = queryCopy;
  v23 = collectorCopy;
  v24 = resolverCopy;
  v16 = resolverCopy;
  v17 = collectorCopy;
  v18 = queryCopy;
  v19 = uids;
  [(NSArray *)sections enumerateObjectsUsingBlock:v20];
}

- (void)updateVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (self->_layoutDirection == 2)
  {
    v8 = self->_size.width;
    x = v8 - CGRectGetMinX(bounds) - bounds.size.width;
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

- (void)appendLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect withLiveTransformResolver:(id)resolver
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  resolverCopy = resolver;
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
        [v18 appendLayoutAttributes:attributesCopy forElementsInRect:resolverCopy withLiveTransformResolver:{x, y, width, height, v19}];
        [v18 appendLiveTransformLayoutAttributes:attributesCopy forElementsInRect:resolverCopy withLiveTransformResolver:{x, y, width, height}];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (id)layoutAttributesForViewAtIndexPath:(id)path withLiveTransformResolver:(id)resolver
{
  pathCopy = path;
  resolverCopy = resolver;
  tui_section = [pathCopy tui_section];
  if (tui_section >= self->_sectionCount)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_sections objectAtIndexedSubscript:tui_section];
    v10 = [v9 layoutAttributesForViewAtIndexPath:pathCopy withLiveTransformResolver:resolverCopy];
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

        layoutAttributes = [*(*(&v12 + 1) + 8 * i) layoutAttributes];
        [v3 addObjectsFromArray:layoutAttributes];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)viewAtIndexPath:(id)path factory:(id)factory host:(id)host
{
  pathCopy = path;
  factoryCopy = factory;
  hostCopy = host;
  tui_section = [pathCopy tui_section];
  if (tui_section >= self->_sectionCount)
  {
    v13 = 0;
  }

  else
  {
    v12 = [(NSArray *)self->_sections objectAtIndexedSubscript:tui_section];
    v13 = [v12 viewAtIndexPath:pathCopy factory:factoryCopy host:hostCopy];
  }

  return v13;
}

- (void)appendImpressionLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect snapshot:(id)snapshot
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  snapshotCopy = snapshot;
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

        [*(*(&v18 + 1) + 8 * v17) appendImpressionLayoutAttributes:attributesCopy forElementsInRect:snapshotCopy snapshot:{x, y, width, height, v18}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (id)layoutAttributesForImpressionAtIndexPath:(id)path snapshot:(id)snapshot
{
  pathCopy = path;
  snapshotCopy = snapshot;
  tui_section = [pathCopy tui_section];
  if (tui_section >= self->_sectionCount)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_sections objectAtIndexedSubscript:tui_section];
    v10 = [v9 layoutAttributesForImpressionAtIndexPath:pathCopy snapshot:snapshotCopy];
  }

  return v10;
}

- (id)viewModelWithIndexPath:(id)path
{
  pathCopy = path;
  tui_section = [pathCopy tui_section];
  if (tui_section >= self->_sectionCount)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sections objectAtIndexedSubscript:tui_section];
    v7 = [v6 viewModelWithIndex:{objc_msgSend(pathCopy, "tui_row")}];
  }

  return v7;
}

- (id)sectionForIndexPath:(id)path
{
  tui_section = [path tui_section];
  if (tui_section >= self->_sectionCount)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:tui_section];
  }

  return v5;
}

- (id)identifierForViewAtIndexPath:(id)path
{
  pathCopy = path;
  tui_section = [pathCopy tui_section];
  if (tui_section >= self->_sectionCount)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sections objectAtIndexedSubscript:tui_section];
    v7 = [v6 identifierForViewAtIndex:{objc_msgSend(pathCopy, "tui_row")}];
  }

  return v7;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && (v7 = -[TUIRenderModelCollection layoutDirection](self, "layoutDirection"), v7 == [v6 layoutDirection]) && ((-[TUIRenderModelCollection insets](self, "insets"), v9 = v8, v11 = v10, v13 = v12, v15 = v14, objc_msgSend(v6, "insets"), v11 == v19) ? (v20 = v9 == v16) : (v20 = 0), v20 ? (v21 = v15 == v18) : (v21 = 0), v21 ? (v22 = v13 == v17) : (v22 = 0), v22))
  {
    sections = [(TUIRenderModelCollection *)self sections];
    sections2 = [v6 sections];
    if (sections == sections2 || ([(TUIFeedContent *)sections isEqual:sections2]& 1) != 0)
    {

      content = self->_content;
      sections = [v6 content];
      v23 = content == sections;
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

- (void)appendLiveTransformViewInvalidationMap:(id)map
{
  mapCopy = map;
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

        [*(*(&v10 + 1) + 8 * v9) appendLiveTransformViewInvalidationMap:{mapCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)invalidateRenderOverride:(id)override flags:(unint64_t)flags feedView:(id)view uids:(id)uids
{
  overrideCopy = override;
  viewCopy = view;
  uidsCopy = uids;
  v35 = overrideCopy;
  query = [overrideCopy query];
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
  selfCopy = self;
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
        uUID = matchingSectionUUID;
      }

      else
      {
        uUID = [*(*(&v51 + 1) + 8 * v15) UUID];
      }

      v19 = uUID;
      section = [v16 section];
      matchingSectionUID = self->_matchingSectionUID;
      if (matchingSectionUID)
      {
        v22 = matchingSectionUID;
      }

      else
      {
        v22 = [uidsCopy objectAtIndexedSubscript:section];
      }

      v23 = v22;
      if ([query matchesUUID:v19 uid:v22])
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
          v26 = section;
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
              refId = [v29 refId];
              refInstance = [v29 refInstance];
              identifier = [v29 identifier];
              v33 = [query matchesRefId:refId refInstance:refInstance identifier:identifier];

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
        self = selfCopy;
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
    [viewCopy invalidateWithContext:v13];
LABEL_30:
  }
}

- (CGRect)boundingRectForMatchingQuery:(id)query viewState:(id)state
{
  queryCopy = query;
  stateCopy = state;
  v8 = [TUIRenderReferenceCollector referenceCollectorWithViewState:stateCopy];
  v9 = *&CGAffineTransformIdentity.c;
  v25 = *&CGAffineTransformIdentity.a;
  v26 = v9;
  origin = *&CGAffineTransformIdentity.tx;
  [(TUIRenderModelCollection *)self appendReferencesToCollector:v8 transform:&v25 query:queryCopy liveTransformResolver:0];
  renderReferences = [v8 renderReferences];
  v11 = [renderReferences count];

  if (v11)
  {
    *&v25 = 0;
    *(&v25 + 1) = &v25;
    *&v26 = 0x4010000000;
    *(&v26 + 1) = "";
    size = CGRectNull.size;
    origin = CGRectNull.origin;
    v28 = size;
    renderReferences2 = [v8 renderReferences];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_5D810;
    v24[3] = &unk_25F610;
    v24[4] = &v25;
    [renderReferences2 enumerateKeysAndObjectsUsingBlock:v24];

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
  identifier = [(TUIRenderModelCollection *)self identifier];
  v3 = TUIIdentifierHash(identifier);

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