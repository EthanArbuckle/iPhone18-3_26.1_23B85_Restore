@interface TUIRenderUpdateCollection
- (TUIRenderUpdateCollection)initWithFrom:(id)a3 to:(id)a4 viewState:(id)a5 updates:(id)a6 changes:(id)a7 layoutQueue:(id)a8 flags:(unint64_t)a9;
- (id).cxx_construct;
- (id)_computeFromPlusInsertsWithFrom:(id)a3 to:(id)a4;
- (id)_computeUpdatedWithFrom:(id)a3 to:(id)a4;
- (void)_applyUpdates:(const void *)a3 toFeedView:(id)a4;
- (void)_computeSectionUpdates:(void *)a3 from:(id)a4 to:(id)a5;
- (void)_computeWithUpdates:(id)a3 layoutQueue:(id)a4;
- (void)applyToFeedView:(id)a3 completion:(id)a4;
@end

@implementation TUIRenderUpdateCollection

- (TUIRenderUpdateCollection)initWithFrom:(id)a3 to:(id)a4 viewState:(id)a5 updates:(id)a6 changes:(id)a7 layoutQueue:(id)a8 flags:(unint64_t)a9
{
  v26 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v27.receiver = self;
  v27.super_class = TUIRenderUpdateCollection;
  v21 = [(TUIRenderUpdateCollection *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_from, a3);
    objc_storeStrong(&v22->_to, a4);
    v23 = [v17 copy];
    viewState = v22->_viewState;
    v22->_viewState = v23;

    objc_storeStrong(&v22->_changes, a7);
    v22->_flags = a9;
    if (v22->_from != v22->_to)
    {
      [(TUIRenderUpdateCollection *)v22 _computeWithUpdates:v18 layoutQueue:v20];
    }
  }

  return v22;
}

- (id)_computeFromPlusInsertsWithFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v20 = a4;
  v6 = [[NSMutableSet alloc] initWithArray:v20];
  v7 = [NSSet setWithArray:v5];
  [v6 minusSet:v7];

  v8 = [v5 mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v20;
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

- (id)_computeUpdatedWithFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableSet alloc] initWithArray:v6];
  v8 = [NSSet setWithArray:v5];
  [v7 intersectSet:v8];

  v9 = [v7 copy];

  return v9;
}

- (void)_computeSectionUpdates:(void *)a3 from:(id)a4 to:(id)a5
{
  v7 = a4;
  v26 = a5;
  v28 = v7;
  v25 = [[NSMutableSet alloc] initWithArray:v7];
  v27 = [[NSMutableSet alloc] initWithArray:v26];
  v8 = [NSSet setWithArray:v26];
  [v25 minusSet:v8];

  v9 = [NSSet setWithArray:v7];
  [v27 minusSet:v9];

  v24 = [[NSMutableSet alloc] initWithArray:v26];
  [v24 minusSet:v27];
  v10 = [v7 mutableCopy];
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
        sub_6E3AC(a3, &v33);
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
  v18 = v26;
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
          sub_6E3AC(a3, &v33);
          [v10 insertObject:v23 atIndex:v20];
        }

        ++v20;
      }

      v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v19);
  }
}

- (void)_computeWithUpdates:(id)a3 layoutQueue:(id)a4
{
  v109 = a3;
  v105 = a4;
  v6 = [(TUIRenderModelCollection *)self->_from sections];
  v7 = [v6 valueForKey:@"UUID"];
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

  v10 = [(TUIRenderModelCollection *)self->_to sections];
  v11 = [v10 valueForKey:@"UUID"];
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
          v21 = [(TUIRenderModelCollection *)self->_to sections];
          v22 = [v21 objectAtIndexedSubscript:v20];
          v23 = [v22 copyForInitialAppearanceWithFlags:0];
        }

        else
        {
          v21 = [(TUIRenderModelCollection *)self->_from sections];
          v23 = [v21 objectAtIndexedSubscript:v19];
        }

        v24 = [v118 count];
        [v23 offset];
        v26 = v25;
        v28 = v27;
        v29 = [v23 UUID];
        v30 = [v23 copyWithSection:v24 offset:v29 uuid:{v26, v28}];

        [v118 addObject:v30];
      }

      v15 = [obj countByEnumeratingWithState:&v123 objects:v128 count:16];
    }

    while (v15);
  }

  v31 = [(TUIRenderModelCollection *)self->_to sections];
  v106 = [v31 mutableCopy];

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
          v39 = [(TUIRenderModelCollection *)self->_from sections];
          v38 = [v39 objectAtIndexedSubscript:v35];
        }

        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = 0;
        }

        else
        {
          v40 = [v118 objectAtIndexedSubscript:v37];
        }

        v41 = [(TUIRenderModelCollection *)self->_to sections];
        v42 = [v41 objectAtIndexedSubscript:v36];

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
              v45 = 1;
            }

            else
            {
              v45 = [(TUIRenderUpdateSection *)v43 hasChangesToApply];
            }

            self->_hasChangesToApply = v45;
            if (self->_hasInvalidationsToApply)
            {
              v46 = 1;
            }

            else
            {
              v46 = [(TUIRenderUpdateSection *)v43 hasInvalidationsToApply];
            }

            self->_hasInvalidationsToApply = v46;
          }

          v47 = [v42 UUID];
          v48 = [v109 objectForKeyedSubscript:v47];
          v49 = [v48 newCurrentContainerPlusInserted];
          v50 = v49;
          if (v49)
          {
            v51 = v49;
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
    v58 = [(TUIRenderModelCollection *)self->_from content];
    [(TUIRenderModelCollection *)self->_from size];
    v60 = v59;
    v62 = v61;
    [(TUIRenderModelCollection *)self->_from insets];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v114 = [(TUIRenderModelCollection *)self->_from visibleBoundsObservers];
    v71 = [(TUIRenderModelCollection *)self->_from info];
    v72 = [(TUIRenderModelCollection *)self->_from anchorSet];
    v73 = [(TUIRenderModelCollection *)self->_to layoutDirection];
    v74 = [(TUIRenderModelCollection *)self->_to matchingSectionUUID];
    v75 = [(TUIRenderModelCollection *)self->_to matchingSectionUID];
    v76 = [(TUIRenderModelCollection *)v57 initWithContent:v58 sections:v118 size:v114 insets:v71 visibleBoundsObservers:v72 info:v73 anchorSet:v60 layoutDirection:v62 matchingUUID:v64 matchingUID:v66, v68, v70, v74, v75];

    v77 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v112 model:v76];
    sectionChangesFrom2FromPlusInserts = self->_sectionChangesFrom2FromPlusInserts;
    self->_sectionChangesFrom2FromPlusInserts = v77;
  }

  v79 = [TUIRenderModelCollection alloc];
  v80 = [(TUIRenderModelCollection *)self->_to content];
  [(TUIRenderModelCollection *)self->_to size];
  v82 = v81;
  v84 = v83;
  [(TUIRenderModelCollection *)self->_to insets];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = [(TUIRenderModelCollection *)self->_to visibleBoundsObservers];
  v94 = [(TUIRenderModelCollection *)self->_to info];
  v95 = [(TUIRenderModelCollection *)self->_to anchorSet];
  v96 = [(TUIRenderModelCollection *)self->_to layoutDirection];
  v97 = [(TUIRenderModelCollection *)self->_to matchingSectionUUID];
  v98 = [(TUIRenderModelCollection *)self->_to matchingSectionUID];
  v99 = [(TUIRenderModelCollection *)v79 initWithContent:v80 sections:v106 size:v93 insets:v94 visibleBoundsObservers:v95 info:v96 anchorSet:v82 layoutDirection:v84 matchingUUID:v86 matchingUID:v88, v90, v92, v97, v98];

  v100 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v111 model:v99];
  sectionChangesFromPlusInserts2To = self->_sectionChangesFromPlusInserts2To;
  self->_sectionChangesFromPlusInserts2To = v100;

  v102 = [[_TUIRenderUpdateCollectionSectionChanges alloc] initWithSectionUpdates:v110 model:self->_to];
  v103 = self->_sectionChangesFrom2To;
  self->_sectionChangesFrom2To = v102;
}

- (void)_applyUpdates:(const void *)a3 toFeedView:(id)a4
{
  v8 = a4;
  v5 = *a3;
  if (*a3 != *(a3 + 1))
  {
    while (1)
    {
      v6 = *v5;
      if (*v5 == 2)
      {
        [v8 moveSection:v5[1] toSection:v5[2]];
        goto LABEL_9;
      }

      if (v6 == 1)
      {
        break;
      }

      if (!v6)
      {
        v7 = [NSIndexSet indexSetWithIndex:v5[2]];
        [v8 insertSections:v7];
LABEL_7:
      }

LABEL_9:
      v5 += 3;
      if (v5 == *(a3 + 1))
      {
        goto LABEL_10;
      }
    }

    v7 = [NSIndexSet indexSetWithIndex:v5[1]];
    [v8 deleteSections:v7];
    goto LABEL_7;
  }

LABEL_10:
}

- (void)applyToFeedView:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6F288;
  v8[3] = &unk_25F868;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
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