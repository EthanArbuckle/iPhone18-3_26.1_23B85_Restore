@interface SCNMutableGeometry
- (id)mutableGeometrySourcesForSemantic:(id)a3;
- (void)mutateGeometrySourcesWithSemantics:(id)a3 usingBlock:(id)a4;
@end

@implementation SCNMutableGeometry

- (id)mutableGeometrySourcesForSemantic:(id)a3
{
  v4 = SCNGeometrySourceSemanticToMeshSourceSemantic(a3);
  v5 = [(SCNGeometry *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  Mesh = C3DGeometryGetMesh([(SCNGeometry *)self geometryRef]);
  if (!Mesh)
  {
    v9 = 0;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v8 = Mesh;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SCNMutableGeometry_mutableGeometrySourcesForSemantic___block_invoke;
  v11[3] = &unk_2782FFA30;
  v12 = v4;
  v11[4] = v9;
  v11[5] = v8;
  C3DMeshApplySources(v8, 0, v11);
  if (v6)
  {
LABEL_5:
    C3DSceneUnlock(v6);
  }

  return v9;
}

void __56__SCNMutableGeometry_mutableGeometrySourcesForSemantic___block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (*(a1 + 48) == a3)
  {
    OriginalSourceMutable = a2;
    if ((C3DMeshSourceIsMutable(a2) & 1) == 0)
    {
      OriginalSourceMutable = C3DMeshMakeOriginalSourceMutable(*(a1 + 40), OriginalSourceMutable);
    }

    v6 = [[SCNGeometrySource alloc] initWithMeshSource:OriginalSourceMutable];
    [*(a1 + 32) addObject:v6];
  }
}

- (void)mutateGeometrySourcesWithSemantics:(id)a3 usingBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = [(SCNMutableGeometry *)self mutableGeometrySourcesForSemantic:*(*(&v16 + 1) + 8 * v11)];
        if (v12)
        {
          [v7 addObjectsFromArray:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [(SCNGeometry *)self sceneRef];
  v14 = v13;
  if (v13)
  {
    C3DSceneLock(v13);
  }

  if ((*(a4 + 2))(a4, v7))
  {
    Mesh = C3DGeometryGetMesh([(SCNGeometry *)self geometryRef]);
    C3DMeshDidMutate(Mesh);
  }

  if (v14)
  {
    C3DSceneUnlock(v14);
  }
}

@end