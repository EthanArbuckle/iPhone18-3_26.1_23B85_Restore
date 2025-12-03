@interface TUIGuideLayoutController
- (TUIGuideLayoutController)init;
- (double)computeLength;
- (double)offsetForGuide:(id)guide;
- (id)_nodeFromGuide:(id)guide;
- (id)guideForSpec:(id)spec;
- (id)guideForSpec:(id)spec withOffset:(double)offset;
- (void)_enumerateSolution:(id)solution;
- (void)addEdgeFrom:(id)from to:(id)to length:(id *)length;
- (void)addObserver:(id)observer;
- (void)reset;
- (void)setLayoutPhase:(unint64_t)phase;
- (void)solve;
@end

@implementation TUIGuideLayoutController

- (TUIGuideLayoutController)init
{
  v10.receiver = self;
  v10.super_class = TUIGuideLayoutController;
  v2 = [(TUIGuideLayoutController *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    guides = v2->_guides;
    v2->_guides = v3;

    v5 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    nodes = v2->_nodes;
    v2->_nodes = v5;

    v7 = objc_opt_new();
    edges = v2->_edges;
    v2->_edges = v7;
  }

  return v2;
}

- (void)reset
{
  [(NSMutableArray *)self->_edges removeAllObjects];
  [(NSMapTable *)self->_nodes removeAllObjects];

  [(TUIGuideLayoutController *)self setLayoutPhase:0];
}

- (void)setLayoutPhase:(unint64_t)phase
{
  if (self->_layoutPhase != phase)
  {
    self->_layoutPhase = phase;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v10 + 1) + 8 * v9) guideLayoutController:self changedPhase:phase];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)guideForSpec:(id)spec
{
  specCopy = spec;
  v5 = specCopy;
  if (specCopy)
  {
    if ([specCopy kind] == &dword_0 + 1)
    {
      v6 = [[_TUIGuideInstance alloc] initWithSpec:v5];
    }

    else
    {
      v6 = [(NSMutableDictionary *)self->_guides objectForKeyedSubscript:v5];
      if (!v6)
      {
        v6 = [[_TUIGuideInstance alloc] initWithSpec:v5];
        [(NSMutableDictionary *)self->_guides setObject:v6 forKeyedSubscript:v5];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)guideForSpec:(id)spec withOffset:(double)offset
{
  v5 = [(TUIGuideLayoutController *)self guideForSpec:spec];
  [v5 setOffset:offset];

  return v5;
}

- (id)_nodeFromGuide:(id)guide
{
  guideCopy = guide;
  v5 = [(NSMapTable *)self->_nodes objectForKey:guideCopy];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMapTable *)self->_nodes setObject:v5 forKey:guideCopy];
  }

  return v5;
}

- (void)addEdgeFrom:(id)from to:(id)to length:(id *)length
{
  if (!self->_layoutPhase)
  {
    v7 = v5;
    toCopy = to;
    v16 = [(TUIGuideLayoutController *)self _nodeFromGuide:from];
    v12 = [(TUIGuideLayoutController *)self _nodeFromGuide:toCopy];

    v13 = objc_opt_new();
    [v13 setTo:v12];
    [v13 setLength:{length, v7}];
    edges = [v16 edges];
    [edges addObject:v13];

    dependencies = [v12 dependencies];
    [dependencies addObject:v16];

    [(NSMutableArray *)self->_edges addObject:v13];
  }
}

- (double)offsetForGuide:(id)guide
{
  v3 = [(TUIGuideLayoutController *)self _nodeFromGuide:guide];
  v4 = v3;
  if (v3)
  {
    v5 = COERCE_FLOAT([v3 accumulatedLength]);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)solve
{
  v3 = [NSHashTable hashTableWithOptions:512];
  v4 = [NSHashTable hashTableWithOptions:512];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  objectEnumerator = [(NSMapTable *)self->_nodes objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        dependencies = [v10 dependencies];
        v12 = [dependencies count];

        if (!v12)
        {
          [v3 addObject:v10];
        }

        [v4 addObject:v10];
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v27 = v4;

  if ([v3 count])
  {
    v28 = v3;
    do
    {
      anyObject = [v3 anyObject];
      [v3 removeObject:anyObject];
      [v27 removeObject:anyObject];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      edges = [anyObject edges];
      v15 = [edges countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v30;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(edges);
            }

            v19 = *(*(&v29 + 1) + 8 * j);
            v20 = [v19 to];
            v21 = fmaxf(COERCE_FLOAT([v20 accumulatedLength]), COERCE_FLOAT(objc_msgSend(anyObject, "accumulatedLength")) + COERCE_FLOAT(objc_msgSend(v19, "length")));
            v22 = 0x7FC00000FF7FFFFFLL;
            if (v21 > -3.4028e38)
            {
              v22 = 0x7FC000007F7FFFFFLL;
              if (v21 < 3.4028e38)
              {
                v22 = LODWORD(v21) | 0x7FC0000000000000;
              }
            }

            [v20 setAccumulatedLength:{v22, 2143289344}];
            dependencies2 = [v20 dependencies];
            [dependencies2 removeObject:anyObject];

            dependencies3 = [v20 dependencies];
            v25 = [dependencies3 count];

            if (!v25)
            {
              [v28 addObject:v20];
            }
          }

          v16 = [edges countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v16);
      }

      v3 = v28;
    }

    while ([v28 count]);
  }

  [(TUIGuideLayoutController *)selfCopy _enumerateSolution:&stru_25F220];
  [(TUIGuideLayoutController *)selfCopy setLayoutPhase:1];
}

- (double)computeLength
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_nodes objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v6 = fmax(v6, COERCE_FLOAT([*(*(&v9 + 1) + 8 * i) accumulatedLength]));
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_enumerateSolution:(id)solution
{
  solutionCopy = solution;
  if (solutionCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    keyEnumerator = [(NSMapTable *)self->_nodes keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_nodes objectForKey:v10];
          solutionCopy[2](solutionCopy, v10, COERCE_FLOAT([v11 accumulatedLength]));
        }

        v7 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [NSHashTable hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

@end