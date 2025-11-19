@interface GKScene
+ (id)_sceneWithFileNamed:(id)a3 rootNode:(id)a4;
- (GKScene)init;
- (GKScene)initWithCoder:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addEntity:(GKEntity *)entity;
- (void)addGraph:(GKGraph *)graph name:(NSString *)name;
- (void)encodeWithCoder:(id)a3;
- (void)removeEntity:(GKEntity *)entity;
- (void)removeGraph:(NSString *)name;
@end

@implementation GKScene

+ (id)_sceneWithFileNamed:(id)a3 rootNode:(id)a4
{
  v85[16] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 pathForResource:v5 ofType:@"gks"];
  if (!v8)
  {
    v8 = [v7 pathForResource:v5 ofType:0];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v85[0] = objc_opt_class();
  v85[1] = objc_opt_class();
  v85[2] = objc_opt_class();
  v85[3] = objc_opt_class();
  v85[4] = objc_opt_class();
  v85[5] = objc_opt_class();
  v85[6] = objc_opt_class();
  v85[7] = objc_opt_class();
  v85[8] = objc_opt_class();
  v85[9] = objc_opt_class();
  v85[10] = objc_opt_class();
  v85[11] = objc_opt_class();
  v85[12] = objc_opt_class();
  v85[13] = objc_opt_class();
  v85[14] = objc_opt_class();
  v85[15] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:16];
  [v9 addObjectsFromArray:v10];

  if (v8)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:1 error:0];
    v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:0];
    v53 = objc_opt_new();
    [v12 setDelegate:?];
    v58 = v7;
    v59 = v5;
    v56 = v9;
    v57 = v8;
    v55 = v11;
    v61 = v12;
    if (v6)
    {
      v13 = *MEMORY[0x277CCA308];
      v80 = 0;
      v14 = [v12 decodeTopLevelObjectOfClasses:v9 forKey:v13 error:&v80];
      v15 = v80;
      v16 = v15;
      if (v15)
      {
        NSLog(&cfstr_UnableToDecode.isa, v15);
      }
    }

    else
    {
      v14 = [v12 decodeObjectOfClass:objc_opt_class() forKey:@"_gkScene"];
      v34 = [v12 decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCA308]];
      if (!v34)
      {
        if (!NSClassFromString(&cfstr_Skscene.isa))
        {
          NSLog(&cfstr_CannotLoadScen.isa, v5);
        }

        v60 = 0;
        goto LABEL_32;
      }

      v6 = v34;
    }

    RepairGKSceneNodeReferencesRelativeToScene(v14, v6);
    [v14 setRootNode:v6];
    v60 = v6;
LABEL_32:
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v35 = [v14 entities];
    v36 = [v35 countByEnumeratingWithState:&v76 objects:v84 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v77;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v77 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v76 + 1) + 8 * i);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v41 = [v40 components];
          v42 = [v41 countByEnumeratingWithState:&v72 objects:v83 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v73;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v73 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                [v40 addComponent:*(*(&v72 + 1) + 8 * j)];
              }

              v43 = [v41 countByEnumeratingWithState:&v72 objects:v83 count:16];
            }

            while (v43);
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v76 objects:v84 count:16];
      }

      while (v37);
    }

    v46 = v61;
    [v61 finishDecoding];
    v47 = v53;
LABEL_48:

    v5 = v59;
    v6 = v60;
    v8 = v57;
    v7 = v58;
    v9 = v56;
LABEL_49:
    v48 = v14;
    goto LABEL_50;
  }

  v17 = [v7 pathForResource:v5 ofType:@"sks"];
  if (!v17)
  {
    v17 = [v7 pathForResource:v5 ofType:0];
    if (!v17)
    {
      v14 = 0;
      goto LABEL_49;
    }
  }

  v18 = v17;
  v62 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17 options:1 error:0];
  v19 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v62 error:0];
  v20 = objc_opt_new();
  [v19 setDelegate:v20];
  v14 = [v19 decodeObjectOfClasses:v9 forKey:@"_gkScene"];
  if (NSClassFromString(&cfstr_Skscene.isa))
  {
    v52 = v20;
    v21 = *MEMORY[0x277CCA308];
    v71 = 0;
    v60 = [v19 decodeTopLevelObjectOfClasses:v9 forKey:v21 error:&v71];
    v22 = v71;

    if (v22)
    {
      NSLog(&cfstr_UnableToDecode.isa, v22);
    }

    v51 = v22;
    v54 = v19;
    v55 = v18;
    v56 = v9;
    v57 = 0;
    v58 = v7;
    v59 = v5;
    if (objc_opt_isKindOfClass())
    {
      RepairGKSceneNodeReferencesRelativeToScene(v14, v60);
    }

    [v14 setRootNode:v60];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v23 = [v14 entities];
    v24 = [v23 countByEnumeratingWithState:&v67 objects:v82 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v68;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v68 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v67 + 1) + 8 * k);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v29 = [v28 components];
          v30 = [v29 countByEnumeratingWithState:&v63 objects:v81 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v64;
            do
            {
              for (m = 0; m != v31; ++m)
              {
                if (*v64 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                [v28 addComponent:*(*(&v63 + 1) + 8 * m)];
              }

              v31 = [v29 countByEnumeratingWithState:&v63 objects:v81 count:16];
            }

            while (v31);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v67 objects:v82 count:16];
      }

      while (v25);
    }

    v47 = v54;
    [v54 finishDecoding];

    v46 = v62;
    goto LABEL_48;
  }

  NSLog(&cfstr_CannotLoadScen.isa, v5);
  v48 = v14;

LABEL_50:
  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (GKScene)init
{
  v8.receiver = self;
  v8.super_class = GKScene;
  v2 = [(GKScene *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    entities = v2->_entities;
    v2->_entities = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    graphs = v2->_graphs;
    v2->_graphs = v5;
  }

  return v2;
}

- (GKScene)initWithCoder:(id)a3
{
  v16[16] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GKScene;
  v5 = [(GKScene *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v16[5] = objc_opt_class();
    v16[6] = objc_opt_class();
    v16[7] = objc_opt_class();
    v16[8] = objc_opt_class();
    v16[9] = objc_opt_class();
    v16[10] = objc_opt_class();
    v16[11] = objc_opt_class();
    v16[12] = objc_opt_class();
    v16[13] = objc_opt_class();
    v16[14] = objc_opt_class();
    v16[15] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:16];
    [v6 addObjectsFromArray:v7];

    v8 = [v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = [v4 decodeObjectOfClasses:v6 forKey:@"_entities"];
    entities = v5->_entities;
    v5->_entities = v9;

    v11 = [v4 decodeObjectOfClasses:v6 forKey:@"_graphs"];
    graphs = v5->_graphs;
    v5->_graphs = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  entities = self->_entities;
  v5 = a3;
  [v5 encodeObject:entities forKey:@"_entities"];
  [v5 encodeObject:self->_graphs forKey:@"_graphs"];
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKScene *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_entities;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v27 + 1) + 8 * i) copy];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  objc_storeStrong(v4 + 1, v5);
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(NSMutableDictionary *)self->_graphs allKeys];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        v19 = [(NSMutableDictionary *)self->_graphs objectForKeyedSubscript:v18];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v20 = v4[2];
  v4[2] = v12;

  v21 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)addEntity:(GKEntity *)entity
{
  if (entity)
  {
    [(NSMutableArray *)self->_entities addObject:?];
  }
}

- (void)removeEntity:(GKEntity *)entity
{
  if (entity)
  {
    [(NSMutableArray *)self->_entities removeObject:?];
  }
}

- (void)addGraph:(GKGraph *)graph name:(NSString *)name
{
  if (graph)
  {
    [(NSMutableDictionary *)self->_graphs setObject:graph forKeyedSubscript:name];
  }
}

- (void)removeGraph:(NSString *)name
{
  if (name)
  {
    [(NSMutableDictionary *)self->_graphs removeObjectForKey:?];
  }
}

@end