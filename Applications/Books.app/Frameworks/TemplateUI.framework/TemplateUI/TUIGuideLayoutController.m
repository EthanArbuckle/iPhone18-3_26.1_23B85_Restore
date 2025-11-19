@interface TUIGuideLayoutController
- (TUIGuideLayoutController)init;
- (double)computeLength;
- (double)offsetForGuide:(id)a3;
- (id)_nodeFromGuide:(id)a3;
- (id)guideForSpec:(id)a3;
- (id)guideForSpec:(id)a3 withOffset:(double)a4;
- (void)_enumerateSolution:(id)a3;
- (void)addEdgeFrom:(id)a3 to:(id)a4 length:(id *)a5;
- (void)addObserver:(id)a3;
- (void)reset;
- (void)setLayoutPhase:(unint64_t)a3;
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

- (void)setLayoutPhase:(unint64_t)a3
{
  if (self->_layoutPhase != a3)
  {
    self->_layoutPhase = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v9) guideLayoutController:self changedPhase:a3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)guideForSpec:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 kind] == &dword_0 + 1)
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

- (id)guideForSpec:(id)a3 withOffset:(double)a4
{
  v5 = [(TUIGuideLayoutController *)self guideForSpec:a3];
  [v5 setOffset:a4];

  return v5;
}

- (id)_nodeFromGuide:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_nodes objectForKey:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMapTable *)self->_nodes setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)addEdgeFrom:(id)a3 to:(id)a4 length:(id *)a5
{
  if (!self->_layoutPhase)
  {
    v7 = v5;
    v11 = a4;
    v16 = [(TUIGuideLayoutController *)self _nodeFromGuide:a3];
    v12 = [(TUIGuideLayoutController *)self _nodeFromGuide:v11];

    v13 = objc_opt_new();
    [v13 setTo:v12];
    [v13 setLength:{a5, v7}];
    v14 = [v16 edges];
    [v14 addObject:v13];

    v15 = [v12 dependencies];
    [v15 addObject:v16];

    [(NSMutableArray *)self->_edges addObject:v13];
  }
}

- (double)offsetForGuide:(id)a3
{
  v3 = [(TUIGuideLayoutController *)self _nodeFromGuide:a3];
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
  v26 = self;
  v5 = [(NSMapTable *)self->_nodes objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 dependencies];
        v12 = [v11 count];

        if (!v12)
        {
          [v3 addObject:v10];
        }

        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v27 = v4;

  if ([v3 count])
  {
    v28 = v3;
    do
    {
      v13 = [v3 anyObject];
      [v3 removeObject:v13];
      [v27 removeObject:v13];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = [v13 edges];
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v29 + 1) + 8 * j);
            v20 = [v19 to];
            v21 = fmaxf(COERCE_FLOAT([v20 accumulatedLength]), COERCE_FLOAT(objc_msgSend(v13, "accumulatedLength")) + COERCE_FLOAT(objc_msgSend(v19, "length")));
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
            v23 = [v20 dependencies];
            [v23 removeObject:v13];

            v24 = [v20 dependencies];
            v25 = [v24 count];

            if (!v25)
            {
              [v28 addObject:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v16);
      }

      v3 = v28;
    }

    while ([v28 count]);
  }

  [(TUIGuideLayoutController *)v26 _enumerateSolution:&stru_25F220];
  [(TUIGuideLayoutController *)v26 setLayoutPhase:1];
}

- (double)computeLength
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMapTable *)self->_nodes objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v6 = fmax(v6, COERCE_FLOAT([*(*(&v9 + 1) + 8 * i) accumulatedLength]));
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_enumerateSolution:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NSMapTable *)self->_nodes keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_nodes objectForKey:v10];
          v4[2](v4, v10, COERCE_FLOAT([v11 accumulatedLength]));
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [NSHashTable hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

@end