@interface TUIRenderModelSubviews
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (TUIRenderModelSubviews)initWithSubmodels:(id)submodels;
- (id)_finalRenderModelForDeletedRenderModel:(id)model;
- (id)_initialRenderModelForInsertedRenderModel:(id)model;
- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags;
- (id)computeDeletedFrom:(id)from;
- (id)computeInsertedFrom:(id)from;
- (id)configureSubviewsWithFactory:(id)factory outsets:(UIEdgeInsets)outsets host:(id)host overrides:(id)overrides usedOverrides:(BOOL *)usedOverrides UUID:(id)d uid:(id)uid;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags;
- (id)copyWithContainedSubmodels:(id)submodels;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
@end

@implementation TUIRenderModelSubviews

- (TUIRenderModelSubviews)initWithSubmodels:(id)submodels
{
  submodelsCopy = submodels;
  v16.receiver = self;
  v16.super_class = TUIRenderModelSubviews;
  v5 = [(TUIRenderModelSubviews *)&v16 init];
  if (v5)
  {
    v6 = [submodelsCopy sortedArrayUsingComparator:&stru_25E850];
    submodels = v5->_submodels;
    v5->_submodels = v6;

    v8 = objc_opt_new();
    v9 = v5->_submodels;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2C358;
    v14[3] = &unk_25E878;
    v15 = v8;
    v10 = v8;
    [(NSArray *)v9 enumerateObjectsUsingBlock:v14];
    v11 = [v10 copy];
    identifierToContainedSubmodelMap = v5->_identifierToContainedSubmodelMap;
    v5->_identifierToContainedSubmodelMap = v11;
  }

  return v5;
}

- (id)copyWithContainedSubmodels:(id)submodels
{
  submodelsCopy = submodels;
  v4 = [objc_alloc(objc_opt_class()) initWithSubmodels:submodelsCopy];

  return v4;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_submodels;
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
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_submodels;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        v19 = *&transform->c;
        v20[0] = *&transform->a;
        v20[1] = v19;
        v20[2] = *&transform->tx;
        [v18 appendReferencesToCollector:collectorCopy transform:v20 query:queryCopy liveTransformResolver:resolverCopy];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

- (id)configureSubviewsWithFactory:(id)factory outsets:(UIEdgeInsets)outsets host:(id)host overrides:(id)overrides usedOverrides:(BOOL *)usedOverrides UUID:(id)d uid:(id)uid
{
  left = outsets.left;
  top = outsets.top;
  factoryCopy = factory;
  hostCopy = host;
  overridesCopy = overrides;
  dCopy = d;
  uidCopy = uid;
  v95 = objc_opt_new();
  tui_hostedSubviewsMap = [hostCopy tui_hostedSubviewsMap];
  v16 = [tui_hostedSubviewsMap mutableCopy];

  v94 = objc_opt_new();
  v17 = hostCopy;
  tui_hostingView = [hostCopy tui_hostingView];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = self->_submodels;
  v98 = [(NSArray *)obj countByEnumeratingWithState:&v138 objects:v144 count:16];
  if (!v98)
  {
    v109 = 0;
LABEL_40:

    goto LABEL_41;
  }

  v92 = 0;
  v18 = 0;
  v109 = 0;
  v97 = *v139;
  v89 = v16;
  v90 = hostCopy;
  do
  {
    for (i = 0; i != v98; i = i + 1)
    {
      if (*v139 != v97)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v138 + 1) + 8 * i);
      identifier = [v20 identifier];
      v111 = v20;
      submodel = [v20 submodel];
      reuseIdentifier = [submodel reuseIdentifier];

      v24 = [v16 objectForKeyedSubscript:identifier];
      [NSIndexPath tui_indexPathForRow:v18 inSection:0];
      v108 = v107 = v24;
      if (v24 && ([v24 reuseIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", reuseIdentifier), v25, v27 = v108, v106 = v24, (v26 & 1) != 0) || (objc_msgSend(factoryCopy, "viewFactoryDequeueReusableSubviewWithReuseIdentifier:indexPath:host:", reuseIdentifier, v108, v17), v28 = objc_claimAutoreleasedReturnValue(), v24, v27 = v108, (v106 = v28) != 0))
      {
        v29 = [TUILayoutAttributes newLayoutAttributesWithIndexPath:v27];
        [v111 outsets];
        v102 = v30;
        v32 = v31;
        v112 = v33;
        v35 = v34;
        [v111 size];
        v37 = v36;
        [v111 size];
        v39 = v38;
        [v111 size];
        v41 = v40;
        [v111 size];
        v43 = v42;
        [v111 center];
        v45 = v44;
        v47 = v46;
        memset(&v118, 0, 48);
        if (v111)
        {
          [v111 transform];
        }

        v48 = v37 + v32 + v35;
        v49 = v102 + *&v112 + v39;
        zIndex = [v111 zIndex];
        [v29 setBounds:{0.0, 0.0, v48, v49}];
        [v29 setCenter:{v45 + v48 * 0.5 - (v32 + v41 * 0.5), v47 + v49 * 0.5 - (v102 + v43 * 0.5)}];
        v137[0] = *&v118.m11;
        v137[1] = *&v118.m13;
        v137[2] = *&v118.m21;
        [v29 setTransform:v137];
        v99 = zIndex;
        [v29 setZIndex:zIndex];
        [v111 submodel];
        v51 = v110 = v29;
        [v110 setRenderModel:v51];

        [v111 alpha];
        [v110 setAlpha:?];
        refId = [v111 refId];
        [v110 setRefId:refId];

        refInstance = [v111 refInstance];
        [v110 setRefInstance:refInstance];

        [v110 setOutsets:{v102, v32, *&v112, v35}];
        v104 = reuseIdentifier;
        v105 = i;
        if (overridesCopy)
        {
          v101 = identifier;
          v103 = v18;
          refId2 = [v110 refId];
          refInstance2 = [v110 refInstance];
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v113 = overridesCopy;
          v56 = [v113 countByEnumeratingWithState:&v133 objects:v143 count:16];
          if (!v56)
          {
            goto LABEL_23;
          }

          v57 = v56;
          v58 = *v134;
          while (1)
          {
            for (j = 0; j != v57; j = j + 1)
            {
              if (*v134 != v58)
              {
                objc_enumerationMutation(v113);
              }

              v60 = *(*(&v133 + 1) + 8 * j);
              query = [v60 query];
              if ([(TUIRenderReferenceIdentifier *)query matchesUUID:dCopy uid:uidCopy])
              {
                query2 = [v60 query];
                identifier2 = [v111 identifier];
                v64 = [query2 matchesRefId:refId2 refInstance:refInstance2 identifier:identifier2];

                if (!v64)
                {
                  continue;
                }

                query = [[TUIRenderReferenceIdentifier alloc] initWithUUID:0 uid:0 refId:refId2 refInstance:refInstance2];
                [v60 updateLayoutAttributes:v110 forIdentifier:query];
                v109 = 1;
              }
            }

            v57 = [v113 countByEnumeratingWithState:&v133 objects:v143 count:16];
            if (!v57)
            {
LABEL_23:

              v16 = v89;
              v17 = v90;
              identifier = v101;
              v18 = v103;
              break;
            }
          }
        }

        v130[0] = _NSConcreteStackBlock;
        v130[1] = 3221225472;
        v130[2] = sub_2D088;
        v130[3] = &unk_25DCA0;
        v65 = v106;
        v131 = v65;
        v66 = v110;
        v132 = v66;
        v67 = objc_retainBlock(v130);
        [v95 addObject:v65];
        [v94 setObject:v65 forKey:identifier];
        if (v65 == v107)
        {
          [v16 removeObjectForKey:identifier];
          layoutAttributes = [v107 layoutAttributes];
          v69 = identifier;
          zIndex2 = [layoutAttributes zIndex];
          LODWORD(zIndex2) = zIndex2 != [v66 zIndex];

          v71 = zIndex2 | v92;
          identifier = v69;
          v92 = v71;
          (v67[2])(v67);
        }

        else
        {
          v124[0] = _NSConcreteStackBlock;
          v124[1] = 3221225472;
          v124[2] = sub_2D094;
          v124[3] = &unk_25E8A0;
          v125 = tui_hostingView;
          v126 = v65;
          v129 = v99;
          v127 = v17;
          v128 = v67;
          [UIView performWithoutAnimation:v124];
        }

        reuseIdentifier = v104;
        i = v105;
        v27 = v108;
      }

      ++v18;
    }

    v98 = [(NSArray *)obj countByEnumeratingWithState:&v138 objects:v144 count:16];
  }

  while (v98);

  if (v92)
  {
    obj = [v17 tui_hostingView];
    subviews = [(NSArray *)obj subviews];
    v73 = [subviews sortedArrayUsingComparator:&stru_25E8E0];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v74 = v73;
    v75 = [v74 countByEnumeratingWithState:&v120 objects:v142 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v121;
      do
      {
        for (k = 0; k != v76; k = k + 1)
        {
          if (*v121 != v77)
          {
            objc_enumerationMutation(v74);
          }

          [(NSArray *)obj bringSubviewToFront:*(*(&v120 + 1) + 8 * k)];
        }

        v76 = [v74 countByEnumeratingWithState:&v120 objects:v142 count:16];
      }

      while (v76);
    }

    goto LABEL_40;
  }

LABEL_41:
  [v17 setTui_hostedSubviewsMap:{v94, *&left, *&top}];
  CATransform3DMakeTranslation(&v119, v85, v87, 0.0);
  tui_hostingView2 = [v17 tui_hostingView];
  layer = [tui_hostingView2 layer];
  v118 = v119;
  [layer setSublayerTransform:&v118];

  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v116[2] = sub_2D3D8;
  v116[3] = &unk_25DE30;
  v117 = v16;
  v81 = v16;
  [UIView performWithoutAnimation:v116];
  allValues = [v81 allValues];
  [factoryCopy viewFactoryReuseSubviews:allValues host:v17];

  *usedOverrides = v109 & 1;

  return v95;
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
  submodels = [fromCopy submodels];
  submodels = self->_submodels;
  v7 = submodels;
  v8 = submodels;
  v29 = fromCopy;
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v8, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v8;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        identifier = [v15 identifier];
        [v9 setObject:v15 forKeyedSubscript:identifier];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v31;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        identifier2 = [v23 identifier];
        v25 = [v9 objectForKeyedSubscript:identifier2];

        if (!v25)
        {
          if (!v20)
          {
            v20 = objc_opt_new();
          }

          v26 = [v29 _finalRenderModelForDeletedRenderModel:v23];
          [v20 addObject:v26];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v27 = [v20 copy];

  return v27;
}

- (id)computeInsertedFrom:(id)from
{
  fromCopy = from;
  submodels = [fromCopy submodels];
  submodels = self->_submodels;
  v6 = submodels;
  v7 = submodels;
  selfCopy = self;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v7, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        identifier = [v14 identifier];
        [v8 setObject:v14 forKeyedSubscript:identifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v7;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v31;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        identifier2 = [v22 identifier];
        v24 = [v8 objectForKeyedSubscript:identifier2];

        if (!v24)
        {
          if (!v19)
          {
            v19 = objc_opt_new();
          }

          v25 = [(TUIRenderModelSubviews *)selfCopy _initialRenderModelForInsertedRenderModel:v22];
          [v19 addObject:v25];
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v26 = [v19 copy];

  return v26;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags
{
  selfCopy = self;
  if ((flags & 1) == 0)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](selfCopy->_submodels, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = selfCopy->_submodels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) copyForInitialAppearanceWithFlags:{flags, v14}];
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [[TUIRenderModelSubviews alloc] initWithSubmodels:v5];
    [(TUIRenderModelSubviews *)v12 setIdentifier:selfCopy->_identifier];
    [(TUIRenderModelSubviews *)v12 setSize:selfCopy->_size.width, selfCopy->_size.height];

    return v12;
  }

  return selfCopy;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags
{
  selfCopy = self;
  if ((flags & 1) == 0)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](selfCopy->_submodels, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = selfCopy->_submodels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) copyForFinalAppearanceWithFlags:{flags, v14}];
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [[TUIRenderModelSubviews alloc] initWithSubmodels:v5];
    TUIRenderModelCopyProperties(v12, selfCopy);

    return v12;
  }

  return selfCopy;
}

- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags
{
  trackerCopy = tracker;
  fromCopy = from;
  currentCopy = current;
  v13 = [[TUIRenderUpdateArrayContainer alloc] initWithCurrent:currentCopy from:fromCopy to:self tracker:trackerCopy flags:flags];

  return v13;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = modelCopy;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, modelCopy);
    }

    v9 = v7;
    v8 = TUIRenderModelArrayContainingIsEqualToRenderModelArrayContaining(self, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelSubviews *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end