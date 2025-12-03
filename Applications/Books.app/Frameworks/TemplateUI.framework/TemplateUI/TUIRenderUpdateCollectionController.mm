@interface TUIRenderUpdateCollectionController
- (TUIRenderUpdateCollectionController)initWithLayoutQueue:(id)queue renderModel:(id)model;
- (TUIRenderUpdateCollectionControllerDelegate)delegate;
- (id)registerDelegate:(id)delegate;
- (id)renderModel;
- (id)renderModelAndHostingMap;
- (void)_updateWithHostingMap:(id)map transactionGroup:(id)group;
- (void)_updateWithRenderModel:(id)model viewState:(id)state flags:(unint64_t)flags transactionGroup:(id)group;
- (void)applyInitialUpdate;
- (void)unregisterDelegate:(id)delegate;
- (void)updateWithHostingMap:(id)map transactionGroup:(id)group;
- (void)updateWithRenderModel:(id)model viewState:(id)state flags:(unint64_t)flags transactionGroup:(id)group;
@end

@implementation TUIRenderUpdateCollectionController

- (TUIRenderUpdateCollectionController)initWithLayoutQueue:(id)queue renderModel:(id)model
{
  queueCopy = queue;
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = TUIRenderUpdateCollectionController;
  v9 = [(TUIRenderUpdateCollectionController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutQueue, queue);
    objc_storeStrong(&v10->_currentModel, model);
    v11 = dispatch_queue_create("TUIRenderUpdateCollectionController.accessQueue", 0);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v11;

    v13 = objc_opt_new();
    sectionTrackers = v10->_sectionTrackers;
    v10->_sectionTrackers = v13;

    v10->_isInitial = 1;
  }

  return v10;
}

- (id)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_97DC0;
  v16 = sub_97DD0;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_97DD8;
  block[3] = &unk_25DC78;
  block[4] = self;
  v10 = delegateCopy;
  v11 = &v12;
  v6 = delegateCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)renderModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_97DC0;
  v10 = sub_97DD0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_981E8;
  v5[3] = &unk_25EFF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)renderModelAndHostingMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_97DC0;
  v10 = sub_97DD0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_982EC;
  v5[3] = &unk_25EFF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)applyInitialUpdate
{
  initialUpdateBlock = self->_initialUpdateBlock;
  if (initialUpdateBlock)
  {
    initialUpdateBlock[2](initialUpdateBlock, a2);
    v4 = self->_initialUpdateBlock;
    self->_initialUpdateBlock = 0;
  }
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_98438;
  v7[3] = &unk_25DCA0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)updateWithHostingMap:(id)map transactionGroup:(id)group
{
  mapCopy = map;
  groupCopy = group;
  if (groupCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_9857C;
    v8[3] = &unk_25E7C0;
    v8[4] = self;
    v9 = mapCopy;
    v10 = groupCopy;
    [v10 computeUpdatesWithBlock:v8];
  }

  else
  {
    [(TUIRenderUpdateCollectionController *)self _updateWithHostingMap:mapCopy transactionGroup:0];
  }
}

- (void)_updateWithHostingMap:(id)map transactionGroup:(id)group
{
  mapCopy = map;
  groupCopy = group;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_97DC0;
  v17[4] = sub_97DD0;
  v18 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_98730;
  block[3] = &unk_25ED40;
  v16 = v17;
  block[4] = self;
  v9 = mapCopy;
  v15 = v9;
  dispatch_sync(accessQueue, block);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_987C0;
    v10[3] = &unk_260890;
    v13 = v17;
    v11 = v9;
    selfCopy = self;
    [groupCopy appendUpdateBlock:v10];
  }

  _Block_object_dispose(v17, 8);
}

- (void)updateWithRenderModel:(id)model viewState:(id)state flags:(unint64_t)flags transactionGroup:(id)group
{
  modelCopy = model;
  stateCopy = state;
  groupCopy = group;
  if (groupCopy)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_988E4;
    v13[3] = &unk_2608B8;
    v13[4] = self;
    v14 = modelCopy;
    v15 = stateCopy;
    flagsCopy = flags;
    v16 = groupCopy;
    [v16 computeUpdatesWithBlock:v13];
  }

  else
  {
    [(TUIRenderUpdateCollectionController *)self _updateWithRenderModel:modelCopy viewState:stateCopy flags:flags transactionGroup:0];
  }
}

- (void)_updateWithRenderModel:(id)model viewState:(id)state flags:(unint64_t)flags transactionGroup:(id)group
{
  modelCopy = model;
  stateCopy = state;
  groupCopy = group;
  selfCopy = self;
  model = self->_model;
  location = &self->_model;
  if (model)
  {
    sections = [(TUIRenderModelCollection *)model sections];
    v81 = [sections valueForKey:@"UUID"];
  }

  else
  {
    v81 = &__NSArray0__struct;
  }

  v76 = objc_opt_new();
  v74 = self->_currentModel;
  v82 = objc_alloc_init(TUIRenderUpdateChanges);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = [modelCopy sections];
  v11 = [obj countByEnumeratingWithState:&v108 objects:v113 count:16];
  if (!v11)
  {
    v79 = 0;
    v77 = 0;
    goto LABEL_26;
  }

  v77 = 0;
  v79 = 0;
  v80 = *v109;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v109 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v108 + 1) + 8 * i);
      uUID = [v13 UUID];
      v15 = [v81 indexOfObject:uUID];

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
LABEL_21:
        identifierToContainedSubmodelMap = [v13 identifierToContainedSubmodelMap];
        allKeys = [identifierToContainedSubmodelMap allKeys];
        [(TUIRenderUpdateChanges *)v82 unionInserts:allKeys];
        goto LABEL_22;
      }

      sections2 = [(TUIRenderModelCollection *)selfCopy->_model sections];
      identifierToContainedSubmodelMap = [sections2 objectAtIndexedSubscript:v15];

      sections3 = [(TUIRenderModelCollection *)selfCopy->_currentModel sections];
      v16 = [sections3 objectAtIndexedSubscript:v15];

      if (!identifierToContainedSubmodelMap)
      {
        goto LABEL_21;
      }

      sectionTrackers = selfCopy->_sectionTrackers;
      uUID2 = [v13 UUID];
      allKeys = [(NSMutableDictionary *)sectionTrackers objectForKeyedSubscript:uUID2];

      v23 = [v13 computeContainerUpdateCurrent:v16 from:identifierToContainedSubmodelMap tracker:allKeys flags:0];
      if (!v79)
      {
        v79 = objc_opt_new();
      }

      uUID3 = [v13 UUID];
      [v79 setObject:v23 forKeyedSubscript:uUID3];

      tracker = [v23 tracker];
      v26 = tracker == allKeys;

      if (!v26)
      {
        tracker2 = [v23 tracker];
        v28 = selfCopy->_sectionTrackers;
        uUID4 = [v13 UUID];
        [(NSMutableDictionary *)v28 setObject:tracker2 forKeyedSubscript:uUID4];
      }

      v107 = 0;
      v30 = [v23 newToContainerPlusDeletedWithInterests:v76 changes:&v107];
      v31 = v107;
      if (v30 != v13)
      {
        if (!v77)
        {
          sections4 = [modelCopy sections];
          v77 = [sections4 mutableCopy];
        }

        [v77 replaceObjectAtIndex:objc_msgSend(v13 withObject:{"section"), v30}];
      }

      [(TUIRenderUpdateChanges *)v82 unionChanges:v31];

LABEL_22:
    }

    v11 = [obj countByEnumeratingWithState:&v108 objects:v113 count:16];
  }

  while (v11);
LABEL_26:

  objc_storeStrong(location, model);
  if (v77)
  {
    v33 = [TUIRenderModelCollection alloc];
    content = [modelCopy content];
    [modelCopy size];
    v36 = v35;
    v38 = v37;
    [modelCopy insets];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    visibleBoundsObservers = [modelCopy visibleBoundsObservers];
    info = [modelCopy info];
    anchorSet = [modelCopy anchorSet];
    layoutDirection = [*location layoutDirection];
    matchingSectionUUID = [modelCopy matchingSectionUUID];
    matchingSectionUID = [modelCopy matchingSectionUID];
    v53 = [(TUIRenderModelCollection *)v33 initWithContent:content sections:v77 size:visibleBoundsObservers insets:info visibleBoundsObservers:anchorSet info:layoutDirection anchorSet:v36 layoutDirection:v38 matchingUUID:v40 matchingUID:v42, v44, v46, matchingSectionUUID, matchingSectionUID];
  }

  else
  {
    v53 = modelCopy;
  }

  v54 = [[TUIRenderUpdateCollection alloc] initWithFrom:v74 to:v53 viewState:stateCopy updates:v79 changes:v82 layoutQueue:selfCopy->_layoutQueue flags:flags];
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_97DC0;
  v105 = sub_97DD0;
  v106 = 0;
  accessQueue = selfCopy->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_99154;
  block[3] = &unk_2608E0;
  v100 = &v101;
  block[4] = selfCopy;
  v56 = modelCopy;
  v96 = v56;
  v57 = v53;
  v97 = v57;
  v58 = v54;
  v98 = v58;
  v59 = v76;
  v99 = v59;
  dispatch_sync(accessQueue, block);
  if (v102[5])
  {
    v60 = +[TUIResourceCollector createImageResourceCollectorForLoaded];
    v61 = *&CGAffineTransformIdentity.c;
    v94[0] = *&CGAffineTransformIdentity.a;
    v94[1] = v61;
    v94[2] = *&CGAffineTransformIdentity.tx;
    [(TUIRenderModelCollection *)v57 appendResourcesToCollector:v60 transform:v94];
    imageResources = [v60 imageResources];
    setRepresentation = [imageResources setRepresentation];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v64 = setRepresentation;
    v65 = [v64 countByEnumeratingWithState:&v90 objects:v112 count:16];
    if (v65)
    {
      v66 = *v91;
      do
      {
        for (j = 0; j != v65; j = j + 1)
        {
          if (*v91 != v66)
          {
            objc_enumerationMutation(v64);
          }

          [*(*(&v90 + 1) + 8 * j) pauseUnload];
        }

        v65 = [v64 countByEnumeratingWithState:&v90 objects:v112 count:16];
      }

      while (v65);
    }

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_99228;
    v84[3] = &unk_260908;
    v89 = &v101;
    v85 = v58;
    v86 = selfCopy;
    v87 = v59;
    v68 = v64;
    v88 = v68;
    [groupCopy appendUpdateBlock:v84];
  }

  _Block_object_dispose(&v101, 8);
}

- (TUIRenderUpdateCollectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end