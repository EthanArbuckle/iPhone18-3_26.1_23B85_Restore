@interface CLSGraph
- (BOOL)containsVertex:(id)a3;
- (BOOL)containsVertexWithVertexID:(id)a3;
- (BOOL)hasEdgeFromVertex:(id)a3 toVertex:(id)a4;
- (CLSGraph)initWithMemoryOptions:(unint64_t)a3;
- (CLSGraphVertex)anyVertex;
- (id)inNeighboursOfVertex:(id)a3;
- (id)neighboursOfVertex:(id)a3;
- (id)outNeighboursOfVertex:(id)a3;
- (unint64_t)_degreeOfVertex:(id)a3 inEdgeMap:(id)a4;
- (unint64_t)degree:(id)a3;
- (unint64_t)edgeCount;
- (void)_enumerateVerticesInEdges:(id)a3 skipingEdges:(id)a4 enumerationBlock:(id)a5;
- (void)_removeEdgeFromVertexWithID:(id)a3 toVertexWithID:(id)a4;
- (void)_traverseStartingAtVertex:(id)a3 previousVertex:(id)a4 visitedVertices:(id)a5 enumerationBlock:(id)a6;
- (void)addEdgeFromVertex:(id)a3 toVertex:(id)a4;
- (void)addVertex:(id)a3;
- (void)enumerate:(id)a3;
- (void)enumerateInNeighboursOfVertex:(id)a3 enumerationBlock:(id)a4;
- (void)enumerateNeighboursOfVertex:(id)a3 enumerationBlock:(id)a4;
- (void)enumerateOutNeighboursOfVertex:(id)a3 enumerationBlock:(id)a4;
- (void)removeEdgeFromVertex:(id)a3 toVertex:(id)a4;
- (void)removeSubtreeStartingAtVertex:(id)a3;
- (void)removeVertex:(id)a3;
- (void)reset;
- (void)traverseStartingAtVertex:(id)a3 enumerationBlock:(id)a4;
- (void)traverseVerticesPassingTest:(id)a3 enumerationBlock:(id)a4;
@end

@implementation CLSGraph

- (CLSGraph)initWithMemoryOptions:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = CLSGraph;
  v4 = [(CLSGraph *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = objc_alloc(MEMORY[0x277CCAB00]);
    v8 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v6, v7, a3, v5->_options, 50);
    verticesMap = v5->_verticesMap;
    v5->_verticesMap = v8;

    v10 = objc_alloc(MEMORY[0x277CCAB00]);
    v12 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v10, v11, a3, v5->_options, 50);
    inEdgesMap = v5->_inEdgesMap;
    v5->_inEdgesMap = v12;

    v14 = objc_alloc(MEMORY[0x277CCAB00]);
    v16 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v14, v15, a3, v5->_options, 50);
    outEdgesMap = v5->_outEdgesMap;
    v5->_outEdgesMap = v16;
  }

  return v5;
}

- (unint64_t)edgeCount
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_outEdgesMap;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v13 = objc_msgSend_objectForKey_(self->_outEdgesMap, v12, v10, v19);
        v7 += objc_msgSend_count(v13, v14, v15);

        objc_autoreleasePoolPop(v11);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v16, &v19, v23, 16);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)reset
{
  objc_msgSend_removeAllObjects(self->_inEdgesMap, a2, v2);
  objc_msgSend_removeAllObjects(self->_outEdgesMap, v4, v5);
  verticesMap = self->_verticesMap;

  objc_msgSend_removeAllObjects(verticesMap, v6, v7);
}

- (CLSGraphVertex)anyVertex
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v3 = self->_verticesMap;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v11, v12, 16))
  {
    v5 = **(&v11[0] + 1);
    v6 = objc_autoreleasePoolPush();
    v8 = objc_msgSend_objectForKey_(self->_verticesMap, v7, v5, *&v11[0]);
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (unint64_t)degree:(id)a3
{
  inEdgesMap = self->_inEdgesMap;
  v5 = a3;
  v7 = objc_msgSend__degreeOfVertex_inEdgeMap_(self, v6, v5, inEdgesMap);
  v9 = objc_msgSend__degreeOfVertex_inEdgeMap_(self, v8, v5, self->_outEdgesMap);

  return v9 + v7;
}

- (unint64_t)_degreeOfVertex:(id)a3 inEdgeMap:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_vertexID(a3, v6, v7);
  v10 = objc_msgSend_objectForKey_(v5, v9, v8);

  v13 = objc_msgSend_count(v10, v11, v12);
  return v13;
}

- (BOOL)containsVertexWithVertexID:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_verticesMap, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsVertex:(id)a3
{
  v4 = objc_msgSend_vertexID(a3, a2, a3);
  LOBYTE(self) = objc_msgSend_containsVertexWithVertexID_(self, v5, v4);

  return self;
}

- (BOOL)hasEdgeFromVertex:(id)a3 toVertex:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_vertexID(a3, v7, v8);
  v11 = objc_msgSend_objectForKey_(self->_outEdgesMap, v10, v9);
  v14 = objc_msgSend_vertexID(v6, v12, v13);

  LOBYTE(v9) = objc_msgSend_containsObject_(v11, v15, v14);
  return v9;
}

- (void)addVertex:(id)a3
{
  v17 = a3;
  v6 = objc_msgSend_vertexID(v17, v4, v5);
  v8 = objc_msgSend_objectForKey_(self->_verticesMap, v7, v6);
  if (v8 != v17)
  {
    v9 = self;
    objc_sync_enter(v9);
    v12 = objc_msgSend_objectForKey_(v9->_inEdgesMap, v10, v6);
    if (!v12)
    {
      v12 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v11, 0);
    }

    objc_msgSend_setObject_forKey_(v9->_inEdgesMap, v11, v12, v6);
    v15 = objc_msgSend_objectForKey_(v9->_outEdgesMap, v13, v6);
    if (!v15)
    {
      v15 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v14, 0);
    }

    objc_msgSend_setObject_forKey_(v9->_outEdgesMap, v14, v15, v6);
    objc_msgSend_setObject_forKey_(self->_verticesMap, v16, v17, v6);

    objc_sync_exit(v9);
  }
}

- (void)addEdgeFromVertex:(id)a3 toVertex:(id)a4
{
  v22 = a3;
  v6 = a4;
  objc_msgSend_addVertex_(self, v7, v22);
  objc_msgSend_addVertex_(self, v8, v6);
  v11 = objc_msgSend_vertexID(v22, v9, v10);
  v14 = objc_msgSend_vertexID(v6, v12, v13);
  v15 = self;
  objc_sync_enter(v15);
  v17 = objc_msgSend_objectForKey_(v15->_outEdgesMap, v16, v11);
  objc_msgSend_addObject_(v17, v18, v14);
  v20 = objc_msgSend_objectForKey_(v15->_inEdgesMap, v19, v14);

  objc_msgSend_addObject_(v20, v21, v11);
  objc_sync_exit(v15);
}

- (void)removeVertex:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_vertexID(v4, v5, v6);
  v9 = objc_msgSend_objectForKey_(self->_outEdgesMap, v8, v7);
  objc_msgSend_removeObjectForKey_(self->_outEdgesMap, v10, v7);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v9;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v40, v45, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        objc_msgSend__removeEdgeFromVertexWithID_toVertexWithID_(self, v19, v7, v17);
        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v20, &v40, v45, 16);
    }

    while (v14);
  }

  v22 = objc_msgSend_objectForKey_(self->_inEdgesMap, v21, v7);
  objc_msgSend_removeObjectForKey_(self->_inEdgesMap, v23, v7);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = v22;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v36, v44, 16);
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      v29 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v36 + 1) + 8 * v29);
        v31 = objc_autoreleasePoolPush();
        objc_msgSend__removeEdgeFromVertexWithID_toVertexWithID_(self, v32, v30, v7, v36);
        objc_autoreleasePoolPop(v31);
        ++v29;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v33, &v36, v44, 16);
    }

    while (v27);
  }

  objc_msgSend_removeObjectForKey_(self->_verticesMap, v34, v7);
  v35 = *MEMORY[0x277D85DE8];
}

- (void)removeEdgeFromVertex:(id)a3 toVertex:(id)a4
{
  v6 = a4;
  v13 = objc_msgSend_vertexID(a3, v7, v8);
  v11 = objc_msgSend_vertexID(v6, v9, v10);

  objc_msgSend__removeEdgeFromVertexWithID_toVertexWithID_(self, v12, v13, v11);
}

- (void)_removeEdgeFromVertexWithID:(id)a3 toVertexWithID:(id)a4
{
  outEdgesMap = self->_outEdgesMap;
  v7 = a4;
  v8 = a3;
  v10 = objc_msgSend_objectForKey_(outEdgesMap, v9, v8);
  objc_msgSend_removeObject_(v10, v11, v7);
  v14 = objc_msgSend_objectForKey_(self->_inEdgesMap, v12, v7);

  objc_msgSend_removeObject_(v14, v13, v8);
}

- (void)removeSubtreeStartingAtVertex:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_outNeighboursOfVertex_(self, v5, v4);
  objc_msgSend_removeVertex_(self, v7, v4);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (!objc_msgSend_inDegree_(self, v11, v15, v17))
        {
          objc_msgSend_removeSubtreeStartingAtVertex_(self, v11, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v17, v21, 16);
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)neighboursOfVertex:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236F8586C;
  v9[3] = &unk_278A17B38;
  v6 = v5;
  v10 = v6;
  objc_msgSend_enumerateNeighboursOfVertex_enumerationBlock_(self, v7, v4, v9);

  return v6;
}

- (void)enumerateNeighboursOfVertex:(id)a3 enumerationBlock:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  inEdgesMap = v7->_inEdgesMap;
  v11 = objc_msgSend_vertexID(v22, v9, v10);
  v13 = objc_msgSend_objectForKey_(inEdgesMap, v12, v11);

  objc_msgSend__enumerateVerticesInEdges_skipingEdges_enumerationBlock_(v7, v14, v13, 0, v6);
  outEdgesMap = v7->_outEdgesMap;
  v18 = objc_msgSend_vertexID(v22, v16, v17);
  v20 = objc_msgSend_objectForKey_(outEdgesMap, v19, v18);

  objc_msgSend__enumerateVerticesInEdges_skipingEdges_enumerationBlock_(v7, v21, v20, v13, v6);
  objc_sync_exit(v7);
}

- (id)inNeighboursOfVertex:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236F85A5C;
  v9[3] = &unk_278A17B38;
  v6 = v5;
  v10 = v6;
  objc_msgSend_enumerateInNeighboursOfVertex_enumerationBlock_(self, v7, v4, v9);

  return v6;
}

- (void)enumerateInNeighboursOfVertex:(id)a3 enumerationBlock:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  inEdgesMap = v7->_inEdgesMap;
  v11 = objc_msgSend_vertexID(v15, v9, v10);
  v13 = objc_msgSend_objectForKey_(inEdgesMap, v12, v11);

  objc_msgSend__enumerateVerticesInEdges_skipingEdges_enumerationBlock_(v7, v14, v13, 0, v6);
  objc_sync_exit(v7);
}

- (id)outNeighboursOfVertex:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236F85BFC;
  v9[3] = &unk_278A17B38;
  v6 = v5;
  v10 = v6;
  objc_msgSend_enumerateOutNeighboursOfVertex_enumerationBlock_(self, v7, v4, v9);

  return v6;
}

- (void)enumerateOutNeighboursOfVertex:(id)a3 enumerationBlock:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  outEdgesMap = v7->_outEdgesMap;
  v11 = objc_msgSend_vertexID(v15, v9, v10);
  v13 = objc_msgSend_objectForKey_(outEdgesMap, v12, v11);

  objc_msgSend__enumerateVerticesInEdges_skipingEdges_enumerationBlock_(v7, v14, v13, 0, v6);
  objc_sync_exit(v7);
}

- (void)_enumerateVerticesInEdges:(id)a3 skipingEdges:(id)a4 enumerationBlock:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v7;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if ((objc_msgSend_containsObject_(v8, v18, v16) & 1) == 0)
        {
          v20 = objc_msgSend_objectForKey_(self->_verticesMap, v19, v16);
          v25 = 0;
          v9[2](v9, v20, &v25);
          v21 = v25;

          if (v21 == 1)
          {
            objc_autoreleasePoolPop(v17);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v22, &v26, v30, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)enumerate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_verticesMap;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v14 = objc_msgSend_objectForKey_(self->_verticesMap, v13, v11);
      v18 = 0;
      v4[2](v4, v14, &v18);
      v15 = v18;

      objc_autoreleasePoolPop(v12);
      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v19, v23, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)traverseVerticesPassingTest:(id)a3 enumerationBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v8 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v7, 517);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_verticesMap;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v18 = objc_msgSend_objectForKey_(self->_verticesMap, v17, v15);
        if ((objc_msgSend_containsObject_(v8, v19, v18) & 1) == 0 && v6[2](v6, v18))
        {
          objc_msgSend__traverseStartingAtVertex_previousVertex_visitedVertices_enumerationBlock_(self, v20, v18, 0, v8, v23);
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v21, &v24, v28, 16);
    }

    while (v12);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)traverseStartingAtVertex:(id)a3 enumerationBlock:(id)a4
{
  v6 = MEMORY[0x277CCAA50];
  v7 = a4;
  v8 = a3;
  v11 = objc_msgSend_hashTableWithOptions_(v6, v9, 517);
  objc_msgSend__traverseStartingAtVertex_previousVertex_visitedVertices_enumerationBlock_(self, v10, v8, 0, v11, v7);
}

- (void)_traverseStartingAtVertex:(id)a3 previousVertex:(id)a4 visitedVertices:(id)a5 enumerationBlock:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_msgSend_addObject_(v12, v14, v10);
  v38 = 0;
  v13[2](v13, v10, v11, &v38);
  if ((v38 & 1) == 0)
  {
    v33 = v11;
    v32 = objc_msgSend_vertexID(v10, v15, v16);
    objc_msgSend_objectForKey_(self->_outEdgesMap, v17, v32);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v37 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v34, v39, 16);
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          v27 = objc_msgSend_objectForKey_(self->_verticesMap, v26, v24);
          if ((objc_msgSend_containsObject_(v12, v28, v27) & 1) == 0)
          {
            objc_msgSend__traverseStartingAtVertex_previousVertex_visitedVertices_enumerationBlock_(self, v29, v27, v10, v12, v13);
          }

          objc_autoreleasePoolPop(v25);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v30, &v34, v39, 16);
      }

      while (v21);
    }

    v11 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end