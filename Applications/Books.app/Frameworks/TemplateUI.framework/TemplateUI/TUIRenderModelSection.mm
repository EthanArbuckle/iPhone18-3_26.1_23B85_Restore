@interface TUIRenderModelSection
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGAffineTransform)transform;
- (CGPoint)offset;
- (CGRect)frame;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelSection)initWithEntry:(id)a3 submodels:(id)a4 config:(id *)a5 impressions:(id)a6 linkEntities:(id)a7 hoverRegions:(id)a8 identifierMap:(id)a9 layoutQueue:(id)a10;
- (_NSRange)viewRange;
- (id).cxx_construct;
- (id)_finalRenderModelForDeletedRenderModel:(id)a3;
- (id)_initWithSection:(id)a3;
- (id)_initialRenderModelForInsertedRenderModel:(id)a3;
- (id)_layoutAttributesForImpression:(id)a3 index:(unint64_t)a4 snapshot:(id)a5;
- (id)_layoutAttributesForViewModel:(id)a3 index:(unint64_t)a4 withLiveTransformResolver:(id)a5;
- (id)computeContainerUpdateCurrent:(id)a3 from:(id)a4 tracker:(id)a5 flags:(unint64_t)a6;
- (id)computeDeletedFrom:(id)a3;
- (id)computeInsertedFrom:(id)a3;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)a3;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)a3;
- (id)copyWithContainedSubmodels:(id)a3;
- (id)copyWithErrors:(id)a3;
- (id)copyWithSection:(unint64_t)a3 offset:(CGPoint)a4 size:(CGSize)a5 uuid:(id)a6;
- (id)copyWithSection:(unint64_t)a3 offset:(CGPoint)a4 uuid:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifierForViewAtIndex:(unint64_t)a3;
- (id)initForTestWithFrame:(CGRect)a3;
- (id)layoutAttributes;
- (id)layoutAttributesForImpressionAtIndexPath:(id)a3 snapshot:(id)a4;
- (id)layoutAttributesForViewAtIndexPath:(id)a3 withLiveTransformResolver:(id)a4;
- (id)layoutAttributesForViewModel:(id)a3 atIndexPath:(id)a4 withLiveTransformResolver:(id)a5;
- (id)liveTransformsForKind:(Class)a3;
- (id)viewAtIndexPath:(id)a3 factory:(id)a4 host:(id)a5;
- (id)viewModelForIndexPath:(id)a3;
- (id)viewModelWithIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)appendImpressionLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 snapshot:(id)a5;
- (void)appendLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 withLiveTransformResolver:(id)a5;
- (void)appendLiveTransformLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 withLiveTransformResolver:(id)a5;
- (void)appendLiveTransformViewInvalidationMap:(id)a3;
- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation TUIRenderModelSection

- (id)initForTestWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (id)_initWithSection:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TUIRenderModelSection;
  v5 = [(TUIRenderModelSection *)&v26 init];
  v6 = v5;
  v7 = v5;
  if (v4 && v5)
  {
    objc_storeStrong(&v5->_entry, v4->_entry);
    v8 = [(NSArray *)v4->_viewModels copy];
    viewModels = v7->_viewModels;
    v7->_viewModels = v8;

    v10 = [(NSArray *)v4->_impressions copy];
    impressions = v7->_impressions;
    v7->_impressions = v10;

    v12 = [(NSArray *)v4->_linkEntities copy];
    linkEntities = v7->_linkEntities;
    v7->_linkEntities = v12;

    v14 = [(NSDictionary *)v4->_hoverRegions copy];
    hoverRegions = v7->_hoverRegions;
    v7->_hoverRegions = v14;

    v7->_offset = v4->_offset;
    v7->_containsLiveTransforms = v4->_containsLiveTransforms;
    v16 = [(NSArray *)v4->_errors copy];
    errors = v7->_errors;
    v7->_errors = v16;

    v18 = [(TUIIdentifier *)v4->_identifier copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v18;

    v7->_size = v4->_size;
    if (v6 != v4)
    {
      sub_DA600(&v6->_viewMap, v4->_viewMap.__tree_.__begin_node_, &v4->_viewMap.__tree_.__end_node_.__left_);
    }

    v7->_viewRange = v4->_viewRange;
    objc_storeStrong(&v6->_identifierInterest, v4->_identifierInterest);
    objc_storeStrong(&v6->_identifierMap, v4->_identifierMap);
    objc_storeStrong(&v6->_identifierToModelMap, v4->_identifierToModelMap);
    objc_storeStrong(&v6->_containedSubmodels, v4->_containedSubmodels);
    objc_storeStrong(&v6->_layoutQueue, v4->_layoutQueue);
    v20 = *&v4->_config.flipHorizontal;
    v7->_config.zIndex = v4->_config.zIndex;
    *&v7->_config.flipHorizontal = v20;
    v21 = *&v4->_transform.a;
    v22 = *&v4->_transform.tx;
    *&v6->_transform.c = *&v4->_transform.c;
    *&v6->_transform.tx = v22;
    *&v7->_transform.a = v21;
    v7->_alpha = v4->_alpha;
    v23 = [(TUIAnimationGroupRenderModelCollection *)v4->_animationRenderModels copy];
    animationRenderModels = v7->_animationRenderModels;
    v7->_animationRenderModels = v23;
  }

  return v7;
}

- (TUIRenderModelSection)initWithEntry:(id)a3 submodels:(id)a4 config:(id *)a5 impressions:(id)a6 linkEntities:(id)a7 hoverRegions:(id)a8 identifierMap:(id)a9 layoutQueue:(id)a10
{
  v62 = a3;
  v67 = a4;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v66 = a9;
  v17 = a10;
  v74.receiver = self;
  v74.super_class = TUIRenderModelSection;
  v18 = [(TUIRenderModelSection *)&v74 init];
  v19 = v18;
  if (v18)
  {
    v61 = v17;
    objc_storeStrong(&v18->_entry, a3);
    v19->_offset = CGPointZero;
    v19->_section = 0;
    v20 = *&a5->var0;
    v19->_config.zIndex = a5->var2;
    v19->_size = CGSizeZero;
    *&v19->_config.flipHorizontal = v20;
    v19->_alpha = 1.0;
    v21 = *&CGAffineTransformIdentity.c;
    *&v19->_transform.a = *&CGAffineTransformIdentity.a;
    v22 = *&CGAffineTransformIdentity.tx;
    *&v19->_transform.c = v21;
    *&v19->_transform.tx = v22;
    v60 = objc_opt_new();
    v23 = [v67 copy];
    containedSubmodels = v19->_containedSubmodels;
    v19->_containedSubmodels = v23;

    objc_storeStrong(&v19->_layoutQueue, a10);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_D76C4;
    v72[3] = &unk_261670;
    v25 = v60;
    v73 = v25;
    [v67 enumerateObjectsUsingBlock:v72];
    v26 = objc_opt_new();
    if ([v25 count])
    {
      v27 = [v66 mapViewModels:v25];
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

            v75 = [*(*(&v76 + 1) + 8 * i) itemIndex];
            v80 = &v75;
            sub_DA530(&v19->_viewMap, &v75)[5] = v32++;
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
              v47 = [*(*(&v68 + 1) + 8 * j) liveTransform];
              v42 = v47 != 0;
            }

            v48 = [v46 identifier];
            [v26 setObject:v46 forKeyedSubscript:v48];
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

    v49 = [v66 collectInterestWithInvalidationQueue:v61];
    identifierInterest = v19->_identifierInterest;
    v19->_identifierInterest = v49;

    objc_storeStrong(&v19->_identifierMap, a9);
    v51 = [v63 copy];
    impressions = v19->_impressions;
    v19->_impressions = v51;

    v53 = [v64 copy];
    linkEntities = v19->_linkEntities;
    v19->_linkEntities = v53;

    v55 = [v65 copy];
    hoverRegions = v19->_hoverRegions;
    v19->_hoverRegions = v55;

    v57 = [v26 copy];
    identifierToModelMap = v19->_identifierToModelMap;
    v19->_identifierToModelMap = v57;

    v17 = v61;
  }

  return v19;
}

- (id)copyWithContainedSubmodels:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  entry = self->_entry;
  config = self->_config;
  v7 = [v5 initWithEntry:entry submodels:v4 config:&config impressions:self->_impressions linkEntities:self->_linkEntities hoverRegions:self->_hoverRegions identifierMap:self->_identifierMap layoutQueue:self->_layoutQueue];
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

- (id)copyWithErrors:(id)a3
{
  v4 = a3;
  v5 = [(TUIRenderModelSection *)self copyWithContainedSubmodels:self->_containedSubmodels];
  v6 = [v4 copy];
  v7 = v5[25];
  v5[25] = v6;

  return v5;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)a3
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
        v11 = [(TUIRenderModelSection *)self copySubmodel:v10 forInitialAppearanceWithFlags:a3, v17];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 copyForInitialAppearanceWithFlags:a3];
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

- (id)copyForFinalAppearanceWithFlags:(unint64_t)a3
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
        v11 = [(TUIRenderModelSection *)self copySubmodel:v10 forFinalAppearanceWithFlags:a3, v17];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 copyForFinalAppearanceWithFlags:a3];
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

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  [v6 visibleBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(TUIRenderModelSection *)self frame];
  v15 = *&a4->c;
  *&v49.a = *&a4->a;
  *&v49.c = v15;
  *&v49.tx = *&a4->tx;
  v53 = CGRectApplyAffineTransform(v52, &v49);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  [v6 visibleBounds];
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
            v29 = *&a4->c;
            *&v49.a = *&a4->a;
            *&v49.c = v29;
            *&v49.tx = *&a4->tx;
            [v28 appendResourcesToCollector:v6 transform:&v49];
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
      v30 = *&a4->c;
      *&t2.a = *&a4->a;
      *&t2.c = v30;
      *&t2.tx = *&a4->tx;
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
            v38 = *&a4->c;
            *&t1.a = *&a4->a;
            *&t1.c = v38;
            *&t1.tx = *&a4->tx;
            v57 = CGRectApplyAffineTransform(v56, &t1);
            v59.origin.x = v8;
            v59.origin.y = v10;
            v59.size.width = v12;
            v59.size.height = v14;
            if (CGRectIntersectsRect(v57, v59))
            {
              t1 = v49;
              [v35 appendResourcesToCollector:v6 transform:&t1];
            }
          }

          v32 = [(NSArray *)v31 countByEnumeratingWithState:&v39 objects:v50 count:16];
        }

        while (v32);
      }
    }
  }
}

- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
        v18 = *&a4->c;
        v19[0] = *&a4->a;
        v19[1] = v18;
        v19[2] = *&a4->tx;
        [v17 appendReferencesToCollector:v10 transform:v19 query:v11 liveTransformResolver:v12];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }
}

- (id)copyWithSection:(unint64_t)a3 offset:(CGPoint)a4 size:(CGSize)a5 uuid:(id)a6
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v13 = a6;
  v14 = self;
  v15 = v14;
  if (v14->_section != a3 || (x == v14->_offset.x ? (v16 = y == v14->_offset.y) : (v16 = 0), !v16 || (width == v14->_size.width ? (v17 = height == v14->_size.height) : (v17 = 0), !v17 || (UUID = v14->_UUID, UUID != v13) && ([(NSUUID *)UUID isEqual:v13]& 1) == 0)))
  {
    v19 = [objc_alloc(objc_opt_class()) _initWithSection:v15];

    v19->_section = a3;
    v19->_offset.x = x;
    v19->_offset.y = y;
    objc_storeStrong(&v19->_UUID, a6);
    v19->_size.width = width;
    v19->_size.height = height;
    v15 = v19;
  }

  return v15;
}

- (id)copyWithSection:(unint64_t)a3 offset:(CGPoint)a4 uuid:(id)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a5;
  v11 = self;
  v12 = v11;
  if (v11->_section != a3 || (x == v11->_offset.x ? (v13 = y == v11->_offset.y) : (v13 = 0), !v13 || (UUID = v11->_UUID, UUID != v10) && ([(NSUUID *)UUID isEqual:v10]& 1) == 0))
  {
    v15 = [objc_alloc(objc_opt_class()) _initWithSection:v12];

    v15->_section = a3;
    v15->_offset.x = x;
    v15->_offset.y = y;
    objc_storeStrong(&v15->_UUID, a5);
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

- (id)_layoutAttributesForViewModel:(id)a3 index:(unint64_t)a4 withLiveTransformResolver:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v8 outsets];
  v46 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 size];
  v18 = v17;
  [v8 size];
  v20 = v19;
  v21 = [NSIndexPath tui_indexPathForRow:a4 inSection:self->_section];
  v22 = [TUILayoutAttributes newLayoutAttributesWithIndexPath:v21];

  [v8 center];
  v24 = v23;
  v26 = v25;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  if (v8)
  {
    [v8 transform];
  }

  v27 = [v8 zIndex];
  v28 = [v8 liveTransform];
  v45 = v16;
  v29 = v14 + v16 + v18;
  v30 = v12 + v46 + v20;

  if (v9 && v28)
  {
    v31 = [v9 liveLayoutAttributesForRenderModel:v8];
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

  [v8 size];
  v37 = v36;
  [v8 size];
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
  [v8 alpha];
  [v22 setAlpha:?];
  [v22 setZIndex:v27];
  v41 = [v8 submodel];
  [v22 setRenderModel:v41];

  v42 = [v8 refId];
  [v22 setRefId:v42];

  v43 = [v8 refInstance];
  [v22 setRefInstance:v43];

  [v22 setOutsets:{v12, v14, v46, v45}];

  return v22;
}

- (id)_layoutAttributesForImpression:(id)a3 index:(unint64_t)a4 snapshot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSIndexPath tui_indexPathForRow:a4 inSection:self->_section];
  v11 = [TUILayoutAttributes newLayoutAttributesWithIndexPath:v10];

  [v8 size];
  v13 = v12;
  [v8 size];
  v15 = v14;
  [v8 center];
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
  if (v8)
  {
    [v8 transform];
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
  v20 = [v8 data];
  v21 = [v20 identifier];
  v22 = [v9 impressionForIdentifier:v21];
  [v11 setGeneric:v22];

  return v11;
}

- (void)appendLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 withLiveTransformResolver:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
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
          v22 = [v21 liveTransform];
          v23 = v22 == 0;

          if (v23)
          {
            v24 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v21, [v21 itemIndex], v12);
            [v24 frame];
            v33.origin.x = v17;
            v33.origin.y = v18;
            v33.size.width = width;
            v33.size.height = height;
            if (CGRectIntersectsRect(v31, v33))
            {
              [v11 addObject:v24];
            }
          }
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (void)appendLiveTransformLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 withLiveTransformResolver:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
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
        v22 = [v21 liveTransform];
        v23 = v22 == 0;

        if (!v23)
        {
          v24 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v21, [v21 itemIndex], v12);
          [v24 frame];
          v31.origin.x = v17;
          v31.origin.y = v18;
          v31.size.width = width;
          v31.size.height = height;
          if (CGRectIntersectsRect(v30, v31))
          {
            [v11 addObject:v24];
          }
        }
      }

      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }
}

- (id)layoutAttributesForViewModel:(id)a3 atIndexPath:(id)a4 withLiveTransformResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v8, [v9 tui_row], v10);

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

- (void)appendImpressionLayoutAttributes:(id)a3 forElementsInRect:(CGRect)a4 snapshot:(id)a5
{
  v7 = a3;
  v8 = a5;
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

          v14 = [(TUIRenderModelSection *)self _layoutAttributesForImpression:*(*(&v15 + 1) + 8 * v13) index:v12 snapshot:v8, v15];
          [v7 addObject:v14];

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

- (id)layoutAttributesForImpressionAtIndexPath:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[TUIImpressionController debugEnabled](TUIImpressionController, "debugEnabled") && [v6 tui_row] >= 0x3B9ACA00 && (v8 = objc_msgSend(v6, "tui_row"), v8 - 1000000000 < -[NSArray count](self->_impressions, "count")))
  {
    v9 = [(NSArray *)self->_impressions objectAtIndexedSubscript:?];
    v10 = -[TUIRenderModelSection _layoutAttributesForImpression:index:snapshot:](self, "_layoutAttributesForImpression:index:snapshot:", v9, [v6 tui_row], v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForViewAtIndexPath:(id)a3 withLiveTransformResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 tui_row];
  left = self->_viewMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->_viewMap.__tree_.__end_node_;
  do
  {
    length = left->_viewRange.length;
    v13 = length >= v9;
    v14 = length < v9;
    if (v13)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + v14);
  }

  while (left);
  if (p_end_node != &self->_viewMap.__tree_.__end_node_ && v9 >= p_end_node->_viewRange.length)
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
      v17 = -[TUIRenderModelSection _layoutAttributesForViewModel:index:withLiveTransformResolver:](self, "_layoutAttributesForViewModel:index:withLiveTransformResolver:", v16, [v8 tui_row], v7);
      goto LABEL_15;
    }
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)viewAtIndexPath:(id)a3 factory:(id)a4 host:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 tui_row] > 0x3B9AC9FF)
  {
    v14 = [v9 viewFactoryDequeueReusableSubviewWithReuseIdentifier:@"TUIReuseIdentifierImpressionOverlayView" indexPath:v8 host:v10];
  }

  else
  {
    v11 = -[TUIRenderModelSection viewModelWithIndex:](self, "viewModelWithIndex:", [v8 tui_row]);
    v12 = [v11 submodel];
    v13 = [v12 reuseIdentifier];

    v14 = [v9 viewFactoryDequeueReusableSubviewWithReuseIdentifier:v13 indexPath:v8 host:v10];
  }

  return v14;
}

- (id)viewModelWithIndex:(unint64_t)a3
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
    v7 = length >= a3;
    v8 = length < a3;
    if (v7)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + v8);
  }

  while (left);
  if (p_end_node != &self->_viewMap.__tree_.__end_node_ && p_end_node->_viewRange.length <= a3)
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

- (id)viewModelForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[TUIRenderModelSection viewModelWithIndex:](self, "viewModelWithIndex:", [v4 tui_row]);

  return v5;
}

- (id)identifierForViewAtIndex:(unint64_t)a3
{
  v4 = [(TUIRenderModelSection *)self viewModelWithIndex:a3];
  v5 = [v4 identifier];
  v6 = [(TUIRenderModelSection *)self UUID];
  v7 = [v5 tui_identifierByPrependingUUID:v6];

  return v7;
}

- (id)_initialRenderModelForInsertedRenderModel:(id)a3
{
  v3 = [a3 copyWithAlpha:0.0];

  return v3;
}

- (id)_finalRenderModelForDeletedRenderModel:(id)a3
{
  v3 = [a3 copyWithAlpha:0.0];

  return v3;
}

- (id)computeDeletedFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModels];
  viewModels = self->_viewModels;
  v25 = v5;
  v26 = viewModels;
  v27 = v4;
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
        v13 = [v12 identifier];
        [v7 setObject:v12 forKeyedSubscript:v13];
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
        v20 = [v19 identifier];
        v21 = [v7 objectForKeyedSubscript:v20];

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

- (id)computeInsertedFrom:(id)a3
{
  v25 = a3;
  v4 = [v25 viewModels];
  viewModels = self->_viewModels;
  v27 = v4;
  v6 = viewModels;
  v28 = self;
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
        v13 = [v12 identifier];
        [v7 setObject:v12 forKeyedSubscript:v13];
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
        v20 = [v19 identifier];
        v21 = [v7 objectForKeyedSubscript:v20];

        if (!v21)
        {
          if (!v15)
          {
            v15 = objc_opt_new();
          }

          v22 = [(TUIRenderModelSection *)v28 _initialRenderModelForInsertedRenderModel:v19];
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

- (id)computeContainerUpdateCurrent:(id)a3 from:(id)a4 tracker:(id)a5 flags:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [[TUIRenderUpdateArrayContainer alloc] initWithCurrent:v10 from:v11 to:self tracker:v12 flags:a6];

  return v13;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);
  LOBYTE(self) = TUIRenderModelArrayContainingIsEqualToRenderModelArrayContaining(self, v6);

  return self;
}

- (unint64_t)hash
{
  v2 = [(TUIRenderModelSection *)self identifier];
  v3 = TUIIdentifierHash(v2);

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_initWithSection:", self}];
  *(v4 + 17) = self->_section;
  objc_storeStrong(v4 + 16, self->_UUID);
  return v4;
}

- (id)liveTransformsForKind:(Class)a3
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
        v11 = [v10 liveTransform];
        if (v11)
        {
          v12 = [v10 liveTransform];
          v13 = [v12 kind] == a3;

          if (v13)
          {
            v14 = [v10 liveTransform];
            [v5 addObject:v14];
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)appendLiveTransformViewInvalidationMap:(id)a3
{
  v4 = a3;
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
        v10 = [v9 liveTransform];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = +[NSIndexPath tui_indexPathForRow:inSection:](NSIndexPath, "tui_indexPathForRow:inSection:", [v9 itemIndex], self->_section);
          v13 = [v9 liveTransform];
          v14 = [v4 objectForKey:v13];
          if (!v14)
          {
            v14 = objc_opt_new();
            [v4 setObject:v14 forKey:v13];
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

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
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