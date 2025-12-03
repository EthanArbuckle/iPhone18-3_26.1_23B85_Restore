@interface TUIVisibilityCollector
- (BOOL)_computeVisible;
- (BOOL)q_updateVisible:(BOOL)visible;
- (CGSize)q_visibleBoundsSize;
- (TUIVisibilityCollector)initWithController:(id)controller provider:(id)provider identifier:(id)identifier;
- (TUIVisibilityCollector)parent;
- (TUIVisibilityProviding)provider;
- (double)_now;
- (id)children;
- (id)q_computeChangeNodeForTracker:(id)tracker anyChange:(BOOL *)change rootVisibleSize:(CGSize)size needsUpdate:(BOOL)update needUpdateSet:(id)set;
- (void)_addChild:(id)child;
- (void)_removeChild:(id)child;
- (void)becameHiddenAtTime:(double)time;
- (void)becameVisibleAtTime:(double)time;
- (void)teardown;
- (void)teardownAtTime:(double)time;
- (void)updateSections;
- (void)updateSectionsAtTime:(double)time;
- (void)updateVisible;
- (void)updateVisibleAtTime:(double)time;
- (void)updateVisibleBounds;
- (void)updateVisibleBoundsAtTime:(double)time;
@end

@implementation TUIVisibilityCollector

- (TUIVisibilityCollector)initWithController:(id)controller provider:(id)provider identifier:(id)identifier
{
  controllerCopy = controller;
  providerCopy = provider;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = TUIVisibilityCollector;
  v11 = [(TUIVisibilityCollector *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_controller, controllerCopy);
    objc_storeWeak(&v12->_provider, providerCopy);
    objc_storeStrong(&v12->_identifier, identifier);
    *(v12 + 88) &= 0xF0u;
    size = CGRectNull.size;
    v12->_q_visibleBounds.origin = CGRectNull.origin;
    v12->_q_visibleBounds.size = size;
    v14 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    q_trackerStateMap = v12->_q_trackerStateMap;
    v12->_q_trackerStateMap = v14;
  }

  return v12;
}

- (id)children
{
  v2 = [(NSMutableArray *)self->_currentChildren copy];

  return v2;
}

- (void)updateSections
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = sub_19F7C();

  [(TUIVisibilityCollector *)self updateSectionsAtTime:v3];
}

- (void)updateSectionsAtTime:(double)time
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  visibilityProviderSections = [WeakRetained visibilityProviderSections];
  v7 = [visibilityProviderSections copy];

  v8 = objc_loadWeakRetained(&self->_controller);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1A670;
  v10[3] = &unk_25DCA0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 queueUpdateForCollector:self time:v10 block:time];
}

- (void)updateVisibleBounds
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = sub_19F7C();

  [(TUIVisibilityCollector *)self updateVisibleBoundsAtTime:v3];
}

- (void)updateVisibleBoundsAtTime:(double)time
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  if ([WeakRetained visibilityProviderIsScrolling])
  {
    v6 = time - self->_lastScrollUpdate;

    if (v6 <= 0.1)
    {
      return;
    }
  }

  else
  {
  }

  self->_lastScrollUpdate = time;
  v7 = objc_loadWeakRetained(&self->_controller);
  [v7 queueVisibleBoundsUpdateForCollector:self time:time];
}

- (void)teardown
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = sub_19F7C();

  [(TUIVisibilityCollector *)self teardownAtTime:v3];
}

- (void)teardownAtTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1A88C;
  v8[3] = &unk_25DE30;
  v8[4] = self;
  [WeakRetained queueUpdateForCollector:self time:v8 block:time];

  parent = [(TUIVisibilityCollector *)self parent];
  [parent _removeChild:self];

  v7 = objc_loadWeakRetained(&self->_controller);
  [v7 removeCollector:self];
}

- (BOOL)_computeVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  visibilityProviderIsVisible = [WeakRetained visibilityProviderIsVisible];

  v5 = objc_loadWeakRetained(&self->_parent);
  if (v5)
  {
    v6 = v5;
    v7 = objc_loadWeakRetained(&self->_parent);
    _computeVisible = [v7 _computeVisible];

    visibilityProviderIsVisible &= _computeVisible;
  }

  return visibilityProviderIsVisible & 1;
}

- (void)becameVisibleAtTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained queueUpdateVisible:1 forCollector:self time:time];
}

- (void)becameHiddenAtTime:(double)time
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained queueUpdateVisible:0 forCollector:self time:time];
}

- (void)updateVisible
{
  v3 = sub_19F7C();

  [(TUIVisibilityCollector *)self updateVisibleAtTime:v3];
}

- (void)updateVisibleAtTime:(double)time
{
  if ([(TUIVisibilityCollector *)self _computeVisible])
  {

    [(TUIVisibilityCollector *)self becameVisibleAtTime:time];
  }

  else
  {

    [(TUIVisibilityCollector *)self becameHiddenAtTime:time];
  }
}

- (void)_addChild:(id)child
{
  childCopy = child;
  if (childCopy)
  {
    currentChildren = self->_currentChildren;
    if (!currentChildren)
    {
      v6 = objc_opt_new();
      v7 = self->_currentChildren;
      self->_currentChildren = v6;

      currentChildren = self->_currentChildren;
    }

    [(NSMutableArray *)currentChildren addObject:childCopy];
    [childCopy setParent:self];
    v8 = [(NSMutableArray *)self->_currentChildren copy];
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1AB94;
    v11[3] = &unk_25DCA0;
    v11[4] = self;
    v12 = v8;
    v10 = v8;
    [WeakRetained queueUpdateWithBlock:v11];
  }
}

- (void)_removeChild:(id)child
{
  if (child)
  {
    currentChildren = self->_currentChildren;
    childCopy = child;
    [(NSMutableArray *)currentChildren removeObjectIdenticalTo:childCopy];
    [childCopy setParent:0];

    v6 = [(NSMutableArray *)self->_currentChildren copy];
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1AC84;
    v9[3] = &unk_25DCA0;
    v9[4] = self;
    v10 = v6;
    v8 = v6;
    [WeakRetained queueUpdateWithBlock:v9];
  }
}

- (double)_now
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (BOOL)q_updateVisible:(BOOL)visible
{
  v3 = *(self + 88);
  if (((((v3 & 4) == 0) ^ visible) & 1) == 0)
  {
    if (visible)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 88) = v3 & 0xFB | v4;
  }

  return ((v3 & 4) == 0) ^ visible ^ 1;
}

- (CGSize)q_visibleBoundsSize
{
  width = self->_q_visibleBounds.size.width;
  height = self->_q_visibleBounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)q_computeChangeNodeForTracker:(id)tracker anyChange:(BOOL *)change rootVisibleSize:(CGSize)size needsUpdate:(BOOL)update needUpdateSet:(id)set
{
  height = size.height;
  width = size.width;
  trackerCopy = tracker;
  setCopy = set;
  if ((*(self + 88) & 1) == 0)
  {
    v14 = 0;
    goto LABEL_86;
  }

  if (update)
  {
    v80 = 1;
  }

  else
  {
    v80 = [setCopy containsObject:self];
  }

  v15 = [(NSMapTable *)self->_q_trackerStateMap objectForKey:trackerCopy];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = objc_alloc_init(_TUIVisibilityState);
    [(NSMapTable *)self->_q_trackerStateMap setObject:v16 forKey:trackerCopy];
    v80 = 1;
    if (!v16)
    {
      v19 = 0;
      v79 = 0;
      v18 = 0;
LABEL_10:
      v22 = +[NSMutableSet set];
      v23 = objc_opt_new();
      if ((*(self + 88) & 4) != 0 && (*(self + 88) & 8) == 0 && width > 0.0 && height > 0.0)
      {
        v74 = v18;
        v76 = v19;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v24 = self->_q_sections;
        v25 = [(NSArray *)v24 countByEnumeratingWithState:&v97 objects:v104 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v98;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v98 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v97 + 1) + 8 * i);
              [v29 frame];
              x = v105.origin.x;
              y = v105.origin.y;
              v32 = v105.size.width;
              v33 = v105.size.height;
              if (!CGRectIsEmpty(v105))
              {
                v106.origin.x = x;
                v106.origin.y = y;
                v106.size.width = v32;
                v106.size.height = v33;
                if (CGRectIntersectsRect(self->_q_visibleBounds, v106))
                {
                  [v29 frame];
                  v90[0] = _NSConcreteStackBlock;
                  v90[1] = 3221225472;
                  v90[2] = sub_1B428;
                  v90[3] = &unk_25E0B0;
                  v93 = v34;
                  v94 = v35;
                  v90[4] = self;
                  v95 = width;
                  v96 = height;
                  v91 = v22;
                  v92 = v23;
                  [trackerCopy enumerateAttributesInSection:v29 block:v90];
                }
              }
            }

            v26 = [(NSArray *)v24 countByEnumeratingWithState:&v97 objects:v104 count:16];
          }

          while (v26);
        }

        v18 = v74;
        v19 = v76;
      }

      if ([v22 count])
      {
        v21 = [v22 copy];
      }

      else
      {
        v21 = 0;
      }

      if ([v23 count])
      {
        v36 = [v23 copy];
      }

      else
      {
        v36 = 0;
      }

      v20 = 1;
      v19 = v36;
      goto LABEL_32;
    }
  }

  v17 = v80;
  v18 = v16->_visible;
  v79 = v16;
  v19 = v16->_attributesMap;
  LOBYTE(v80) = 0;
  v20 = 0;
  v21 = v18;
  if (v17)
  {
    goto LABEL_10;
  }

LABEL_32:
  v77 = v19;
  v78 = v21;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v37 = self->_q_children;
  v38 = [(NSArray *)v37 countByEnumeratingWithState:&v86 objects:v103 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v87;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v87 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v86 + 1) + 8 * j);
        v44 = [v43 q_computeChangeNodeForTracker:trackerCopy anyChange:change rootVisibleSize:v20 needsUpdate:setCopy needUpdateSet:{width, height}];
        identifier = [v43 identifier];
        v46 = identifier;
        if (v44)
        {
          v47 = identifier == 0;
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          if (!v40)
          {
            v40 = objc_opt_new();
          }

          [v40 setObject:v44 forKeyedSubscript:v46];
        }
      }

      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v86 objects:v103 count:16];
    }

    while (v39);
  }

  else
  {
    v40 = 0;
  }

  if (v80)
  {
    visible = 0;
    v48 = v79;
  }

  else
  {
    v48 = v79;
    visible = v79->_visible;
  }

  v50 = v77;
  v51 = v78;
  if (v78 == visible)
  {
    v55 = 0;
    v56 = 0;
  }

  else
  {
    if (v78)
    {
      v52 = [(NSSet *)v78 mutableCopy];
      v53 = v52;
      if (v80)
      {
        v54 = 0;
      }

      else
      {
        v54 = v48->_visible;
      }

      [v52 minusSet:v54];
      if ([v53 count])
      {
        v55 = [v53 copy];
      }

      else
      {
        v55 = 0;
      }

      if ((v80 & 1) == 0 && v48->_visible)
      {
        sub_19972C(v80, v48, v78, &v101);
        v56 = v101;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      if (v80)
      {
        v57 = 0;
      }

      else
      {
        v57 = v48->_visible;
      }

      v56 = v57;
      v55 = 0;
    }

    if (v55 | v56)
    {
      *change = 1;
    }

    if ([v56 count])
    {
      v75 = v55;
      if (v77)
      {
        v59 = [(NSDictionary *)v77 mutableCopy];
      }

      else
      {
        v59 = objc_opt_new();
      }

      v60 = v59;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v73 = v56;
      v61 = v56;
      v62 = [v61 countByEnumeratingWithState:&v82 objects:v102 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v83;
        do
        {
          v65 = 0;
          do
          {
            if (*v83 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v66 = *(*(&v82 + 1) + 8 * v65);
            if (v80)
            {
              attributesMap = 0;
            }

            else
            {
              attributesMap = v79->_attributesMap;
            }

            v68 = attributesMap;
            v69 = [(NSDictionary *)v68 objectForKeyedSubscript:v66];
            [v60 setObject:v69 forKeyedSubscript:v66];

            v65 = v65 + 1;
          }

          while (v63 != v65);
          v70 = [v61 countByEnumeratingWithState:&v82 objects:v102 count:16];
          v63 = v70;
        }

        while (v70);
      }

      v50 = [v60 copy];
      v51 = v78;
      v48 = v79;
      v56 = v73;
      v55 = v75;
    }

    if ((v80 & 1) == 0)
    {
      objc_setProperty_nonatomic_copy(v48, v58, v51, 8);
      objc_setProperty_nonatomic_copy(v48, v71, v50, 16);
    }
  }

  v14 = [[TUIVisibilityChangeNode alloc] initWithIdentifiers:v51 added:v55 removed:v56 identifierNodeMap:v40 attributesMap:v50];

LABEL_86:
  return v14;
}

- (TUIVisibilityProviding)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (TUIVisibilityCollector)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end