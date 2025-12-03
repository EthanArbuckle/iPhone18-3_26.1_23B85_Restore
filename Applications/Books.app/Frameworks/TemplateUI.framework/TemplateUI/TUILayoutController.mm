@interface TUILayoutController
- (BOOL)applyHostingGeometryMapUpdate:(id)update;
- (BOOL)invalidateInstantiation:(id)instantiation;
- (TUILayoutController)initWithPackage:(id)package feedId:(id)id manager:(id)manager transactionCoordinator:(id)coordinator state:(id)state identifierMap:(id)map entry:(id)entry environment:(id)self0 instantiateDelegate:(id)self1 actionDelegate:(id)self2 queue:(id)self3 renderMode:(unint64_t)self4;
- (double)contentsScale;
- (id)_createLayoutForModel:(id)model withParent:(id)parent;
- (id)axModelTree;
- (id)debugDumpEnvironmentContainerStructure;
- (id)hostingGeometryForIdentifier:(id)identifier requestedSize:(CGSize)size;
- (id)imageResourceForKind:(id)kind naturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options;
- (id)intrinsicImageResourceForKind:(id)kind instance:(id)instance options:(id)options;
- (id)layoutForModel:(id)model;
- (id)loadResourceWithURL:(id)l error:(id *)error;
- (id)renderModelAuxiliary:(id)auxiliary;
- (id)renderModelLayer:(id)layer;
- (id)renderModelOfKind:(unint64_t)kind context:(id)context;
- (id)renderModelOfKind:(unint64_t)kind transactionGroup:(id)group;
- (id)renderModelSection:(unint64_t)section offset:(CGPoint)offset uuid:(id)uuid transactionGroup:(id)group;
- (void)_invalidateChildrenForModel:(id)model;
- (void)_invalidateLayout:(id)layout callOnInvalidate:(BOOL)invalidate;
- (void)_orphanLayout:(id)layout;
- (void)_unorphanLayout:(id)layout;
- (void)_updateEmbedded;
- (void)_updateRootLayout;
- (void)_validateChildren;
- (void)_validateChildrenForLayout:(id)layout;
- (void)cachedRenderModelValidatedForLayout:(id)layout;
- (void)dealloc;
- (void)invalidateAuxiliaryRenderModel;
- (void)invalidateCachedRenderModelForLayout:(id)layout;
- (void)invalidateChildren:(id)children;
- (void)setRootBox:(id)box;
- (void)updateEnvironment:(id)environment;
- (void)validateGroupedContainingLayout:(id)layout withSize:(CGSize)size;
- (void)validateInstantiationWithTransactionGroup:(id)group;
- (void)validateLayout:(id)layout;
- (void)validateLayouts;
- (void)validateRenderModelsWithTransactionGroup:(id)group;
@end

@implementation TUILayoutController

- (TUILayoutController)initWithPackage:(id)package feedId:(id)id manager:(id)manager transactionCoordinator:(id)coordinator state:(id)state identifierMap:(id)map entry:(id)entry environment:(id)self0 instantiateDelegate:(id)self1 actionDelegate:(id)self2 queue:(id)self3 renderMode:(unint64_t)self4
{
  packageCopy = package;
  managerCopy = manager;
  managerCopy2 = manager;
  mapCopy = map;
  v59 = managerCopy2;
  coordinatorCopy = coordinator;
  coordinatorCopy2 = coordinator;
  stateCopy = state;
  mapCopy2 = map;
  entryCopy = entry;
  environmentCopy = environment;
  delegateCopy = delegate;
  actionDelegateCopy = actionDelegate;
  queueCopy = queue;
  v60.receiver = self;
  v60.super_class = TUILayoutController;
  v23 = [(TUILayoutController *)&v60 init];
  p_isa = &v23->super.isa;
  v25 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_package, package);
    v25->_feedId.uniqueIdentifier = id.var0;
    objc_storeStrong(p_isa + 15, mapCopy);
    objc_storeStrong(p_isa + 21, entry);
    objc_storeStrong(p_isa + 19, managerCopy);
    objc_storeStrong(p_isa + 20, coordinatorCopy);
    if (packageCopy)
    {
      v26 = [[TUIInstantiateContext alloc] initWithDelegate:delegateCopy package:packageCopy manager:v59 identifierMap:mapCopy2 environment:environmentCopy state:stateCopy feedId:v25->_feedId.uniqueIdentifier];
    }

    else
    {
      v26 = 0;
    }

    instantiateContext = v25->_instantiateContext;
    v25->_instantiateContext = v26;

    [(TUIInstantiateContext *)v25->_instantiateContext setActionDelegate:actionDelegateCopy];
    [(TUIInstantiateContext *)v25->_instantiateContext setTransactionCoordinator:coordinatorCopy2];
    [(TUIInstantiateContext *)v25->_instantiateContext setDynamicController:v25];
    v28 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    layouts = v25->_layouts;
    v25->_layouts = v28;

    v30 = [NSHashTable hashTableWithOptions:512];
    orphanLayouts = v25->_orphanLayouts;
    v25->_orphanLayouts = v30;

    v32 = [NSHashTable hashTableWithOptions:512];
    invalidChildren = v25->_invalidChildren;
    v25->_invalidChildren = v32;

    v34 = [NSHashTable hashTableWithOptions:512];
    invalidRenderModels = v25->_invalidRenderModels;
    v25->_invalidRenderModels = v34;

    v36 = [NSHashTable hashTableWithOptions:512];
    invalidLayouts = v25->_invalidLayouts;
    v25->_invalidLayouts = v36;

    v38 = [NSHashTable hashTableWithOptions:512];
    invalidInstantiators = v25->_invalidInstantiators;
    v25->_invalidInstantiators = v38;

    objc_storeStrong(p_isa + 8, queue);
    v25->_renderMode = mode;
    v40 = +[NSUserDefaults standardUserDefaults];
    v25->_reportErrors = [v40 BOOLForKey:@"TUIReportErrors"];

    if (v25->_reportErrors)
    {
      v41 = objc_opt_new();
    }

    else
    {
      v41 = 0;
    }

    errors = v25->_errors;
    v25->_errors = v41;

    v43 = [NSHashTable hashTableWithOptions:517];
    invalidEnvironmentContainers = v25->_invalidEnvironmentContainers;
    v25->_invalidEnvironmentContainers = v43;

    v45 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    hostingLayouts = v25->_hostingLayouts;
    v25->_hostingLayouts = v45;
  }

  return v25;
}

- (void)dealloc
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  objectEnumerator = [(NSMapTable *)self->_layouts objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v6) teardown];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = TUILayoutController;
  [(TUILayoutController *)&v7 dealloc];
}

- (double)contentsScale
{
  environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
  [environment contentsScale];
  v4 = v3;

  return v4;
}

- (void)updateEnvironment:(id)environment
{
  environmentCopy = environment;
  environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
  v6 = environment;
  if (environment)
  {
    v7 = [environment differenceMaskWithEnvironment:environmentCopy];
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 61;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  objectEnumerator = [(NSMapTable *)self->_layouts objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        layout = [*(*(&v23 + 1) + 8 * i) layout];
        [layout invalidateColors];
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

LABEL_13:
  [(TUIInstantiateContext *)self->_instantiateContext setEnvironment:environmentCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  environmentContainersUsingGlobals = [(TUIInstantiateContext *)self->_instantiateContext environmentContainersUsingGlobals];
  v14 = [environmentContainersUsingGlobals countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(environmentContainersUsingGlobals);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        if (v17 && ([*(*(&v19 + 1) + 8 * j) globalsEnvironmentUseMask] & v7) != 0 && objc_msgSend(v17, "validateGlobalsWithContext:", self->_instantiateContext))
        {
          [(NSHashTable *)self->_invalidEnvironmentContainers addObject:v17];
        }
      }

      v14 = [environmentContainersUsingGlobals countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  rootBox = self->_rootBox;
  if (rootBox)
  {
    sub_DFDD0(self->_invalidEnvironmentContainers, rootBox, v7, self->_instantiateContext);
  }
}

- (BOOL)invalidateInstantiation:(id)instantiation
{
  instantiationCopy = instantiation;
  dispatch_assert_queue_V2(self->_queue);
  if (!instantiationCopy)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!sub_E002C(instantiationCopy, self->_rootBox))
  {
    v6 = TUIInstantiationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_19B54C(self, instantiationCopy, v6);
    }

    goto LABEL_7;
  }

  [(NSHashTable *)self->_invalidInstantiators addObject:instantiationCopy];
  v5 = 1;
LABEL_8:

  return v5;
}

- (void)_invalidateChildrenForModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = modelCopy;
    while (1)
    {
      v7 = v5;
      parentModel = [(NSMapTable *)self->_layouts objectForKey:v5];
      if (parentModel)
      {
        break;
      }

      parentModel = [v7 parentModel];

      v5 = parentModel;
      if (!parentModel)
      {
        v7 = 0;
        goto LABEL_8;
      }
    }

    [(TUILayoutController *)self invalidateChildren:parentModel];
  }

  else
  {
    v7 = 0;
    parentModel = 0;
  }

LABEL_8:
}

- (void)validateInstantiationWithTransactionGroup:(id)group
{
  groupCopy = group;
  instantiateContext = self->_instantiateContext;
  if (instantiateContext)
  {
    v6 = *([(TUIInstantiateContext *)instantiateContext _context]+ 96);
    if (v6)
    {
      v7 = 0;
      *(v6 + 27848) = mach_absolute_time();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
LABEL_6:
  dispatch_assert_queue_V2(self->_queue);
  v50 = v7;
  v49 = v6;
  v8 = [NSHashTable hashTableWithOptions:512];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = self->_invalidEnvironmentContainers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v60 objects:v79 count:16];
  if (v10)
  {
    v11 = *v61;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObject:*(*(&v60 + 1) + 8 * i)];
      }

      v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v60 objects:v79 count:16];
    }

    while (v10);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = self->_invalidInstantiators;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v56 objects:v78 count:16];
  if (v14)
  {
    v15 = *v57;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v8 addObject:*(*(&v56 + 1) + 8 * j)];
      }

      v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v56 objects:v78 count:16];
    }

    while (v14);
  }

  v51 = v8;
  v17 = [v51 count];
  if (v17)
  {
    allObjects = [v51 allObjects];
    memset(v75, 0, sizeof(v75));
    v76 = 1065353216;
    sub_3AE0(v75, v17);
    v47 = v17;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v18 = allObjects;
    v19 = [v18 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v72;
      do
      {
        for (k = 0; k != v19; k = k + 1)
        {
          if (*v72 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v70[0] = *(*(&v71 + 1) + 8 * k);
          v80[0] = v70;
          sub_E4024(v75, v70)[3] = v20++;
        }

        v19 = [v18 countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v19);
    }

    TUI::Graph::Ordering::Ordering(v70, v47);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v23 = v18;
    v24 = [v23 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v24)
    {
      v25 = 0;
      v26 = *v67;
      do
      {
        for (m = 0; m != v24; m = m + 1)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = sub_E3F88(*(*(&v66 + 1) + 8 * m));
          if (v28)
          {
            while (1)
            {
              v64 = v28;
              v29 = sub_E428C(v75, &v64);
              if (v29)
              {
                break;
              }

              v28 = sub_E3F88(v28);

              if (!v28)
              {
                goto LABEL_38;
              }
            }

            TUI::Graph::Ordering::addEdge(v70, v29[3], v25);
          }

LABEL_38:
          ++v25;
        }

        v24 = [v23 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v24);
    }

    TUI::Graph::Ordering::solve(v70, &v64);
    v30 = [[NSMutableArray alloc] initWithCapacity:v47];
    v32 = v64;
    v31 = v65;
    if (v64 != v65)
    {
      do
      {
        v33 = [v23 objectAtIndexedSubscript:*v32];
        [v30 addObject:v33];

        ++v32;
      }

      while (v32 != v31);
      v32 = v64;
    }

    if (v32)
    {
      v65 = v32;
      operator delete(v32);
    }

    TUI::Graph::Ordering::~Ordering(v70);
    sub_11694(v75);
  }

  else
  {
    v30 = &__NSArray0__struct;
  }

  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = v30;
  v35 = [v34 countByEnumeratingWithState:&v52 objects:v77 count:16];
  if (v35)
  {
    v36 = *v53;
    do
    {
      for (n = 0; n != v35; n = n + 1)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v52 + 1) + 8 * n);
        if (sub_E002C(v38, self->_rootBox))
        {
          v39 = [(NSHashTable *)self->_invalidEnvironmentContainers containsObject:v38];
          v40 = v38;
          v41 = v40;
          if (v39 || [v40 needsValidationForTransactionGroup:groupCopy])
          {
            v42 = [(NSMapTable *)self->_layouts objectForKey:v41];
            v43 = [v41 validateInstantiationWithContext:self->_instantiateContext transactionGroup:groupCopy layout:v42];
            [(TUILayoutController *)self _invalidateChildrenForModel:v43];
          }
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v52 objects:v77 count:16];
    }

    while (v35);
  }

  [(NSHashTable *)self->_invalidEnvironmentContainers removeAllObjects];
  [(NSHashTable *)self->_invalidInstantiators removeAllObjects];
  sub_E0908(self->_rootBox, self->_instantiateContext);
  [(NSHashTable *)self->_invalidEnvironmentContainers removeAllObjects];
  if ((v50 & 1) == 0)
  {
    v44 = *(v49 + 27848);
    v45 = mach_absolute_time();
    v46 = v45 - v44;
    if (v44 >= v45)
    {
      v46 = v44 - v45;
    }

    *(v49 + 27816) += v46;
  }
}

- (id)debugDumpEnvironmentContainerStructure
{
  if (self->_rootBox)
  {
    v3 = [(TUIInstantiateContext *)self->_instantiateContext debugDumpEnvironmentContainerStructure:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)layoutForModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = [(NSMapTable *)self->_layouts objectForKey:modelCopy];
    if ([v5 isLayout])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setRootBox:(id)box
{
  boxCopy = box;
  p_rootBox = &self->_rootBox;
  if (self->_rootBox != boxCopy)
  {
    rootLayout = self->_rootLayout;
    self->_rootLayout = 0;

    cachedRenderModel = self->_cachedRenderModel;
    self->_cachedRenderModel = 0;

    cachedAuxRenderModel = self->_cachedAuxRenderModel;
    self->_cachedAuxRenderModel = 0;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    objectEnumerator = [(NSMapTable *)self->_layouts objectEnumerator];
    v11 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v17 + 1) + 8 * i) teardown];
        }

        v11 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [(NSMapTable *)self->_layouts removeAllObjects];
    [(NSHashTable *)self->_invalidLayouts removeAllObjects];
    [(NSHashTable *)self->_orphanLayouts removeAllObjects];
    [(NSHashTable *)self->_invalidRenderModels removeAllObjects];
    [(NSHashTable *)self->_invalidInstantiators removeAllObjects];
    objc_storeStrong(&self->_rootBox, box);
    if (*p_rootBox)
    {
      v14 = [(TUILayoutController *)self _createLayoutForModel:*p_rootBox withParent:0];
      v15 = [(TUILayoutController *)self layoutForModel:self->_rootBox];
      v16 = self->_rootLayout;
      self->_rootLayout = v15;

      sub_E0908(self->_rootBox, self->_instantiateContext);
    }
  }
}

- (void)_invalidateLayout:(id)layout callOnInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  layoutCopy = layout;
  v7 = layoutCopy;
  if (layoutCopy && ([layoutCopy layoutIsInvalid] & 1) == 0)
  {
    [v7 setLayoutIsInvalid:1];
    if (invalidateCopy)
    {
      [v7 onInvalidate];
    }

    layoutAncestor = [v7 layoutAncestor];
    v9 = layoutAncestor;
    if (!layoutAncestor || ([layoutAncestor layoutIsInvalid] & 1) == 0)
    {
      [(NSHashTable *)self->_invalidLayouts addObject:v7];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    children = [v7 children];
    v11 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(children);
          }

          [(NSHashTable *)self->_invalidLayouts removeObject:*(*(&v14 + 1) + 8 * v13)];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)invalidateAuxiliaryRenderModel
{
  cachedAuxRenderModel = self->_cachedAuxRenderModel;
  self->_cachedAuxRenderModel = 0;
}

- (void)invalidateChildren:(id)children
{
  childrenCopy = children;
  if (([childrenCopy invalidChildren] & 1) == 0)
  {
    [childrenCopy setInvalidChildren:1];
    [(NSHashTable *)self->_invalidChildren addObject:childrenCopy];
    layout = [childrenCopy layout];
    [(TUILayoutController *)self invalidateLayout:layout];
  }
}

- (void)validateLayout:(id)layout
{
  layoutCopy = layout;
  if (![layoutCopy layoutIsInvalid])
  {
    goto LABEL_9;
  }

  instantiateContext = self->_instantiateContext;
  if (instantiateContext)
  {
    v5 = *([(TUIInstantiateContext *)instantiateContext _context]+ 96);
    if (v5)
    {
      v6 = objc_opt_class();
      sub_E112C(v5, v6);
      v7 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 1;
LABEL_7:
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:11];
  v8 = objc_autoreleasePoolPush();
  [layoutCopy _validateLayout];
  objc_autoreleasePoolPop(v8);
  [layoutCopy setLayoutIsInvalid:0];
  [(NSHashTable *)self->_invalidLayouts removeObject:layoutCopy];
  if ((v7 & 1) == 0)
  {
    sub_E11F0(v5);
  }

LABEL_9:
}

- (void)validateGroupedContainingLayout:(id)layout withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  [layoutCopy computedNaturalSize];
  if (v9 != width || v8 != height)
  {
    [layoutCopy invalidateLayout];
  }

  if ([layoutCopy layoutIsInvalid])
  {
    [(TUIStatsEventCollector *)self->_statsCollector recordEvent:11];
    v11 = objc_autoreleasePoolPush();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_E143C;
    v13[3] = &unk_261868;
    v12 = layoutCopy;
    v14 = v12;
    v15 = width;
    v16 = height;
    [v12 _validateLayoutWithBlock:v13];

    objc_autoreleasePoolPop(v11);
    [v12 setLayoutIsInvalid:0];
    [(NSHashTable *)self->_invalidLayouts removeObject:v12];
  }
}

- (void)validateLayouts
{
  instantiateContext = self->_instantiateContext;
  if (!instantiateContext)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v4 = *([(TUIInstantiateContext *)instantiateContext _context]+ 96);
  if (!v4)
  {
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  v5 = 0;
  *(v4 + 27856) = mach_absolute_time();
LABEL_6:
  v6 = objc_autoreleasePoolPush();
  [(TUILayoutController *)self _validateChildren];
  objc_autoreleasePoolPop(v6);
  [(TUILayoutController *)self _updateRootLayout];
  while ([(NSHashTable *)self->_invalidLayouts count])
  {
    anyObject = [(NSHashTable *)self->_invalidLayouts anyObject];
    model = [anyObject model];
    if (model)
    {
      while (model != self->_rootBox)
      {
        parentModel = [(TUIBox *)model parentModel];

        model = parentModel;
        if (!parentModel)
        {
          goto LABEL_11;
        }
      }

      [(TUILayoutController *)self validateLayout:anyObject];
    }

    else
    {
LABEL_11:
      model = 0;
      [(NSHashTable *)self->_invalidLayouts removeObject:anyObject];
    }
  }

  if ((v5 & 1) == 0)
  {
    v10 = *(v4 + 27856);
    v11 = mach_absolute_time();
    v12 = v11 - v10;
    if (v10 >= v11)
    {
      v12 = v10 - v11;
    }

    *(v4 + 27824) += v12;
  }
}

- (void)_updateRootLayout
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  instantiateContext = [(TUILayoutController *)self instantiateContext];
  environment = [instantiateContext environment];

  if (environment)
  {
    instantiateContext2 = [(TUILayoutController *)self instantiateContext];
    environment2 = [instantiateContext2 environment];
    [environment2 viewSize];
    v10 = v9;
    v12 = v11;

    instantiateContext3 = [(TUILayoutController *)self instantiateContext];
    environment3 = [instantiateContext3 environment];
    [environment3 viewSafeAreaInsets];
    top = v14;
    left = v15;
    bottom = v16;
    right = v17;
  }

  else
  {
    v12 = NAN;
    v10 = NAN;
  }

  v24 = [(TUILayout *)self->_rootLayout box];
  layoutDirection = [v24 layoutDirection];

  if (!layoutDirection)
  {
    instantiateContext4 = [(TUILayoutController *)self instantiateContext];
    environment4 = [instantiateContext4 environment];
    -[TUILayout setSpecifiedLayoutDirection:](self->_rootLayout, "setSpecifiedLayoutDirection:", [environment4 layoutDirection]);
  }

  [(TUILayout *)self->_rootLayout setContainingWidth:v10];
  [(TUILayout *)self->_rootLayout setContainingHeight:v12];
  v20 = objc_opt_class();
  v26 = TUIDynamicCast(v20, self->_rootLayout);
  [v26 setSafeAreaInsets:{top, left, bottom, right}];
}

- (id)_createLayoutForModel:(id)model withParent:(id)parent
{
  modelCopy = model;
  parentCopy = parent;
  layoutClass = [modelCopy layoutClass];
  if (layoutClass)
  {
    v9 = [[layoutClass alloc] initWithModel:modelCopy parent:parentCopy controller:self];
    [(NSMapTable *)self->_layouts setObject:v9 forKey:modelCopy];
    if ([v9 isLayout])
    {
      [(TUILayoutController *)self _invalidateLayout:v9 callOnInvalidate:0];
    }

    [(TUILayoutController *)self invalidateChildren:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_validateChildren
{
  if ([(NSHashTable *)self->_invalidChildren count])
  {
    while ([(NSHashTable *)self->_invalidChildren count])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      setRepresentation = [(NSHashTable *)self->_invalidChildren setRepresentation];
      v4 = [setRepresentation countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (!v4)
      {

        break;
      }

      v5 = 0;
      v6 = *v39;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(setRepresentation);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          model = [v8 model];
          if (model)
          {
            while (model != self->_rootBox)
            {
              parentModel = [(TUIBox *)model parentModel];

              model = parentModel;
              if (!parentModel)
              {
                goto LABEL_11;
              }
            }

            [(TUILayoutController *)self _validateChildrenForLayout:v8];
            [(NSHashTable *)self->_invalidChildren removeObject:v8];
            v5 = 1;
          }

          else
          {
LABEL_11:
            [(NSHashTable *)self->_invalidChildren removeObject:v8];
            layouts = self->_layouts;
            model2 = [v8 model];
            [(NSMapTable *)layouts removeObjectForKey:model2];

            model = 0;
          }
        }

        v4 = [setRepresentation countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v4);

      if ((v5 & 1) == 0)
      {
        break;
      }
    }

    if (self->_rootBox)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      objectEnumerator = [(NSHashTable *)self->_orphanLayouts objectEnumerator];
      v14 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v14)
      {
        v15 = *v35;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v17 = *(*(&v34 + 1) + 8 * j);
            [v17 teardown];
            v18 = self->_layouts;
            model3 = [v17 model];
            [(NSMapTable *)v18 removeObjectForKey:model3];

            [(NSHashTable *)self->_invalidRenderModels removeObject:v17];
            [(NSHashTable *)self->_invalidLayouts removeObject:v17];
          }

          v14 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v14);
      }
    }

    else
    {
      [(NSMapTable *)self->_layouts removeAllObjects];
      [(NSHashTable *)self->_invalidRenderModels removeAllObjects];
      [(NSHashTable *)self->_invalidLayouts removeAllObjects];
    }

    [(NSHashTable *)self->_orphanLayouts removeAllObjects];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    keyEnumerator = [(NSMapTable *)self->_layouts keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    v22 = [allObjects countByEnumeratingWithState:&v30 objects:v43 count:16];
    if (v22)
    {
      v23 = *v31;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(allObjects);
          }

          v25 = *(*(&v30 + 1) + 8 * k);
          v26 = v25;
          if (v25)
          {
            v27 = v25;
            while (v27 != self->_rootBox)
            {
              parentModel2 = [(TUIBox *)v27 parentModel];

              v27 = parentModel2;
              if (!parentModel2)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
LABEL_37:
            v27 = [(NSMapTable *)self->_layouts objectForKey:v26];
            [(NSMapTable *)self->_layouts removeObjectForKey:v26];
            [(NSHashTable *)self->_invalidRenderModels removeObject:v27];
            [(NSHashTable *)self->_invalidLayouts removeObject:v27];
            [(NSHashTable *)self->_invalidChildren removeObject:v27];
          }
        }

        v22 = [allObjects countByEnumeratingWithState:&v30 objects:v43 count:16];
      }

      while (v22);
    }

    if ([(NSHashTable *)self->_invalidChildren count])
    {
      v29 = TUILayoutLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_19B5D8(buf, self->_feedId.uniqueIdentifier, [(NSHashTable *)self->_invalidChildren count], v29);
      }

      TUIDebugHaltInDebugger();
      [(NSHashTable *)self->_invalidChildren removeAllObjects];
    }
  }
}

- (void)_validateChildrenForLayout:(id)layout
{
  layoutCopy = layout;
  model = [layoutCopy model];
  v18 = objc_opt_new();
  [model appendLayoutChildrenToArray:v18];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v18;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_layouts objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          [v11 updateParent:layoutCopy];
          if ([(NSHashTable *)self->_orphanLayouts containsObject:v12])
          {
            [(TUILayoutController *)self _unorphanLayout:v12];
          }
        }

        else
        {
          v12 = [(TUILayoutController *)self _createLayoutForModel:v10 withParent:layoutCopy];
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        if (!v6)
        {
          v6 = objc_opt_new();
        }

        [v6 addObject:v12];
LABEL_13:
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  containers = [layoutCopy containers];
  [layoutCopy setContainers:v6];
  [layoutCopy setInvalidChildren:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = containers;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if ([v6 indexOfObjectIdenticalTo:v17] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(TUILayoutController *)self _orphanLayout:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  [layoutCopy onContainersUpdated];
}

- (void)_unorphanLayout:(id)layout
{
  layoutCopy = layout;
  [(NSHashTable *)self->_orphanLayouts removeObject:layoutCopy];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  containers = [layoutCopy containers];
  v6 = [containers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(containers);
        }

        [(TUILayoutController *)self _unorphanLayout:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [containers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_orphanLayout:(id)layout
{
  layoutCopy = layout;
  [(NSHashTable *)self->_orphanLayouts addObject:layoutCopy];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  containers = [layoutCopy containers];
  v6 = [containers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(containers);
        }

        [(TUILayoutController *)self _orphanLayout:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [containers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)renderModelSection:(unint64_t)section offset:(CGPoint)offset uuid:(id)uuid transactionGroup:(id)group
{
  y = offset.y;
  x = offset.x;
  uuidCopy = uuid;
  groupCopy = group;
  instantiateContext = self->_instantiateContext;
  if (instantiateContext)
  {
    v14 = *([(TUIInstantiateContext *)instantiateContext _context]+ 96);
    if (v14)
    {
      v15 = 0;
      *(v14 + 27864) = mach_absolute_time();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 1;
LABEL_6:
  cachedRenderModel = self->_cachedRenderModel;
  if (!cachedRenderModel)
  {
    v39 = groupCopy;
    v40 = uuidCopy;
    v17 = [TUIRenderContext alloc];
    renderModelIdentifierMap = [(TUIIdentifierMap *)self->_identifierMap renderModelIdentifierMap];
    embeddedIdentifierMaps = self->_embeddedIdentifierMaps;
    embeddedUpdateControllers = self->_embeddedUpdateControllers;
    embeddedUUIDs = self->_embeddedUUIDs;
    environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
    v23 = [(TUIRenderContext *)v17 initWithIdentifierMap:renderModelIdentifierMap embeddedIdentifierMaps:embeddedIdentifierMaps embeddedUpdateControllerMap:embeddedUpdateControllers embeddedUUIDMap:embeddedUUIDs environment:environment uid:self->_uid UUID:self->_UUID entry:self->_entry layoutQueue:self->_queue renderMode:self->_renderMode];

    groupCopy = v39;
    uuidCopy = v40;
    [(TUIRenderContext *)v23 setManager:self->_manager];
    [(TUIRenderContext *)v23 setTransactionGroup:v39];
    v24 = [(TUILayoutController *)self renderModelOfKind:7 context:v23];
    v25 = self->_cachedRenderModel;
    self->_cachedRenderModel = v24;

    if ([(NSMutableArray *)self->_errors count])
    {
      v26 = [(TUIRenderModelSection *)self->_cachedRenderModel copyWithErrors:self->_errors];
      v27 = self->_cachedRenderModel;
      self->_cachedRenderModel = v26;
    }

    [(TUILayoutController *)self _updateEmbedded];

    cachedRenderModel = self->_cachedRenderModel;
  }

  v28 = [(TUIRenderModelSection *)cachedRenderModel copyWithSection:section offset:uuidCopy uuid:x, y];
  v29 = self->_cachedRenderModel;
  self->_cachedRenderModel = v28;

  animationGroups = [(TUIBox *)self->_rootBox animationGroups];
  v31 = animationGroups;
  if (animationGroups)
  {
    v32 = [animationGroups generateAllGroupRenderModelsFromSource:self->_cachedRenderModel];
    [(TUIRenderModelSection *)self->_cachedRenderModel setAnimationRenderModels:v32];
  }

  if ((v15 & 1) == 0)
  {
    v33 = *(v14 + 27864);
    v34 = mach_absolute_time();
    v35 = v34 - v33;
    if (v33 >= v34)
    {
      v35 = v33 - v34;
    }

    *(v14 + 27832) += v35;
  }

  v36 = self->_cachedRenderModel;
  v37 = v36;

  return v36;
}

- (void)_updateEmbedded
{
  v14 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  rootBox = [(TUILayoutController *)self rootBox];
  contentModel = [rootBox contentModel];
  v7 = [(TUILayoutController *)self layoutForModel:contentModel];

  [v7 appendEmbeddedIdentifierMaps:v14 updateControllers:v3 UUIDs:v4];
  v8 = [v14 copy];
  embeddedIdentifierMaps = self->_embeddedIdentifierMaps;
  self->_embeddedIdentifierMaps = v8;

  v10 = [v3 copy];
  embeddedUpdateControllers = self->_embeddedUpdateControllers;
  self->_embeddedUpdateControllers = v10;

  v12 = [v4 copy];
  embeddedUUIDs = self->_embeddedUUIDs;
  self->_embeddedUUIDs = v12;
}

- (id)renderModelAuxiliary:(id)auxiliary
{
  auxiliaryCopy = auxiliary;
  cachedAuxRenderModel = self->_cachedAuxRenderModel;
  if (!cachedAuxRenderModel)
  {
    v6 = [TUIRenderContext alloc];
    renderModelIdentifierMap = [(TUIIdentifierMap *)self->_identifierMap renderModelIdentifierMap];
    environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
    v9 = [(TUIRenderContext *)v6 initWithIdentifierMap:renderModelIdentifierMap embeddedIdentifierMaps:0 embeddedUpdateControllerMap:0 embeddedUUIDMap:0 environment:environment uid:self->_uid UUID:self->_UUID entry:self->_entry layoutQueue:self->_queue renderMode:self->_renderMode];

    [(TUIRenderContext *)v9 setManager:self->_manager];
    [(TUIRenderContext *)v9 setTransactionGroup:auxiliaryCopy];
    v10 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    rootBox = [(TUILayoutController *)self rootBox];
    navBarModels = [rootBox navBarModels];

    v13 = [navBarModels countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(navBarModels);
          }

          v16 = [(TUILayoutController *)self layoutForModel:*(*(&v23 + 1) + 8 * v15)];
          v17 = [(TUIRenderContext *)v9 renderModelForLayout:v16 kind:5];
          if (v17)
          {
            [v10 addObject:v17];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [navBarModels countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v18 = [[TUIRenderModelAuxiliary alloc] initWithNavigationItems:v10];
    v20 = self->_cachedAuxRenderModel;
    p_cachedAuxRenderModel = &self->_cachedAuxRenderModel;
    *p_cachedAuxRenderModel = v18;

    cachedAuxRenderModel = *p_cachedAuxRenderModel;
  }

  v21 = cachedAuxRenderModel;

  return cachedAuxRenderModel;
}

- (id)renderModelLayer:(id)layer
{
  layerCopy = layer;
  cachedLayerRenderModel = self->_cachedLayerRenderModel;
  if (!cachedLayerRenderModel)
  {
    v6 = [TUIRenderContext alloc];
    renderModelIdentifierMap = [(TUIIdentifierMap *)self->_identifierMap renderModelIdentifierMap];
    environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
    v9 = [(TUIRenderContext *)v6 initWithIdentifierMap:renderModelIdentifierMap embeddedIdentifierMaps:0 embeddedUpdateControllerMap:0 embeddedUUIDMap:0 environment:environment uid:self->_uid UUID:self->_UUID entry:self->_entry layoutQueue:self->_queue renderMode:self->_renderMode];

    [(TUIRenderContext *)v9 setManager:self->_manager];
    [(TUIRenderContext *)v9 setTransactionGroup:layerCopy];
    v10 = [(TUILayoutController *)self renderModelOfKind:3 context:v9];
    v11 = self->_cachedLayerRenderModel;
    self->_cachedLayerRenderModel = v10;

    cachedLayerRenderModel = self->_cachedLayerRenderModel;
  }

  v12 = cachedLayerRenderModel;

  return cachedLayerRenderModel;
}

- (id)renderModelOfKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  rootBox = [(TUILayoutController *)self rootBox];
  contentModel = [rootBox contentModel];
  v9 = [(TUILayoutController *)self layoutForModel:contentModel];

  v10 = [contextCopy renderModelForLayout:v9 kind:kind];

  return v10;
}

- (id)renderModelOfKind:(unint64_t)kind transactionGroup:(id)group
{
  groupCopy = group;
  v7 = [TUIRenderContext alloc];
  renderModelIdentifierMap = [(TUIIdentifierMap *)self->_identifierMap renderModelIdentifierMap];
  environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
  v10 = [(TUIRenderContext *)v7 initWithIdentifierMap:renderModelIdentifierMap embeddedIdentifierMaps:0 embeddedUpdateControllerMap:0 embeddedUUIDMap:0 environment:environment uid:self->_uid UUID:self->_UUID entry:self->_entry layoutQueue:self->_queue renderMode:self->_renderMode];

  [(TUIRenderContext *)v10 setManager:self->_manager];
  [(TUIRenderContext *)v10 setTransactionGroup:groupCopy];
  v11 = [(TUILayoutController *)self renderModelOfKind:kind context:v10];

  return v11;
}

- (id)loadResourceWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_E2F40;
  v29 = sub_E2F50;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_E2F40;
  v23 = sub_E2F50;
  v24 = 0;
  manager = [(TUILayoutController *)self manager];
  resourceLoader = [manager resourceLoader];

  if (resourceLoader)
  {
    v9 = dispatch_semaphore_create(0);
    manager2 = [(TUILayoutController *)self manager];
    resourceLoader2 = [manager2 resourceLoader];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_E2F58;
    v15[3] = &unk_261890;
    v17 = &v25;
    v18 = &v19;
    v12 = v9;
    v16 = v12;
    [resourceLoader2 loadResourceWithURL:lCopy completion:v15];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (error)
  {
    *error = v20[5];
  }

  v13 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (void)invalidateCachedRenderModelForLayout:(id)layout
{
  layoutCopy = layout;
  v8 = layoutCopy;
  if (layoutCopy)
  {
    [(NSHashTable *)self->_invalidRenderModels addObject:layoutCopy];
  }

  else
  {
    cachedRenderModel = self->_cachedRenderModel;
    self->_cachedRenderModel = 0;

    cachedAuxRenderModel = self->_cachedAuxRenderModel;
    self->_cachedAuxRenderModel = 0;

    cachedLayerRenderModel = self->_cachedLayerRenderModel;
    self->_cachedLayerRenderModel = 0;
  }
}

- (void)cachedRenderModelValidatedForLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    [(NSHashTable *)self->_invalidRenderModels removeObject:layoutCopy];
  }
}

- (void)validateRenderModelsWithTransactionGroup:(id)group
{
  groupCopy = group;
  v5 = [TUIRenderContext alloc];
  renderModelIdentifierMap = [(TUIIdentifierMap *)self->_identifierMap renderModelIdentifierMap];
  embeddedIdentifierMaps = self->_embeddedIdentifierMaps;
  embeddedUpdateControllers = self->_embeddedUpdateControllers;
  embeddedUUIDs = self->_embeddedUUIDs;
  environment = [(TUIInstantiateContext *)self->_instantiateContext environment];
  v11 = [(TUIRenderContext *)v5 initWithIdentifierMap:renderModelIdentifierMap embeddedIdentifierMaps:embeddedIdentifierMaps embeddedUpdateControllerMap:embeddedUpdateControllers embeddedUUIDMap:embeddedUUIDs environment:environment uid:self->_uid UUID:self->_UUID entry:self->_entry layoutQueue:self->_queue renderMode:self->_renderMode];

  [(TUIRenderContext *)v11 setManager:self->_manager];
  [(TUIRenderContext *)v11 setTransactionGroup:groupCopy];
  allObjects = [(NSHashTable *)self->_invalidRenderModels allObjects];
  [(NSHashTable *)self->_invalidRenderModels removeAllObjects];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = allObjects;
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v17 + 1) + 8 * v16) validateRenderModelWithContext:v11 transactionGroup:groupCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (id)axModelTree
{
  rootBox = [(TUILayoutController *)self rootBox];
  contentModel = [rootBox contentModel];
  v5 = [(TUILayoutController *)self layoutForModel:contentModel];

  v6 = [v5 axModelTreeWithCustomActionsCollector:0 scrollAncestorLayout:0 scrollAncestorTranslation:0 liveTransformAncestorLayout:{CGPointZero.x, CGPointZero.y}];

  return v6;
}

- (id)imageResourceForKind:(id)kind naturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options
{
  height = size.height;
  width = size.width;
  kindCopy = kind;
  instanceCopy = instance;
  optionsCopy = options;
  resourceRegistry = [(TUIManager *)self->_manager resourceRegistry];
  v17 = [resourceRegistry imageProviderForKind:kindCopy];

  v18 = [v17 imageResourceForNaturalSize:instanceCopy contentsScale:optionsCopy instance:width options:{height, scale}];
  capture = [(TUIInstantiateContext *)self->_instantiateContext capture];

  if (capture && v18)
  {
    capture2 = [(TUIInstantiateContext *)self->_instantiateContext capture];
    [capture2 captureImageResource:v18 forKind:kindCopy naturalSize:instanceCopy contentsScale:optionsCopy instance:width options:{height, scale}];
  }

  return v18;
}

- (id)intrinsicImageResourceForKind:(id)kind instance:(id)instance options:(id)options
{
  kindCopy = kind;
  instanceCopy = instance;
  optionsCopy = options;
  resourceRegistry = [(TUIManager *)self->_manager resourceRegistry];
  v12 = [resourceRegistry imageProviderForKind:kindCopy];

  v13 = [v12 intrinsicImageResourceForInstance:instanceCopy options:optionsCopy];
  capture = [(TUIInstantiateContext *)self->_instantiateContext capture];

  if (capture && v13)
  {
    capture2 = [(TUIInstantiateContext *)self->_instantiateContext capture];
    [capture2 captureIntrinsicImageResource:v13 forKind:kindCopy instance:instanceCopy options:optionsCopy];
  }

  return v13;
}

- (BOOL)applyHostingGeometryMapUpdate:(id)update
{
  updateCopy = update;
  v4 = [updateCopy to];
  hostingGeometryMap = self->_hostingGeometryMap;
  self->_hostingGeometryMap = v4;

  toReuseMap = [updateCopy toReuseMap];
  hostingGeometryReuseMap = self->_hostingGeometryReuseMap;
  self->_hostingGeometryReuseMap = toReuseMap;

  if ([(NSMapTable *)self->_hostingLayouts count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    differences = [updateCopy differences];
    v9 = [differences countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v31 = 0;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(differences);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = [(NSMapTable *)self->_hostingLayouts objectForKey:v12];
          v14 = v13;
          if (v13)
          {
            hostingGeometry = [v13 hostingGeometry];
            v16 = [(TUIHostingGeometryMap *)self->_hostingGeometryMap geometryForIdentifier:v12];
            if (!v16)
            {
              v17 = self->_hostingGeometryReuseMap;
              [v14 hostingRequestedSize];
              v16 = [(_TUIHostingGeometryReuseMap *)v17 geometryForIdentifier:v12 requestedSize:?];
            }

            if (hostingGeometry != v16 && ([hostingGeometry isEqualToGeometry:v16] & 1) == 0)
            {
              [v14 invalidateLayout];
              v31 = 1;
            }
          }
        }

        v9 = [differences countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  if ([(NSMapTable *)self->_hostingLayouts count])
  {
    v18 = self->_hostingGeometryReuseMap;
    if (v18)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      reuseIdentifiers = [(_TUIHostingGeometryReuseMap *)v18 reuseIdentifiers];
      v20 = [reuseIdentifiers countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        v21 = *v33;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(reuseIdentifiers);
            }

            v23 = *(*(&v32 + 1) + 8 * j);
            v24 = [(NSMapTable *)self->_hostingLayouts objectForKey:v23];
            v25 = v24;
            if (v24)
            {
              hostingGeometry2 = [v24 hostingGeometry];
              v27 = self->_hostingGeometryReuseMap;
              [v25 hostingRequestedSize];
              v28 = [(_TUIHostingGeometryReuseMap *)v27 geometryForIdentifier:v23 requestedSize:?];
              if (hostingGeometry2 != v28 && ([hostingGeometry2 isEqualToGeometry:v28] & 1) == 0)
              {
                [v25 invalidateLayout];
                v31 = 1;
              }
            }
          }

          v20 = [reuseIdentifiers countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v20);
      }
    }
  }

  return v31 & 1;
}

- (id)hostingGeometryForIdentifier:(id)identifier requestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  if (identifierCopy && (hostingGeometryMap = self->_hostingGeometryMap) != 0)
  {
    height = [(TUIHostingGeometryMap *)hostingGeometryMap geometryForIdentifier:identifierCopy];
    if (height)
    {
      hostedViewFactoryTypesWithGeometryReuse = TUIHostingLog();
      if (os_log_type_enabled(hostedViewFactoryTypesWithGeometryReuse, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = self->_feedId.uniqueIdentifier;
        v29.width = width;
        v29.height = height;
        v12 = NSStringFromCGSize(v29);
        v20 = 134218754;
        v21 = uniqueIdentifier;
        v22 = 2112;
        v23 = identifierCopy;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = height;
        _os_log_debug_impl(&dword_0, hostedViewFactoryTypesWithGeometryReuse, OS_LOG_TYPE_DEBUG, "[fid:%lu] hostingGeometryForIdentifer:%@ requestedSize:%@ => %@", &v20, 0x2Au);
      }
    }

    else
    {
      viewRegistry = [(TUIManager *)self->_manager viewRegistry];
      hostedViewFactoryTypesWithGeometryReuse = [viewRegistry hostedViewFactoryTypesWithGeometryReuse];

      type = [identifierCopy type];
      v15 = [hostedViewFactoryTypesWithGeometryReuse containsObject:type];

      if (v15)
      {
        height = [(_TUIHostingGeometryReuseMap *)self->_hostingGeometryReuseMap geometryForIdentifier:identifierCopy requestedSize:width, height];
        if (height)
        {
          v16 = TUIHostingLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v18 = self->_feedId.uniqueIdentifier;
            v30.width = width;
            v30.height = height;
            v19 = NSStringFromCGSize(v30);
            v20 = 134218754;
            v21 = v18;
            v22 = 2112;
            v23 = identifierCopy;
            v24 = 2112;
            v25 = v19;
            v26 = 2112;
            v27 = height;
            _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "[fid:%lu] hostingGeometryForIdentifer:%@ requestedSize:%@ => %@ (reused)", &v20, 0x2Au);
          }
        }
      }

      else
      {
        height = 0;
      }
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

@end