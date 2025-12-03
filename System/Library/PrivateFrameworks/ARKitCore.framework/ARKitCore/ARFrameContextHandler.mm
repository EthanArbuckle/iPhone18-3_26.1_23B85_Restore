@interface ARFrameContextHandler
- (ARFrameContextHandler)init;
- (__n128)setSessionTransform:(__n128)transform;
- (id)createdContextByConsumingPendingChanges;
- (void)clearInFlightContextsReapplyingChanges;
- (void)markFrameContextProcessed:(id)processed;
- (void)removeAnchor:(id)anchor;
- (void)resetSessionTransform;
@end

@implementation ARFrameContextHandler

- (ARFrameContextHandler)init
{
  v14.receiver = self;
  v14.super_class = ARFrameContextHandler;
  v2 = [(ARFrameContextHandler *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    inFlightContexts = v2->_inFlightContexts;
    v2->_inFlightContexts = v3;

    v5 = objc_opt_new();
    anchorsToAdd = v2->_anchorsToAdd;
    v2->_anchorsToAdd = v5;

    v7 = objc_opt_new();
    anchorsToRemove = v2->_anchorsToRemove;
    v2->_anchorsToRemove = v7;

    v9 = objc_opt_new();
    anchorsToStopTracking = v2->_anchorsToStopTracking;
    v2->_anchorsToStopTracking = v9;

    v11 = objc_opt_new();
    collaborationDatas = v2->_collaborationDatas;
    v2->_collaborationDatas = v11;
  }

  return v2;
}

- (__n128)setSessionTransform:(__n128)transform
{
  result[5] = a2;
  result[6] = transform;
  result[7] = a4;
  result[8] = a5;
  result[3].n128_u8[0] = 0;
  result[4].n128_u8[0] = 1;
  return result;
}

- (void)resetSessionTransform
{
  v2 = MEMORY[0x1E69E9B18];
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  *&self[1].super.isa = *MEMORY[0x1E69E9B18];
  *&self[1]._mostRecentInFlightContext = v3;
  v4 = *(v2 + 48);
  *&self[1]._anchorsToRemove = *(v2 + 32);
  *&self[1]._sessionTransformReset = v4;
  self->_sessionTransformReset = 1;
  self->_sessionTransformUpdated = 1;
}

- (void)removeAnchor:(id)anchor
{
  anchorsToAdd = self->_anchorsToAdd;
  anchorCopy = anchor;
  [(NSMutableOrderedSet *)anchorsToAdd removeObject:anchorCopy];
  [(NSMutableOrderedSet *)self->_anchorsToRemove addObject:anchorCopy];
}

- (id)createdContextByConsumingPendingChanges
{
  v3 = objc_opt_new();
  if ([(NSMutableOrderedSet *)self->_anchorsToAdd count])
  {
    array = [(NSMutableOrderedSet *)self->_anchorsToAdd array];
    [v3 setAnchorsToAdd:array];
  }

  else
  {
    [v3 setAnchorsToAdd:0];
  }

  if ([(NSMutableOrderedSet *)self->_anchorsToRemove count])
  {
    array2 = [(NSMutableOrderedSet *)self->_anchorsToRemove array];
    [v3 setAnchorsToRemove:array2];
  }

  else
  {
    [v3 setAnchorsToRemove:0];
  }

  if ([(NSMutableOrderedSet *)self->_anchorsToStopTracking count])
  {
    array3 = [(NSMutableOrderedSet *)self->_anchorsToStopTracking array];
    [v3 setAnchorsToStopTracking:array3];
  }

  else
  {
    [v3 setAnchorsToStopTracking:0];
  }

  [v3 setSessionTransform:{*&self[1].super.isa, *&self[1]._mostRecentInFlightContext, *&self[1]._anchorsToRemove, *&self[1]._sessionTransformReset}];
  [v3 setSessionTransformUpdated:self->_sessionTransformUpdated];
  [v3 setSessionTransformReset:self->_sessionTransformReset];
  [v3 setCollaborationData:self->_collaborationDatas];
  [(NSMutableOrderedSet *)self->_anchorsToAdd removeAllObjects];
  [(NSMutableOrderedSet *)self->_anchorsToRemove removeAllObjects];
  [(NSMutableOrderedSet *)self->_anchorsToStopTracking removeAllObjects];
  self->_sessionTransformUpdated = 0;
  self->_sessionTransformReset = 0;
  [(NSMutableSet *)self->_collaborationDatas removeAllObjects];
  [(NSMutableOrderedSet *)self->_inFlightContexts addObject:v3];
  objc_storeStrong(&self->_mostRecentInFlightContext, v3);

  return v3;
}

- (void)markFrameContextProcessed:(id)processed
{
  processedCopy = processed;
  if ([(ARFrameContext *)self->_mostRecentInFlightContext isEqual:?])
  {
    mostRecentInFlightContext = self->_mostRecentInFlightContext;
    self->_mostRecentInFlightContext = 0;
  }

  [(NSMutableOrderedSet *)self->_inFlightContexts removeObject:processedCopy];
}

- (void)clearInFlightContextsReapplyingChanges
{
  v78 = *MEMORY[0x1E69E9840];
  mostRecentInFlightContext = self->_mostRecentInFlightContext;
  if (mostRecentInFlightContext)
  {
    if (!self->_sessionTransformUpdated)
    {
      self->_sessionTransformReset = [(ARFrameContext *)mostRecentInFlightContext sessionTransformReset];
      self->_sessionTransformUpdated = [(ARFrameContext *)self->_mostRecentInFlightContext sessionTransformUpdated];
      [(ARFrameContext *)self->_mostRecentInFlightContext sessionTransform];
      *&self[1].super.isa = v4;
      *&self[1]._mostRecentInFlightContext = v5;
      *&self[1]._anchorsToRemove = v6;
      *&self[1]._sessionTransformReset = v7;
      mostRecentInFlightContext = self->_mostRecentInFlightContext;
    }

    self->_mostRecentInFlightContext = 0;
  }

  if ([(NSMutableOrderedSet *)self->_inFlightContexts count])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = self->_inFlightContexts;
    v47 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v47)
    {
      v46 = *v69;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v69 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v68 + 1) + 8 * i);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          anchorsToAdd = [v11 anchorsToAdd];
          v13 = [anchorsToAdd countByEnumeratingWithState:&v64 objects:v76 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v65;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v65 != v15)
                {
                  objc_enumerationMutation(anchorsToAdd);
                }

                [(NSMutableOrderedSet *)v8 addObject:*(*(&v64 + 1) + 8 * j)];
              }

              v14 = [anchorsToAdd countByEnumeratingWithState:&v64 objects:v76 count:16];
            }

            while (v14);
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          anchorsToRemove = [v11 anchorsToRemove];
          v18 = [anchorsToRemove countByEnumeratingWithState:&v60 objects:v75 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v61;
            do
            {
              for (k = 0; k != v19; ++k)
              {
                if (*v61 != v20)
                {
                  objc_enumerationMutation(anchorsToRemove);
                }

                v22 = *(*(&v60 + 1) + 8 * k);
                [(NSMutableOrderedSet *)v8 removeObject:v22];
                [(NSMutableOrderedSet *)v9 addObject:v22];
              }

              v19 = [anchorsToRemove countByEnumeratingWithState:&v60 objects:v75 count:16];
            }

            while (v19);
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          anchorsToStopTracking = [v11 anchorsToStopTracking];
          v24 = [anchorsToStopTracking countByEnumeratingWithState:&v56 objects:v74 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v57;
            do
            {
              for (m = 0; m != v25; ++m)
              {
                if (*v57 != v26)
                {
                  objc_enumerationMutation(anchorsToStopTracking);
                }

                [(NSMutableOrderedSet *)self->_anchorsToStopTracking addObject:*(*(&v56 + 1) + 8 * m)];
              }

              v25 = [anchorsToStopTracking countByEnumeratingWithState:&v56 objects:v74 count:16];
            }

            while (v25);
          }

          collaborationDatas = self->_collaborationDatas;
          collaborationData = [v11 collaborationData];
          [(NSMutableSet *)collaborationDatas unionSet:collaborationData];
        }

        v47 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v47);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v30 = self->_anchorsToAdd;
    v31 = [(NSMutableOrderedSet *)v30 countByEnumeratingWithState:&v52 objects:v73 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      do
      {
        for (n = 0; n != v32; ++n)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(NSMutableOrderedSet *)v8 addObject:*(*(&v52 + 1) + 8 * n)];
        }

        v32 = [(NSMutableOrderedSet *)v30 countByEnumeratingWithState:&v52 objects:v73 count:16];
      }

      while (v32);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = self->_anchorsToRemove;
    v36 = [(NSMutableOrderedSet *)v35 countByEnumeratingWithState:&v48 objects:v72 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      do
      {
        for (ii = 0; ii != v37; ++ii)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v48 + 1) + 8 * ii);
          [(NSMutableOrderedSet *)v8 removeObject:v40];
          [(NSMutableOrderedSet *)v9 addObject:v40];
        }

        v37 = [(NSMutableOrderedSet *)v35 countByEnumeratingWithState:&v48 objects:v72 count:16];
      }

      while (v37);
    }

    anchorsToAdd = self->_anchorsToAdd;
    self->_anchorsToAdd = v8;
    v42 = v8;

    anchorsToRemove = self->_anchorsToRemove;
    self->_anchorsToRemove = v9;
    v44 = v9;

    [(NSMutableOrderedSet *)self->_inFlightContexts removeAllObjects];
  }
}

@end