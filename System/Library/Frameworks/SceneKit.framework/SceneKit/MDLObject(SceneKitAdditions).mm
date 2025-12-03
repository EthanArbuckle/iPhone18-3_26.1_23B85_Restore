@interface MDLObject(SceneKitAdditions)
- (uint64_t)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:;
@end

@implementation MDLObject(SceneKitAdditions)

- (uint64_t)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:
{
  v76 = *MEMORY[0x277D85DE8];
  AssociatedObject = objc_getAssociatedObject(self, @"SCNSceneKitAssociatedObject");
  if (AssociatedObject)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = [self children];
    v7 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v69;
      v11 = 0x277CBE000uLL;
      v43 = a3;
      v42 = *v69;
      do
      {
        v12 = 0;
        v44 = v8;
        do
        {
          if (*v69 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v68 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v47 = v12;
            if (v9)
            {
              v14 = scn_default_log();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                [MDLObject(SceneKitAdditions) _updateAssociatedSCNNodeWithGeometrySetter:v67 texturePathProvider:v14 vertexAttributeNamed:? materialPropertyNamed:?];
              }
            }

            v15 = [objc_msgSend(AssociatedObject "geometry")];
            v16 = [SCNGeometry geometryWithMDLMesh:v13];
            array = [*(v11 + 2840) array];
            v18 = [*(v11 + 2840) arrayWithCapacity:{objc_msgSend(v15, "count")}];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            submeshes = [v13 submeshes];
            v20 = [submeshes countByEnumeratingWithState:&v62 objects:v74 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v63;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v63 != v22)
                  {
                    objc_enumerationMutation(submeshes);
                  }

                  v24 = *(*(&v62 + 1) + 8 * i);
                  if ([v24 material] && objc_msgSend(v24, "indexCount"))
                  {
                    [v18 addObject:{objc_msgSend(v24, "material")}];
                  }
                }

                v21 = [submeshes countByEnumeratingWithState:&v62 objects:v74 count:16];
              }

              while (v21);
            }

            v46 = v15;
            v25 = [*(v11 + 2840) arrayWithCapacity:{objc_msgSend(v15, "count")}];
            v26 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_282DCC058];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v27 = [v18 countByEnumeratingWithState:&v58 objects:v73 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v59;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v59 != v29)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v31 = *(*(&v58 + 1) + 8 * j);
                  v32 = objc_getAssociatedObject(v31, @"SCNSceneKitAssociatedObject");
                  if (v32)
                  {
                    v33 = [v32 copy];
                    v34 = [v33 _integrateModelKitComputedMaps:v31 withGeometry:v16 node:AssociatedObject texturePathProvider:a4 vertexAttributeNamed:a5 materialPropertyNamed:a6 filePath:v26];
                    if (v34)
                    {
                      [array addObject:v34];
                    }

                    [v25 addObject:v33];
                  }

                  else
                  {
                    v35 = scn_default_log();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      [MDLObject(SceneKitAdditions) _updateAssociatedSCNNodeWithGeometrySetter:v57 texturePathProvider:v35 vertexAttributeNamed:? materialPropertyNamed:?];
                    }
                  }
                }

                v28 = [v18 countByEnumeratingWithState:&v58 objects:v73 count:16];
              }

              while (v28);
            }

            [(SCNGeometry *)v16 setMaterials:v25];
            a3 = v43;
            if (v43)
            {
              (*(v43 + 16))(v43, AssociatedObject, v16, array);
            }

            else
            {
              [AssociatedObject setGeometry:v16];
            }

            v8 = v44;
            v10 = v42;
            v12 = v47;

            v9 = 1;
            v11 = 0x277CBE000;
          }

          ++v12;
        }

        while (v12 != v8);
        v8 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v8);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  children = [self children];
  result = [children countByEnumeratingWithState:&v52 objects:v72 count:16];
  if (result)
  {
    v38 = result;
    v39 = *v53;
    do
    {
      v40 = 0;
      do
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v52 + 1) + 8 * v40++) _updateAssociatedSCNNodeWithGeometrySetter:a3 texturePathProvider:a4 vertexAttributeNamed:a5 materialPropertyNamed:a6];
      }

      while (v38 != v40);
      result = [children countByEnumeratingWithState:&v52 objects:v72 count:16];
      v38 = result;
    }

    while (result);
  }

  return result;
}

- (void)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:.cold.1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: a MDLObject has more than 1 child mesh - not supported", a1);
}

- (void)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: failed to find MKMaterial corresponding SCNMaterial", a1);
}

@end