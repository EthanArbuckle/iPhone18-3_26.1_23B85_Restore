@interface TUIRenderModelSection
- (BOOL)isEqualToRenderModel:(id)model;
- (CGAffineTransform)transform;
- (CGPoint)offset;
- (CGRect)frame;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelSection)initWithEntry:(id)entry submodels:(id)submodels config:(id *)config impressions:(id)impressions linkEntities:(id)entities hoverRegions:(id)regions identifierMap:(id)map layoutQueue:(id)self0;
- (_NSRange)viewRange;
- (id).cxx_construct;
- (id)_finalRenderModelForDeletedRenderModel:(id)model;
- (id)_initWithSection:(id)section;
- (id)_initialRenderModelForInsertedRenderModel:(id)model;
- (id)_layoutAttributesForImpression:(id)impression index:(unint64_t)index snapshot:(id)snapshot;
- (id)_layoutAttributesForViewModel:(id)model index:(unint64_t)index withLiveTransformResolver:(id)resolver;
- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags;
- (id)computeDeletedFrom:(id)from;
- (id)computeInsertedFrom:(id)from;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags;
- (id)copyWithContainedSubmodels:(id)submodels;
- (id)copyWithErrors:(id)errors;
- (id)copyWithSection:(unint64_t)section offset:(CGPoint)offset size:(CGSize)size uuid:(id)uuid;
- (id)copyWithSection:(unint64_t)section offset:(CGPoint)offset uuid:(id)uuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifierForViewAtIndex:(unint64_t)index;
- (id)initForTestWithFrame:(CGRect)frame;
- (id)layoutAttributes;
- (id)layoutAttributesForImpressionAtIndexPath:(id)path snapshot:(id)snapshot;
- (id)layoutAttributesForViewAtIndexPath:(id)path withLiveTransformResolver:(id)resolver;
- (id)layoutAttributesForViewModel:(id)model atIndexPath:(id)path withLiveTransformResolver:(id)resolver;
- (id)liveTransformsForKind:(Class)kind;
- (id)viewAtIndexPath:(id)path factory:(id)factory host:(id)host;
- (id)viewModelForIndexPath:(id)path;
- (id)viewModelWithIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)appendImpressionLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect snapshot:(id)snapshot;
- (void)appendLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect withLiveTransformResolver:(id)resolver;
- (void)appendLiveTransformLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect withLiveTransformResolver:(id)resolver;
- (void)appendLiveTransformViewInvalidationMap:(id)map;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation TUIRenderModelSection

- (id)initForTestWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = TUIRenderModelSection;
  result = [(TUIRenderModelSection *)&v10 init];
  if (result)
  {
    *(result + 1) = x;
    *(result + 2) = y;
    *(result + 26) = width;
    *(result + 27) = height;
    v8 = *&CGAffineTransformIdentity.c;
    *(result + 248) = *&CGAffineTransformIdentity.a;
    v9 = *&CGAffineTransformIdentity.tx;
    *(result + 264) = v8;
    *(result + 280) = v9;
    *(result + 13) = 0x3FF0000000000000;
  }

  return result;
}

- (id)_initWithSection:(id)section
{
  sectionCopy = section;
  v26.receiver = self;
  v26.super_class = TUIRenderModelSection;
  v5 = [(TUIRenderModelSection *)&v26 init];
  v6 = v5;
  v7 = v5;
  if (sectionCopy && v5)
  {
    objc_storeStrong(&v5->_entry, sectionCopy->_entry);
    v8 = [(NSArray *)sectionCopy->_viewModels copy];
    viewModels = v7->_viewModels;
    v7->_viewModels = v8;

    v10 = [(NSArray *)sectionCopy->_impressions copy];
    impressions = v7->_impressions;
    v7->_impressions = v10;

    v12 = [(NSArray *)sectionCopy->_linkEntities copy];
    linkEntities = v7->_linkEntities;
    v7->_linkEntities = v12;

    v14 = [(NSDictionary *)sectionCopy->_hoverRegions copy];
    hoverRegions = v7->_hoverRegions;
    v7->_hoverRegions = v14;

    v7->_offset = sectionCopy->_offset;
    v7->_containsLiveTransforms = sectionCopy->_containsLiveTransforms;
    v16 = [(NSArray *)sectionCopy->_errors copy];
    errors = v7->_errors;
    v7->_errors = v16;

    v18 = [(TUIIdentifier *)sectionCopy->_identifier copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v18;

    v7->_size = sectionCopy->_size;
    if (v6 != sectionCopy)
    {
      sub_DA600(&v6->_viewMap, sectionCopy->_viewMap.__tree_.__begin_node_, &sectionCopy->_viewMap.__tree_.__end_node_.__left_);
    }

    v7->_viewRange = sectionCopy->_viewRange;
    objc_storeStrong(&v6->_identifierInterest, sectionCopy->_identifierInterest);
    objc_storeStrong(&v6->_identifierMap, sectionCopy->_identifierMap);
    objc_storeStrong(&v6->_identifierToModelMap, sectionCopy->_identifierToModelMap);
    objc_storeStrong(&v6->_containedSubmodels, sectionCopy->_containedSubmodels);
    objc_storeStrong(&v6->_layoutQueue, sectionCopy->_layoutQueue);
    v20 = *&sectionCopy->_config.flipHorizontal;
    v7->_config.zIndex = sectionCopy->_config.zIndex;
    *&v7->_config.flipHorizontal = v20;
    v21 = *&sectionCopy->_transform.a;
    v22 = *&sectionCopy->_transform.tx;
    *&v6->_transform.c = *&sectionCopy->_transform.c;
    *&v6->_transform.tx = v22;
    *&v7->_transform.a = v21;
    v7->_alpha = sectionCopy->_alpha;
    v23 = [(TUIAnimationGroupRenderModelCollection *)sectionCopy->_animationRenderModels copy];
    animationRenderModels = v7->_animationRenderModels;
    v7->_animationRenderModels = v23;
  }

  return v7;
}

- (TUIRenderModelSection)initWithEntry:(id)entry submodels:(id)submodels config:(id *)config impressions:(id)impressions linkEntities:(id)entities hoverRegions:(id)regions identifierMap:(id)map layoutQueue:(id)self0
{
  entryCopy = entry;
  submodelsCopy = submodels;
  impressionsCopy = impressions;
  entitiesCopy = entities;
  regionsCopy = regions;
  mapCopy = map;
  queueCopy = queue;
  v74.receiver = self;
  v74.super_class = TUIRenderModelSection;
  v18 = [(TUIRenderModelSection *)&v74 init];
  v19 = v18;
  if (v18)
  {
    v61 = queueCopy;
    objc_storeStrong(&v18->_entry, entry);
    v19->_offset = CGPointZero;
    v19->_section = 0;
    v20 = *&config->var0;
    v19->_config.zIndex = config->var2;
    v19->_size = CGSizeZero;
    *&v19->_config.flipHorizontal = v20;
    v19->_alpha = 1.0;
    v21 = *&CGAffineTransformIdentity.c;
    *&v19->_transform.a = *&CGAffineTransformIdentity.a;
    v22 = *&CGAffineTransformIdentity.tx;
    *&v19->_transform.c = v21;
    *&v19->_transform.tx = v22;
    v60 = objc_opt_new();
    v23 = [submodelsCopy copy];
    containedSubmodels = v19->_containedSubmodels;
    v19->_containedSubmodels = v23;

    objc_storeStrong(&v19->_layoutQueue, queue);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_D76C4;
    v72[3] = &unk_261670;
    v25 = v60;
    v73 = v25;
    [submodelsCopy enumerateObjectsUsingBlock:v72];
    v26 = objc_opt_new();
    if ([v25 count])
    {
      v27 = [mapCopy mapViewModels:v25];
      viewModels = v19->_viewModels;
      v19->_viewModels = v27;

      v29 = v19->_viewModels;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v30 = v29;
      v31 = [(NSArray *)v30 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v31)
      {
        v32 = 0;
        v33 = *v77;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v77 != v33)
            {
              objc_enumerationMutation(v30);
            }

            itemIndex = [*(*(&v76 + 1) + 8 * i) itemIndex];
            v80 = &itemIndex;
            sub_DA530(&v19->_viewMap, &itemIndex)[5] = v32++;
          }

          v31 = [(NSArray *)v30 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v31);
      }

      p_end_node = &v19->_viewMap.__tree_.__end_node_;
      left = v19->_viewMap.__tree_.__end_node_.__left_;
      v37 = *(v19->_viewMap.__tree_.__begin_node_ + 4);
      if (left)
      {
        do
        {
          v38 = left;
          left = left[1];
        }

        while (left);
      }

      else
      {
        do
        {
          v38 = p_end_node[2].__left_;
          v39 = *v38 == p_end_node;
          p_end_node = v38;
        }

        while (v39);
      }

      v40 = &v38[4]->__left_ - v37 + 1;
      v19->_viewRange.location = v37;
      v19->_viewRange.length = v40;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v41 = v19->_viewModels;
      v42 = 0;
      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (v43)
      {
        v44 = *v69;
        do
        {
          for (j = 0; j != v43; j = j + 1)
          {
            if (*v69 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v68 + 1) + 8 * j);
            if (v42)
            {
              v42 = 1;
            }

            else
            {
              liveTransform = [*(*(&v68 + 1) + 8 * j) liveTransform];
              v42 = liveTransform != 0;
            }

            identifier = [v46 identifier];
            [v26 setObject:v46 forKeyedSubscript:identifier];
          }

          v43 = [(NSArray *)v41 countByEnumeratingWithState:&v68 objects:v81 count:16];
        }

        while (v43);
      }

      v19->_containsLiveTransforms = v42;
    }

    else
    {
      v19->_viewRange = xmmword_24CA10;
      v19->_containsLiveTransforms = 0;
    }

    v49 = [mapCopy collectInterestWithInvalidationQueue:v61];
    identifierInterest = v19->_identifierInterest;
    v19->_identifierInterest = v49;

    objc_storeStrong(&v19->_identifierMap, map);
    v51 = [impressionsCopy copy];
    impressions = v19->_impressions;
    v19->_impressions = v51;

    v53 = [entitiesCopy copy];
    linkEntities = v19->_linkEntities;
    v19->_linkEntities = v53;

    v55 = [regionsCopy copy];
    hoverRegions = v19->_hoverRegions;
    v19->_hoverRegions = v55;

    v57 = [v26 copy];
    identifierToModelMap = v19->_identifierToModelMap;
    v19->_identifierToModelMap = v57;

    queueCopy = v61;
  }

  return v19;
}

- (id)copyWithContainedSubmodels:(id)submodels
{
  submodelsCopy = submodels;
  v5 = objc_alloc(objc_opt_class());
  entry = self->_entry;
  config = self->_config;
  v7 = [v5 initWithEntry:entry submodels:submodelsCopy config:&config impressions:self->_impressions linkEntities:self->_linkEntities hoverRegions:self->_hoverRegions identifierMap:self->_identifierMap layoutQueue:self->_layoutQueue];
  *(v7 + 13) = self->_size;
  v8 = *&self->_config.flipHorizontal;
  *(v7 + 30) = self->_config.zIndex;
  *(v7 + 14) = v8;
  *(v7 + 17) = self->_section;
  *(v7 + 8) = self->_offset;
  objc_storeStrong(v7 + 16, self->_UUID);
  v9 = [(NSArray *)self->_errors copy];
  v10 = *(v7 + 25);
  *(v7 + 25) = v9;

  return v7;
}

- (id)copyWithErrors:(id)errors
{
  errorsCopy = errors;
  v5 = [(TUIRenderModelSection *)self copyWithContainedSubmodels:self->_containedSubmodels];
  v6 = [errorsCopy copy];
  v7 = v5[25];
  v5[25] = v6;

  return v5;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags
{
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_viewModels;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(TUIRenderModelSection *)self copySubmodel:v10 forInitialAppearanceWithFlags:flags, v17];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 copyForInitialAppearanceWithFlags:flags];
        }

        v14 = v13;

        [v5 addObject:v14];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [(TUIRenderModelSection *)self copyWithContainedSubmodels:v5];
  return v15;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags
{
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_viewModels;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(TUIRenderModelSection *)self copySubmodel:v10 forFinalAppearanceWithFlags:flags, v17];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 copyForFinalAppearanceWithFlags:flags];
        }

        v14 = v13;

        [v5 addObject:v14];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [(TUIRenderModelSection *)self copyWithContainedSubmodels:v5];
  return v15;
}

- (_NSRange)viewRange
{
  length = self->_viewRange.length;
  location = self->_viewRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  [collectorCopy visibleBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(TUIRenderModelSection *)self frame];
  v15 = *&transform->c;
  *&v49.a = *&transform->a;
  *&v49.c = v15;
  *&v49.tx = *&transform->tx;
  v53 = CGRectApplyAffineTransform(v52, &v49);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  [collectorCopy visibleBounds];
  v58.origin.x = v20;
  v58.origin.y = v21;
  v58.size.width = v22;
  v58.size.height = v23;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  if (CGRectIntersectsRect(v54, v58))
  {
    v55.origin.x = v8;
    v55.origin.y = v10;
    v55.size.width = v12;
    v55.size.height = v14;
    if (CGRectIsInfinite(v55))
    {
      v47 = 0uLL;
      v48 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v24 = self->_viewModels;
      v25 = [(NSArray *)v24 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v25)
      {
        v26 = *v46;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v45 + 1) + 8 * i);
            v29 = *&transform->c;
            *&v49.a = *&transform->a;
            *&v49.c = v29;
            *&v49.tx = *&transform->tx;
            [v28 appendResourcesToCollector:collectorCopy transform:&v49];
          }

          v25 = [(NSArray *)v24 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v25);
      }
    }

    else
    {
      memset(&v49, 0, sizeof(v49));
      CGAffineTransformMakeTranslation(&t1, self->_offset.x, self->_offset.y);
      v30 = *&transform->c;
      *&t2.a = *&transform->a;
      *&t2.c = v30;
      *&t2.tx = *&transform->tx;
      CGAffineTransformConcat(&v49, &t1, &t2);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v31 = self->_viewModels;
      v32 = [(NSArray *)v31 countByEnumeratingWithState:&v39 objects:v50 count:16];
      if (v32)
      {
        v33 = *v40;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v40 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v39 + 1) + 8 * j);
            [v35 frame];
            v56.origin.x = v36 + self->_offset.x;
            v56.origin.y = v37 + self->_offset.y;
            v38 = *&transform->c;
            *&t1.a = *&transform->a;
            *&t1.c = v38;
            *&t1.tx = *&transform->tx;
            v57 = CGRectApplyAffineTransform(v56, &t1);
            v59.origin.x = v8;
            v59.origin.y = v10;
            v59.size.width = v12;
            v59.size.height = v14;
            if (CGRectIntersectsRect(v57, v59))
            {
              t1 = v49;
              [v35 appendResourcesToCollector:collectorCopy transform:&t1];
            }
          }

          v32 = [(NSArray *)v31 countByEnumeratingWithState:&v39 objects:v50 count:16];
        }

        while (v32);
      }
    }
  }
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  collectorCopy = collector;
  queryCopy = query;
  resolverCopy = resolver;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_viewModels;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = *&transform->c;
        v19[0] = *&transform->a;
        v19[1] = v18;
        v19[2] = *&transform->tx;
        [v17 appendReferencesToCollector:collectorCopy transform:v19 query:queryCopy liveTransformResolver:resolverCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }
}

- (id)copyWithSection:(unint64_t)section offset:(CGPoint)offset size:(CGSize)size uuid:(id)uuid
{
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  uuidCopy = uuid;
  selfCopy = self;
  v15 = selfCopy;
  if (selfCopy->_section != section || (x == selfCopy->_offset.x ? (v16 = y == selfCopy->_offset.y) : (v16 = 0), !v16 || (width == selfCopy->_size.width ? (v17 = height == selfCopy->_size.height) : (v17 = 0), !v17 || (UUID = selfCopy->_UUID, UUID != uuidCopy) && ([(NSUUID *)UUID isEqual:uuidCopy]& 1) == 0)))
  {
    v19 = [objc_alloc(objc_opt_class()) _initWithSection:v15];

    v19->_section = section;
    v19->_offset.x = x;
    v19->_offset.y = y;
    objc_storeStrong(&v19->_UUID, uuid);
    v19->_size.width = width;
    v19->_size.height = height;
    v15 = v19;
  }

  return v15;
}

- (id)copyWithSection:(unint64_t)section offset:(CGPoint)offset uuid:(id)uuid
{
  y = offset.y;
  x = offset.x;
  uuidCopy = uuid;
  selfCopy = self;
  v12 = selfCopy;
  if (selfCopy->_section != section || (x == selfCopy->_offset.x ? (v13 = y == selfCopy->_offset.y) : (v13 = 0), !v13 || (UUID = selfCopy->_UUID, UUID != uuidCopy) && ([(NSUUID *)UUID isEqual:uuidCopy]& 1) == 0))
  {
    v15 = [objc_alloc(objc_opt_class()) _initWithSection:v12];

    v15->_section = section;
    v15->_offset.x = x;
    v15->_offset.y = y;
    objc_storeStrong(&v15->_UUID, uuid);
    v12 = v15;
  }

  return v12;
}

- (CGRect)frame
{
  x = self->_offset.x;
  y = self->_offset.y;
  width = self->_size.width;
  height = self->_size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)_layoutAttributesForViewModel:(id)model index:(unint64_t)index withLiveTransformResolver:(id)resolver
{
  modelCopy = model;
  resolverCopy = resolver;
  [modelCopy outsets];
  v46 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [modelCopy size];
  v18 = v17;
  [modelCopy size];
  v20 = v19;
  v21 = [NSIndexPath tui_indexPathForRow:index inSection:self->_section];
  v22 = [TUILayoutAttributes newLayoutAttributesWithIndexPath:v21];

  [modelCopy center];
  v24 = v23;
  v26 = v25;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  if (modelCopy)
  {
    [modelCopy transform];
  }

  zIndex = [modelCopy zIndex];
  liveTransform = [modelCopy liveTransform];
  v45 = v16;
  v29 = v14 + v16 + v18;
  v30 = v12 + v46 + v20;

  if (resolverCopy && liveTransform)
  {
    v31 = [resolverCopy liveLayoutAttributesForRenderModel:modelCopy];
    [v31 size];
    v29 = v32;
    [v31 size];
    v30 = v33;
    if (v31)
    {
      [v31 transform];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
    }

    v50 = v47;
    v51 = v48;
    v52 = v49;
    [v31 center];
    v24 = v34;
    [v31 center];
    v26 = v35;
  }

  [modelCopy size];
  v37 = v36;
  [modelCopy size];
  v39 = v38;
  if (self->_config.flipHorizontal)
  {
    v40 = self->_config.width - (v24 + v29 * 0.5 - (v14 + v37 * 0.5));
  }

  else
  {
    v40 = v24 + v29 * 0.5 - (v14 + v37 * 0.5);
  }

  [v22 setBounds:{0.0, 0.0, v29, v30}];
  v47 = v50;
  v48 = v51;
  v49 = v52;
  [v22 setTransform:&v47];
  [v22 setCenter:{v40, v26 + v30 * 0.5 - (v12 + v39 * 0.5)}];
  [modelCopy alpha];
  [v22 setAlpha:?];
  [v22 setZIndex:zIndex];
  submodel = [modelCopy submodel];
  [v22 setRenderModel:submodel];

  refId = [modelCopy refId];
  [v22 setRefId:refId];

  refInstance = [modelCopy refInstance];
  [v22 setRefInstance:refInstance];

  [v22 setOutsets:{v12, v14, v46, v45}];

  return v22;
}

- (id)_layoutAttributesForImpression:(id)impression index:(unint64_t)index snapshot:(id)snapshot
{
  impressionCopy = impression;
  snapshotCopy = snapshot;
  v10 = [NSIndexPath tui_indexPathForRow:index inSection:self->_section];
  v11 = [TUILayoutAttributes newLayoutAttributesWithIndexPath:v10];

  [impressionCopy size];
  v13 = v12;
  [impressionCopy size];
  v15 = v14;
  [impressionCopy center];
  v18 = v17;
  if (self->_config.flipHorizontal)
  {
    v19 = self->_config.width - v16;
  }

  else
  {
    v19 = v16;
  }

  [v11 setBounds:{0.0, 0.0, v13, v15}];
  if (impressionCopy)
  {
    [impressionCopy transform];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  [v11 setTransform:v24];
  [v11 setCenter:{v19, v18}];
  [v11 setZIndex:1000];
  data = [impressionCopy data];
  identifier = [data identifier];
  v22 = [snapshotCopy impressionForIdentifier:identifier];
  [v11 setGeneric:v22];

  return v11;
}

- (void)appendLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect withLiveTransformResolver:(id)resolver
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  resolverCopy = resolver;
  [(TUIRenderModelSection *)self frame];
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (CGRectIntersectsRect(v30, v32))
  {
    v13 = self->_offset.x;
    v14 = self->_offset.y;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_viewModels;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = x - v13;
      v18 = y - v14;
      v19 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          liveTransform = [v21 liveTransform];
          v23 = liveTransform == 0;

          if (v23)
          {
            v24 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v21, [v21 itemIndex], resolverCopy);
            [v24 frame];
            v33.origin.x = v17;
            v33.origin.y = v18;
            v33.size.width = width;
            v33.size.height = height;
            if (CGRectIntersectsRect(v31, v33))
            {
              [attributesCopy addObject:v24];
            }
          }
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (void)appendLiveTransformLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect withLiveTransformResolver:(id)resolver
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributesCopy = attributes;
  resolverCopy = resolver;
  v13 = self->_offset.x;
  v14 = self->_offset.y;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = self->_viewModels;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = x - v13;
    v18 = y - v14;
    v19 = *v26;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        liveTransform = [v21 liveTransform];
        v23 = liveTransform == 0;

        if (!v23)
        {
          v24 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v21, [v21 itemIndex], resolverCopy);
          [v24 frame];
          v31.origin.x = v17;
          v31.origin.y = v18;
          v31.size.width = width;
          v31.size.height = height;
          if (CGRectIntersectsRect(v30, v31))
          {
            [attributesCopy addObject:v24];
          }
        }
      }

      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }
}

- (id)layoutAttributesForViewModel:(id)model atIndexPath:(id)path withLiveTransformResolver:(id)resolver
{
  modelCopy = model;
  pathCopy = path;
  resolverCopy = resolver;
  v11 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", modelCopy, [pathCopy tui_row], resolverCopy);

  return v11;
}

- (id)layoutAttributes
{
  v3 = objc_opt_new();
  [(TUIRenderModelSection *)self frame];
  [(TUIRenderModelSection *)self appendLayoutAttributes:v3 forElementsInRect:0 withLiveTransformResolver:?];
  [(TUIRenderModelSection *)self frame];
  [(TUIRenderModelSection *)self appendLiveTransformLayoutAttributes:v3 forElementsInRect:0 withLiveTransformResolver:?];
  v4 = [v3 copy];

  return v4;
}

- (void)appendImpressionLayoutAttributes:(id)attributes forElementsInRect:(CGRect)rect snapshot:(id)snapshot
{
  attributesCopy = attributes;
  snapshotCopy = snapshot;
  if (+[TUIImpressionController debugEnabled])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_impressions;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      v12 = 1000000000;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(TUIRenderModelSection *)self _layoutAttributesForImpression:*(*(&v15 + 1) + 8 * v13) index:v12 snapshot:snapshotCopy, v15];
          [attributesCopy addObject:v14];

          ++v12;
          v13 = v13 + 1;
        }

        while (v10 != v13);
        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (id)layoutAttributesForImpressionAtIndexPath:(id)path snapshot:(id)snapshot
{
  pathCopy = path;
  snapshotCopy = snapshot;
  if (+[TUIImpressionController debugEnabled](TUIImpressionController, "debugEnabled") && [pathCopy tui_row] >= 0x3B9ACA00 && (v8 = objc_msgSend(pathCopy, "tui_row"), v8 - 1000000000 < -[NSArray count](self->_impressions, "count")))
  {
    v9 = [(NSArray *)self->_impressions objectAtIndexedSubscript:?];
    v10 = -[TUIRenderModelSection _layoutAttributesForImpression:index:snapshot:](self, "_layoutAttributesForImpression:index:snapshot:", v9, [pathCopy tui_row], snapshotCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForViewAtIndexPath:(id)path withLiveTransformResolver:(id)resolver
{
  pathCopy = path;
  resolverCopy = resolver;
  v8 = pathCopy;
  tui_row = [v8 tui_row];
  left = self->_viewMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->_viewMap.__tree_.__end_node_;
  do
  {
    length = left->_viewRange.length;
    v13 = length >= tui_row;
    v14 = length < tui_row;
    if (v13)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + v14);
  }

  while (left);
  if (p_end_node != &self->_viewMap.__tree_.__end_node_ && tui_row >= p_end_node->_viewRange.length)
  {
    begin_node = p_end_node->_viewMap.__tree_.__begin_node_;
  }

  else
  {
LABEL_9:
    begin_node = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (begin_node >= [(NSArray *)self->_viewModels count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [(NSArray *)self->_viewModels objectAtIndexedSubscript:begin_node];
    if (v16)
    {
      v17 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v16, [v8 tui_row], resolverCopy);
      goto LABEL_15;
    }
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)viewAtIndexPath:(id)path factory:(id)factory host:(id)host
{
  pathCopy = path;
  factoryCopy = factory;
  hostCopy = host;
  if ([pathCopy tui_row] > 0x3B9AC9FF)
  {
    v14 = [factoryCopy viewFactoryDequeueReusableSubviewWithReuseIdentifier:@"TUIReuseIdentifierImpressionOverlayView" indexPath:pathCopy host:hostCopy];
  }

  else
  {
    v11 = -[TUIRenderModelSection viewModelWithIndex:](self, "viewModelWithIndex:", [pathCopy tui_row]);
    submodel = [v11 submodel];
    reuseIdentifier = [submodel reuseIdentifier];

    v14 = [factoryCopy viewFactoryDequeueReusableSubviewWithReuseIdentifier:reuseIdentifier indexPath:pathCopy host:hostCopy];
  }

  return v14;
}

- (id)viewModelWithIndex:(unint64_t)index
{
  left = self->_viewMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->_viewMap.__tree_.__end_node_;
  do
  {
    length = left->_viewRange.length;
    v7 = length >= index;
    v8 = length < index;
    if (v7)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + v8);
  }

  while (left);
  if (p_end_node != &self->_viewMap.__tree_.__end_node_ && p_end_node->_viewRange.length <= index)
  {
    begin_node = p_end_node->_viewMap.__tree_.__begin_node_;
  }

  else
  {
LABEL_9:
    begin_node = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (begin_node >= [(NSArray *)self->_viewModels count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSArray *)self->_viewModels objectAtIndexedSubscript:begin_node];
  }

  return v10;
}

- (id)viewModelForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[TUIRenderModelSection viewModelWithIndex:](self, "viewModelWithIndex:", [pathCopy tui_row]);

  return v5;
}

- (id)identifierForViewAtIndex:(unint64_t)index
{
  v4 = [(TUIRenderModelSection *)self viewModelWithIndex:index];
  identifier = [v4 identifier];
  uUID = [(TUIRenderModelSection *)self UUID];
  v7 = [identifier tui_identifierByPrependingUUID:uUID];

  return v7;
}

- (id)_initialRenderModelForInsertedRenderModel:(id)model
{
  v3 = [model copyWithAlpha:0.0];

  return v3;
}

- (id)_finalRenderModelForDeletedRenderModel:(id)model
{
  v3 = [model copyWithAlpha:0.0];

  return v3;
}

- (id)computeDeletedFrom:(id)from
{
  fromCopy = from;
  viewModels = [fromCopy viewModels];
  viewModels = self->_viewModels;
  v25 = viewModels;
  v26 = viewModels;
  v27 = fromCopy;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v26, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v26;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        identifier = [v12 identifier];
        [v7 setObject:v12 forKeyedSubscript:identifier];
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v25;
  v15 = 0;
  v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        identifier2 = [v19 identifier];
        v21 = [v7 objectForKeyedSubscript:identifier2];

        if (!v21)
        {
          if (!v15)
          {
            v15 = objc_opt_new();
          }

          v22 = [v27 _finalRenderModelForDeletedRenderModel:v19];
          [v15 addObject:v22];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  v23 = [v15 copy];

  return v23;
}

- (id)computeInsertedFrom:(id)from
{
  fromCopy = from;
  viewModels = [fromCopy viewModels];
  viewModels = self->_viewModels;
  v27 = viewModels;
  v6 = viewModels;
  selfCopy = self;
  v26 = v6;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v6, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v27;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        identifier = [v12 identifier];
        [v7 setObject:v12 forKeyedSubscript:identifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v26;
  v15 = 0;
  v16 = [(NSArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        identifier2 = [v19 identifier];
        v21 = [v7 objectForKeyedSubscript:identifier2];

        if (!v21)
        {
          if (!v15)
          {
            v15 = objc_opt_new();
          }

          v22 = [(TUIRenderModelSection *)selfCopy _initialRenderModelForInsertedRenderModel:v19];
          [v15 addObject:v22];
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  v23 = [v15 copy];

  return v23;
}

- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags
{
  currentCopy = current;
  fromCopy = from;
  trackerCopy = tracker;
  v13 = [[TUIRenderUpdateArrayContainer alloc] initWithCurrent:currentCopy from:fromCopy to:self tracker:trackerCopy flags:flags];

  return v13;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);
  LOBYTE(self) = TUIRenderModelArrayContainingIsEqualToRenderModelArrayContaining(self, v6);

  return self;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelSection *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" UUID=%@", self->_UUID];
  v7 = [NSNumber numberWithUnsignedInteger:self->_section];
  [v6 appendFormat:@" section=%@", v7];

  v8 = NSStringFromCGPoint(self->_offset);
  [v6 appendFormat:@" offset=%@", v8];

  v9 = NSStringFromCGSize(self->_size);
  [v6 appendFormat:@" size=%@", v9];

  [v6 appendFormat:@" viewModels=%@", self->_viewModels];
  [v6 appendFormat:@">"];
  v10 = [v6 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initWithSection:", self}];
  *(v4 + 17) = self->_section;
  objc_storeStrong(v4 + 16, self->_UUID);
  return v4;
}

- (id)liveTransformsForKind:(Class)kind
{
  v5 = objc_alloc_init(NSHashTable);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_viewModels;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        liveTransform = [v10 liveTransform];
        if (liveTransform)
        {
          liveTransform2 = [v10 liveTransform];
          v13 = [liveTransform2 kind] == kind;

          if (v13)
          {
            liveTransform3 = [v10 liveTransform];
            [v5 addObject:liveTransform3];
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)appendLiveTransformViewInvalidationMap:(id)map
{
  mapCopy = map;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_viewModels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        liveTransform = [v9 liveTransform];
        v11 = liveTransform == 0;

        if (!v11)
        {
          v12 = +[NSIndexPath tui_indexPathForRow:inSection:](NSIndexPath, "tui_indexPathForRow:inSection:", [v9 itemIndex], self->_section);
          liveTransform2 = [v9 liveTransform];
          v14 = [mapCopy objectForKey:liveTransform2];
          if (!v14)
          {
            v14 = objc_opt_new();
            [mapCopy setObject:v14 forKey:liveTransform2];
          }

          [v14 addObject:v12];
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[5].d;
  v4 = *&self[5].ty;
  *&retstr->a = *&self[5].b;
  *&retstr->c = v3;
  *&retstr->tx = v4;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_transform.c = *&transform->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end