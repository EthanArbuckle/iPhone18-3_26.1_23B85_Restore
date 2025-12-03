@interface TUIRenderUpdateCollection
- (TUIRenderUpdateCollection)initWithFrom:(id)from to:(id)to viewState:(id)state updates:(id)updates changes:(id)changes layoutQueue:(id)queue flags:(unint64_t)flags;
- (id).cxx_construct;
- (id)_computeFromPlusInsertsWithFrom:(id)from to:(id)to;
- (id)_computeUpdatedWithFrom:(id)from to:(id)to;
- (void)_applyUpdates:(const void *)updates toFeedView:(id)view;
- (void)_computeSectionUpdates:(void *)updates from:(id)from to:(id)to;
- (void)_computeWithUpdates:(id)updates layoutQueue:(id)queue;
- (void)applyToFeedView:(id)view completion:(id)completion;
@end

@implementation TUIRenderUpdateCollection

- (TUIRenderUpdateCollection)initWithFrom:(id)from to:(id)to viewState:(id)state updates:(id)updates changes:(id)changes layoutQueue:(id)queue flags:(unint64_t)flags
{
  fromCopy = from;
  toCopy = to;
  stateCopy = state;
  updatesCopy = updates;
  changesCopy = changes;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = TUIRenderUpdateCollection;
  v21 = [(TUIRenderUpdateCollection *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_from, from);
    objc_storeStrong(&v22->_to, to);
    v23 = [stateCopy copy];
    viewState = v22->_viewState;
    v22->_viewState = v23;

    objc_storeStrong(&v22->_changes, changes);
    v22->_flags = flags;
    if (v22->_from != v22->_to)
    {
      [(TUIRenderUpdateCollection *)v22 _computeWithUpdates:updatesCopy layoutQueue:queueCopy];
    }
  }

  return v22;
}

- (id)_computeFromPlusInsertsWithFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v6 = [[NSMutableSet alloc] initWithArray:toCopy];
  v7 = [NSSet setWithArray:fromCopy];
  [v6 minusSet:v7];

  v8 = [fromCopy mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = toCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v6 containsObject:v13])
        {
          v14 = [v9 indexOfObject:v13];
          if (v14)
          {
            v15 = [v9 objectAtIndexedSubscript:v14 - 1];
            v16 = [v8 indexOfObject:v15];

            v17 = v16 + 1;
          }

          else
          {
            v17 = 0;
          }

          [v8 insertObject:v13 atIndex:v17];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v8 copy];

  return v18;
}

- (id)_computeUpdatedWithFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = [[NSMutableSet alloc] initWithArray:toCopy];
  v8 = [NSSet setWithArray:fromCopy];
  [v7 intersectSet:v8];

  v9 = [v7 copy];

  return v9;
}

- (void)_computeSectionUpdates:(void *)updates from:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v28 = fromCopy;
  v25 = [[NSMutableSet alloc] initWithArray:fromCopy];
  v27 = [[NSMutableSet alloc] initWithArray:toCopy];
  v8 = [NSSet setWithArray:toCopy];
  [v25 minusSet:v8];

  v9 = [NSSet setWithArray:fromCopy];
  [v27 minusSet:v9];

  v24 = [[NSMutableSet alloc] initWithArray:toCopy];
  [v24 minusSet:v27];
  v10 = [fromCopy mutableCopy];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v25;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
  v13 = v11;
  if (v12)
  {
    v14 = *v36;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = [v28 indexOfObject:v16];
        [v10 removeObject:v16];
        *&v33 = 1;
        *(&v33 + 1) = v17;
        v34 = 0x7FFFFFFFFFFFFFFFLL;
        sub_6E3AC(updates, &v33);
        v11 = v13;
      }

      v12 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = toCopy;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v19)
  {
    v20 = 0;
    v21 = *v30;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * j);
        if ([v27 containsObject:v23])
        {
          v33 = xmmword_24CD50;
          v34 = v20;
          sub_6E3AC(updates, &v33);
          [v10 insertObject:v23 atIndex:v20];
        }

        ++v20;
      }

      v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v19);
  }
}

- (void)_computeWithUpdates:(id)updates layoutQueue:(id)queue
{
  updatesCopy = updates;
  queueCopy = queue;
  sections = [(TUIRenderModelCollection *)self->_from sections];
  v7 = [sections valueForKey:@"UUID"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v117 = v9;

  sections2 = [(TUIRenderModelCollection *)self->_to sections];
  v11 = [sections2 valueForKey:@"UUID"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = v13;

  v115 = v14;
  v107 = [(TUIRenderUpdateCollection *)self _computeFromPlusInsertsWithFrom:v117 to:v14];
  [(TUIRenderUpdateCollection *)self _computeSectionUpdates:&self->_sectionUpdatesFrom2To from:v117 to:v14];
  [(TUIRenderUpdateCollection *)self _computeSectionUpdates:&self->_sectionUpdatesFrom2FromPlusInserts from:v117 to:v107];
  [(TUIRenderUpdateCollection *)self _computeSectionUpdates:&self->_sectionUpdatesFromPlusInserts2To from:v107 to:v14];
  self->_hasChangesToApply = self->_sectionUpdatesFrom2To.__end_ != self->_sectionUpdatesFrom2To.__begin_;
  self->_hasInvalidationsToApply = 0;
  v118 = objc_opt_new();
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v107;
  v15 = [obj countByEnumeratingWithState:&v123 objects:v128 count:16];
  if (v15)
  {
    v16 = *v124;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v124 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v123 + 1) + 8 * i);
        v19 = [v117 indexOfObject:v18];
        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = [v115 indexOfObject:v18];
          sections3 = [(TUIRenderModelCollection *)self->_to sections];
          v22 = [sections3 objectAtIndexedSubscript:v20];
          v23 = [v22 copyForInitialAppearanceWithFlags:0];
        }

        else
        {
          sections3 = [(TUIRenderModelCollection *)self->_from sections];
          v23 = [sections3 objectAtIndexedSubscript:v19];
        }

        v24 = [v118 count];
        [v23 offset];
        v26 = v25;
        v28 = v27;
        uUID = [v23 UUID];
        v30 = [v23 copyWithSection:v24 offset:uUID uuid:{v26, v28}];

        [v118 addObject:v30];
      }

      v15 = [obj countByEnumeratingWithState:&v123 objects:v128 count:16];
    }

    while (v15);
  }

  sections4 = [(TUIRenderModelCollection *)self->_to sections];
  v106 = [sections4 mutableCopy];

  [(TUIRenderUpdateCollection *)self _computeUpdatedWithFrom:obj to:v115];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v104 = v120 = 0u;
  v108 = [v104 copy];
  v32 = [v108 countByEnumeratingWithState:&v119 objects:v127 count:16];
  if (v32)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    v113 = *v120;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v120 != v113)
        {
          objc_enumerationMutation(v108);
        }

        v34 = *(*(&v119 + 1) + 8 * j);
        v35 = [v117 indexOfObject:v34];
        v36 = [v115 indexOfObject:v34];
        v37 = [obj indexOfObject:v34];
        if (v35 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = 0;
        }

        else
        {
          sections5 = [(TUIRenderModelCollection *)self->_from sections];
          v38 = [sections5 objectAtIndexedSubscript:v35];
        }

        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = 0;
        }

        else
        {
          v40 = [v118 objectAtIndexedSubscript:v37];
        }

        sections6 = [(TUIRenderModelCollection *)self->_to sections];
        v42 = [sections6 objectAtIndexedSubscript:v36];

        if (v38 != v42)
        {
          if (v38 && v42)
          {
            v43 = [[TUIRenderUpdateSection alloc] initWithFrom:v38 to:v42];
            v44 = v110;
            if (!v110)
            {
              v44 = objc_opt_new();
            }

            v110 = v44;
            [v44 addObject:v43];
            if (self->_hasChangesToApply)
            {
              hasChangesToApply = 1;
            }

            else
            {
              hasChangesToApply = [(TUIRenderUpdateSection *)v43 hasChangesToApply];
            }

            self->_hasChangesToApply = hasChangesToApply;
            if (self->_hasInvalidationsToApply)
            {
              hasInvalidationsToApply = 1;
            }

            else
            {
              hasInvalidationsToApply = [(TUIRenderUpdateSection *)v43 hasInvalidationsToApply];
            }

            self->_hasInvalidationsToApply = hasInvalidationsToApply;
          }

          uUID2 = [v42 UUID];
          v48 = [updatesCopy objectForKeyedSubscript:uUID2];
          newCurrentContainerPlusInserted = [v48 newCurrentContainerPlusInserted];
          v50 = newCurrentContainerPlusInserted;
          if (newCurrentContainerPlusInserted)
          {
            v51 = newCurrentContainerPlusInserted;
          }

          else
          {
            v51 = v40;
          }

          v52 = v51;

          v40 = v52;
          if (v52 != v38 && v52)
          {
            [v118 replaceObjectAtIndex:objc_msgSend(v52 withObject:{"section"), v52}];
          }

          if (v52 && v38 && v52 != v38)
          {
            if (!v112)
            {
              v112 = objc_opt_new();
            }

            v53 = [[TUIRenderUpdateSection alloc] initWithFrom:v38 to:v52];
            [v112 addObject:v53];
          }

          if (v42 && v52 != v42 && v52)
          {
            if (!v111)
            {
              v111 = objc_opt_new();
            }

            v54 = [[TUIRenderUpdateSection alloc] initWithFrom:v52 to:v42];
            [v111 addObject:v54];
          }
        }
      }

      v32 = [v108 countByEnumeratingWithState:&v119 objects:v127 count:16];
    }

    while (v32);
  }

  else
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
  }

  v55 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v110 model:self->_to];
  sectionChangesFrom2To = self->_sectionChangesFrom2To;
  self->_sectionChangesFrom2To = v55;

  if ([v112 count] || self->_sectionUpdatesFrom2FromPlusInserts.__end_ != self->_sectionUpdatesFrom2FromPlusInserts.__begin_)
  {
    v57 = [TUIRenderModelCollection alloc];
    content = [(TUIRenderModelCollection *)self->_from content];
    [(TUIRenderModelCollection *)self->_from size];
    v60 = v59;
    v62 = v61;
    [(TUIRenderModelCollection *)self->_from insets];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    visibleBoundsObservers = [(TUIRenderModelCollection *)self->_from visibleBoundsObservers];
    info = [(TUIRenderModelCollection *)self->_from info];
    anchorSet = [(TUIRenderModelCollection *)self->_from anchorSet];
    layoutDirection = [(TUIRenderModelCollection *)self->_to layoutDirection];
    matchingSectionUUID = [(TUIRenderModelCollection *)self->_to matchingSectionUUID];
    matchingSectionUID = [(TUIRenderModelCollection *)self->_to matchingSectionUID];
    v76 = [(TUIRenderModelCollection *)v57 initWithContent:content sections:v118 size:visibleBoundsObservers insets:info visibleBoundsObservers:anchorSet info:layoutDirection anchorSet:v60 layoutDirection:v62 matchingUUID:v64 matchingUID:v66, v68, v70, matchingSectionUUID, matchingSectionUID];

    v77 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v112 model:v76];
    sectionChangesFrom2FromPlusInserts = self->_sectionChangesFrom2FromPlusInserts;
    self->_sectionChangesFrom2FromPlusInserts = v77;
  }

  v79 = [TUIRenderModelCollection alloc];
  content2 = [(TUIRenderModelCollection *)self->_to content];
  [(TUIRenderModelCollection *)self->_to size];
  v82 = v81;
  v84 = v83;
  [(TUIRenderModelCollection *)self->_to insets];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  visibleBoundsObservers2 = [(TUIRenderModelCollection *)self->_to visibleBoundsObservers];
  info2 = [(TUIRenderModelCollection *)self->_to info];
  anchorSet2 = [(TUIRenderModelCollection *)self->_to anchorSet];
  layoutDirection2 = [(TUIRenderModelCollection *)self->_to layoutDirection];
  matchingSectionUUID2 = [(TUIRenderModelCollection *)self->_to matchingSectionUUID];
  matchingSectionUID2 = [(TUIRenderModelCollection *)self->_to matchingSectionUID];
  v99 = [(TUIRenderModelCollection *)v79 initWithContent:content2 sections:v106 size:visibleBoundsObservers2 insets:info2 visibleBoundsObservers:anchorSet2 info:layoutDirection2 anchorSet:v82 layoutDirection:v84 matchingUUID:v86 matchingUID:v88, v90, v92, matchingSectionUUID2, matchingSectionUID2];

  v100 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v111 model:v99];
  sectionChangesFromPlusInserts2To = self->_sectionChangesFromPlusInserts2To;
  self->_sectionChangesFromPlusInserts2To = v100;

  v102 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v110 model:self->_to];
  v103 = self->_sectionChangesFrom2To;
  self->_sectionChangesFrom2To = v102;
}

- (void)_applyUpdates:(const void *)updates toFeedView:(id)view
{
  viewCopy = view;
  v5 = *updates;
  if (*updates != *(updates + 1))
  {
    while (1)
    {
      v6 = *v5;
      if (*v5 == 2)
      {
        [viewCopy moveSection:v5[1] toSection:v5[2]];
        goto LABEL_9;
      }

      if (v6 == 1)
      {
        break;
      }

      if (!v6)
      {
        v7 = [NSIndexSet indexSetWithIndex:v5[2]];
        [viewCopy insertSections:v7];
LABEL_7:
      }

LABEL_9:
      v5 += 3;
      if (v5 == *(updates + 1))
      {
        goto LABEL_10;
      }
    }

    v7 = [NSIndexSet indexSetWithIndex:v5[1]];
    [viewCopy deleteSections:v7];
    goto LABEL_7;
  }

LABEL_10:
}

- (void)applyToFeedView:(id)view completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6F288;
  v8[3] = &unk_25F868;
  viewCopy = view;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = viewCopy;
  [v7 applyUpdateCollection:self updates:v8];
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end