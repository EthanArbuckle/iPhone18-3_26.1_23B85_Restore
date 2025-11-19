@interface SKTileSet
+ (SKTileSet)tileSetFromURL:(NSURL *)url;
+ (SKTileSet)tileSetNamed:(NSString *)name;
+ (SKTileSet)tileSetWithTileGroups:(NSArray *)tileGroups;
+ (SKTileSet)tileSetWithTileGroups:(NSArray *)tileGroups tileSetType:(SKTileSetType)tileSetType;
+ (id)findTileSetInBundleNamed:(id)a3;
+ (id)recursivePathsForResourcesOfType:(id)a3 inDirectory:(id)a4;
+ (void)clearTileSetTableCache;
- (BOOL)isEqualToNode:(id)a3;
- (CGSize)defaultTileSize;
- (SKTileSet)init;
- (SKTileSet)initWithCoder:(id)a3;
- (SKTileSet)initWithTileGroups:(NSArray *)tileGroups;
- (SKTileSet)initWithTileGroups:(NSArray *)tileGroups tileSetType:(SKTileSetType)tileSetType;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)findTileDefinitionForGroup:(id)a3 withGroupAdjacency:(unint64_t *)a4;
- (id)findTileDefinitionsForGroup:(id)a3 withGroupAdjacency:(unint64_t *)a4;
- (id)getCenterTileDefinitionForGroup:(id)a3 withRequiredOutputGroupAdjacency:(unint64_t *)a4;
- (void)calcDefaultTileSize;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)lookForMissingDefinitionsInGroups;
- (void)observeAllTileDefinitions;
- (void)observeTileDefinition:(id)a3;
- (void)removeTileDefinitionObservers:(id)a3;
- (void)setDefaultTileGroup:(SKTileGroup *)defaultTileGroup;
- (void)setGroupParentPointers;
- (void)setStamps:(id)a3;
- (void)setTileGroups:(NSArray *)tileGroups;
- (void)unobserveAllTileDefinitions;
- (void)updateTileDefinitionIDsInGroupRules;
@end

@implementation SKTileSet

- (void)setTileGroups:(NSArray *)tileGroups
{
  v4 = tileGroups;
  [(SKTileSet *)self unobserveAllTileDefinitions];
  [(NSMutableArray *)self->_definitions removeAllObjects];
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];

  groups = self->_groups;
  self->_groups = v5;

  [(SKTileSet *)self lookForMissingDefinitionsInGroups];
  [(SKTileSet *)self updateTileDefinitionIDsInGroupRules];

  [(SKTileSet *)self setGroupParentPointers];
}

- (void)setGroupParentPointers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_groups;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8)
        {
          [v8 setParentSet:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setDefaultTileGroup:(SKTileGroup *)defaultTileGroup
{
  v6 = defaultTileGroup;
  if ([(NSMutableArray *)self->_groups containsObject:?])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = self->_defaultTileGroup;
  self->_defaultTileGroup = v4;
}

- (CGSize)defaultTileSize
{
  width = self->_defaultTileSize.width;
  height = self->_defaultTileSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setStamps:(id)a3
{
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:a3];
  stamps = self->_stamps;
  self->_stamps = v4;
}

- (SKTileSet)initWithCoder:(id)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SKTileSet;
  v5 = [(SKTileSet *)&v28 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    definitions = v5->_definitions;
    v5->_definitions = v6;

    v8 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v30[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_groups"];
    groups = v5->_groups;
    v5->_groups = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    [(SKTileSet *)v5 setName:v13];

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_defaultTileGroup"];
    defaultTileGroup = v5->_defaultTileGroup;
    v5->_defaultTileGroup = v14;

    if (v5->_defaultTileGroup)
    {
      if (([(NSMutableArray *)v5->_groups containsObject:?]& 1) == 0)
      {
        v16 = v5->_defaultTileGroup;
        v5->_defaultTileGroup = 0;
      }
    }

    else
    {
      v17 = [v4 decodeIntegerForKey:@"_defaultTileGroupIndex"];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL && v17 < [(NSMutableArray *)v5->_groups count])
      {
        v18 = [(NSMutableArray *)v5->_groups objectAtIndexedSubscript:v17];
        v19 = v5->_defaultTileGroup;
        v5->_defaultTileGroup = v18;
      }
    }

    v20 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_stamps"];
    stamps = v5->_stamps;
    v5->_stamps = v23;

    [v4 decodeFloatForKey:@"_defaultTileSize.width"];
    v5->_defaultTileSize.width = v25;
    [v4 decodeFloatForKey:@"_defaultTileSize.height"];
    v5->_defaultTileSize.height = v26;
    [(SKTileSet *)v5 lookForMissingDefinitionsInGroups];
    [(SKTileSet *)v5 updateTileDefinitionIDsInGroupRules];
    [(SKTileSet *)v5 setGroupParentPointers];
    [(SKTileSet *)v5 commonInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  groups = self->_groups;
  v8 = a3;
  [v8 encodeObject:groups forKey:@"_groups"];
  v5 = [(SKTileSet *)self name];
  [v8 encodeObject:v5 forKey:@"_name"];

  [v8 encodeInteger:self->_type forKey:@"_type"];
  [v8 encodeObject:self->_defaultTileGroup forKey:@"_defaultTileGroup"];
  [v8 encodeObject:self->_stamps forKey:@"_stamps"];
  width = self->_defaultTileSize.width;
  *&width = width;
  [v8 encodeFloat:@"_defaultTileSize.width" forKey:width];
  height = self->_defaultTileSize.height;
  *&height = height;
  [v8 encodeFloat:@"_defaultTileSize.height" forKey:height];
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (self->_type != v6->_type)
    {
      goto LABEL_23;
    }

    v7 = [(SKTileSet *)self name];
    if (v7)
    {
    }

    else
    {
      v9 = [(SKTileSet *)v6 name];

      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v10 = [(SKTileSet *)self name];
    v11 = [(SKTileSet *)v6 name];
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_23;
    }

LABEL_8:
    if ([(NSMutableArray *)self->_groups count])
    {
      v13 = 0;
      while ([(NSMutableArray *)v6->_groups count]> v13)
      {
        v14 = [(NSMutableArray *)self->_groups objectAtIndexedSubscript:v13];
        v15 = [(NSMutableArray *)v6->_groups objectAtIndexedSubscript:v13];
        v16 = [v14 isEqualToNode:v15];

        if ((v16 & 1) == 0)
        {
          break;
        }

        if ([(NSMutableArray *)self->_groups count]<= ++v13)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_23;
    }

LABEL_13:
    defaultTileGroup = self->_defaultTileGroup;
    if (!defaultTileGroup)
    {
      v18 = [(SKTileSet *)v6 defaultTileGroup];

      if (!v18)
      {
LABEL_17:
        if (![(NSArray *)self->_stamps count])
        {
          v8 = 1;
          goto LABEL_24;
        }

        v21 = 0;
        while ([(NSArray *)v6->_stamps count]> v21)
        {
          v22 = [(NSArray *)self->_stamps objectAtIndexedSubscript:v21];
          v23 = [(NSArray *)v6->_stamps objectAtIndexedSubscript:v21];
          v24 = [v22 isEqualToNode:v23];

          if ((v24 & 1) == 0)
          {
            break;
          }

          ++v21;
          v8 = 1;
          if ([(NSArray *)self->_stamps count]<= v21)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        v8 = 0;
LABEL_24:

        goto LABEL_25;
      }

      defaultTileGroup = self->_defaultTileGroup;
    }

    v19 = [(SKTileSet *)v6 defaultTileGroup];
    v20 = [(SKTileGroup *)defaultTileGroup isEqualToNode:v19];

    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v8 = 1;
LABEL_25:

  return v8;
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKTileSet *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (SKTileSet)init
{
  v10.receiver = self;
  v10.super_class = SKTileSet;
  v2 = [(SKTileSet *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = *(v2 + 3);
    *(v2 + 3) = MEMORY[0x277CBEBF8];

    *(v2 + 4) = 0;
    v8 = *(v2 + 7);
    *(v2 + 7) = 0;

    *(v2 + 40) = *MEMORY[0x277CBF3A8];
    [v2 commonInit];
  }

  return v2;
}

- (void)observeAllTileDefinitions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_definitions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SKTileSet *)self observeTileDefinition:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)unobserveAllTileDefinitions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_definitions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SKTileSet *)self removeTileDefinitionObservers:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  [(SKTileSet *)self unobserveAllTileDefinitions];
  v3.receiver = self;
  v3.super_class = SKTileSet;
  [(SKTileSet *)&v3 dealloc];
}

- (void)observeTileDefinition:(id)a3
{
  v4 = a3;
  [v4 addObserver:self forKeyPath:@"images" options:0 context:0];
  [v4 addObserver:self forKeyPath:@"size" options:0 context:0];
  [v4 addObserver:self forKeyPath:@"timePerFrame" options:0 context:0];
}

- (void)removeTileDefinitionObservers:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self forKeyPath:@"images"];
  [v4 removeObserver:self forKeyPath:@"size"];
  [v4 removeObserver:self forKeyPath:@"timePerFrame"];
}

- (void)commonInit
{
  if (commonInit__tableInit != -1)
  {
    [SKTileSet commonInit];
  }
}

void __23__SKTileSet_commonInit__block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:v3];
  v2 = _tileSetTable;
  _tileSetTable = v1;
}

- (void)calcDefaultTileSize
{
  v3 = [(SKTileSet *)self tileGroups];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SKTileSet *)self tileGroups];
    v17 = [v5 firstObject];

    v6 = [v17 rules];
    v7 = [v6 count];

    v8 = v17;
    if (v7)
    {
      v9 = [v17 rules];
      v10 = [v9 firstObject];

      v11 = [v10 tileDefinitions];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [v10 tileDefinitions];
        v14 = [v13 firstObject];

        [v14 size];
        self->_defaultTileSize.width = v15;
        self->_defaultTileSize.height = v16;
      }

      v8 = v17;
    }
  }
}

- (SKTileSet)initWithTileGroups:(NSArray *)tileGroups
{
  v4 = tileGroups;
  v11.receiver = self;
  v11.super_class = SKTileSet;
  v5 = [(SKTileSet *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    [v5 setTileGroups:v4];
    [v5 setName:0];
    *(v5 + 4) = 0;
    v8 = *(v5 + 7);
    *(v5 + 7) = 0;

    *(v5 + 40) = *MEMORY[0x277CBF3A8];
    v9 = *(v5 + 3);
    *(v5 + 3) = MEMORY[0x277CBEBF8];

    [v5 lookForMissingDefinitionsInGroups];
    [v5 updateTileDefinitionIDsInGroupRules];
    [v5 commonInit];
    [v5 calcDefaultTileSize];
  }

  return v5;
}

- (SKTileSet)initWithTileGroups:(NSArray *)tileGroups tileSetType:(SKTileSetType)tileSetType
{
  v6 = tileGroups;
  v13.receiver = self;
  v13.super_class = SKTileSet;
  v7 = [(SKTileSet *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = *(v7 + 1);
    *(v7 + 1) = v8;

    [v7 setTileGroups:v6];
    [v7 setName:0];
    *(v7 + 4) = tileSetType;
    v10 = *(v7 + 7);
    *(v7 + 7) = 0;

    *(v7 + 40) = *MEMORY[0x277CBF3A8];
    v11 = *(v7 + 3);
    *(v7 + 3) = MEMORY[0x277CBEBF8];

    [v7 lookForMissingDefinitionsInGroups];
    [v7 updateTileDefinitionIDsInGroupRules];
    [v7 commonInit];
    [v7 calcDefaultTileSize];
  }

  return v7;
}

+ (SKTileSet)tileSetWithTileGroups:(NSArray *)tileGroups
{
  v3 = tileGroups;
  v4 = [[SKTileSet alloc] initWithTileGroups:v3];

  return v4;
}

+ (SKTileSet)tileSetWithTileGroups:(NSArray *)tileGroups tileSetType:(SKTileSetType)tileSetType
{
  v5 = tileGroups;
  v6 = [[SKTileSet alloc] initWithTileGroups:v5 tileSetType:tileSetType];

  return v6;
}

+ (id)recursivePathsForResourcesOfType:(id)a3 inDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 enumeratorAtPath:v6];

  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = [v11 pathExtension];
      v13 = [v12 caseInsensitiveCompare:v5];

      if (!v13)
      {
        v14 = [v6 stringByAppendingPathComponent:v11];
        [v7 addObject:v14];
      }

      v15 = [v9 nextObject];

      v11 = v15;
    }

    while (v15);
  }

  return v7;
}

+ (id)findTileSetInBundleNamed:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v71 = a3;
  v4 = SKGetResourceBundle();
  v5 = [v4 bundlePath];
  v6 = [a1 recursivePathsForResourcesOfType:@"sks" inDirectory:v5];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_50;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v81;
  v62 = *MEMORY[0x277CCA308];
  v67 = v7;
  v68 = *v81;
  do
  {
    v12 = 0;
    v63 = v9;
    do
    {
      if (*v81 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v80 + 1) + 8 * v12);
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:{v13, v61}];
      v15 = [v14 objectForKeyedSubscript:@"$objects"];
      v16 = v15;
      if (!v15 || [v15 count] < 2)
      {
        goto LABEL_27;
      }

      v69 = v14;
      v17 = [v14 objectForKeyedSubscript:@"$top"];
      v18 = [v17 objectForKeyedSubscript:@"document.type"];
      v19 = v18;
      if (!v18 || (v20 = *(v18 + 16), [v16 count] <= v20) || (objc_msgSend(v16, "objectAtIndexedSubscript:", v20), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
      {

        v11 = v68;
        v14 = v69;
LABEL_27:

        goto LABEL_28;
      }

      v22 = v21;
      v23 = [v21 compare:@"com.apple.spritekit.tileset"];

      v14 = v69;
      v11 = v68;
      if (!v23)
      {
        v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
        v25 = objc_alloc(MEMORY[0x277CCAAC8]);
        v79 = 0;
        v26 = [v25 initForReadingFromData:v24 error:&v79];
        v61 = v79;
        [v26 setRequiresSecureCoding:0];
        v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v86[0] = objc_opt_class();
        v86[1] = objc_opt_class();
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
        [v27 addObjectsFromArray:v28];

        v29 = [v26 allowedClasses];
        [v27 unionSet:v29];

        v78 = v61;
        v65 = v27;
        v66 = v26;
        v30 = [v26 decodeTopLevelObjectOfClasses:v27 forKey:v62 error:&v78];
        v31 = v78;

        v64 = v30;
        if (v30)
        {
          v61 = v24;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v32 = v30;
          v33 = [v32 countByEnumeratingWithState:&v74 objects:v85 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v75;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v75 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v74 + 1) + 8 * i);
                v38 = _tileSetTable;
                v39 = [v37 name];
                [v38 setObject:v37 forKey:v39];

                if (!v10)
                {
                  v40 = [v37 name];
                  v41 = [v40 isEqualToString:v71];

                  if (v41)
                  {
                    v10 = v37;
                  }

                  else
                  {
                    v10 = 0;
                  }
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v74 objects:v85 count:16];
            }

            while (v34);
            v7 = v67;
            v11 = v68;
            v9 = v63;
          }

          v14 = v69;
          goto LABEL_36;
        }

        v14 = v69;
        goto LABEL_42;
      }

LABEL_28:
      v42 = [v14 objectForKeyedSubscript:@"$objects"];
      v31 = v42;
      if (!v42 || [v42 count] < 2)
      {
        goto LABEL_45;
      }

      v24 = [v31 objectAtIndexedSubscript:1];
      v43 = [v24 objectForKeyedSubscript:@"$class"];
      if (v43)
      {
        v70 = v14;
        v44 = v43[4];
        v45 = v43;
        if ([v31 count] > v44)
        {
          v46 = [v31 objectAtIndexedSubscript:v44];
          v47 = [v46 objectForKeyedSubscript:@"$classname"];
          v48 = [v47 isEqualToString:@"SKTileSet"];

          if (!v48)
          {
            v9 = v63;
            v11 = v68;
            v14 = v70;
            v7 = v67;
            goto LABEL_46;
          }

          v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
          v49 = objc_alloc(MEMORY[0x277CCAAC8]);
          v73 = 0;
          v50 = [v49 initForReadingFromData:v24 error:&v73];
          v51 = v73;
          [v50 setRequiresSecureCoding:0];
          v52 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v84[0] = objc_opt_class();
          v84[1] = objc_opt_class();
          v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
          [v52 addObjectsFromArray:v53];

          v54 = [v50 allowedClasses];
          [v52 unionSet:v54];

          v72 = v51;
          v65 = v52;
          v66 = v50;
          v55 = [v50 decodeTopLevelObjectOfClasses:v52 forKey:v62 error:&v72];
          v31 = v72;

          v14 = v70;
          v64 = v55;
          if (v55)
          {
            v56 = _tileSetTable;
            v57 = [v55 name];
            [v56 setObject:v55 forKey:v57];

            v58 = [v55 name];
            LODWORD(v57) = [v58 isEqualToString:v71];

            v7 = v67;
            if (v57)
            {
              v61 = v24;
              v32 = v10;
              v10 = v55;
              v9 = v63;
              v11 = v68;
LABEL_36:
              v59 = v65;

              v24 = v61;
LABEL_43:

              v43 = v66;
              goto LABEL_44;
            }

            v9 = v63;
            v11 = v68;
          }

          else
          {
            v9 = v63;
            v7 = v67;
            v11 = v68;
          }

LABEL_42:
          v59 = v65;
          goto LABEL_43;
        }

        v14 = v70;
        v43 = v45;
        v7 = v67;
      }

LABEL_44:

LABEL_45:
LABEL_46:

      ++v12;
    }

    while (v12 != v9);
    v9 = [v7 countByEnumeratingWithState:&v80 objects:v87 count:16];
  }

  while (v9);
LABEL_50:

  return v10;
}

+ (SKTileSet)tileSetNamed:(NSString *)name
{
  v4 = name;
  if (!_tileSetTable || ([_tileSetTable objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [a1 findTileSetInBundleNamed:v4];
  }

  return v5;
}

+ (SKTileSet)tileSetFromURL:(NSURL *)url
{
  v17[11] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  v4 = [(NSURL *)url path];
  v5 = [v3 dataWithContentsOfFile:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v17[6] = objc_opt_class();
  v17[7] = objc_opt_class();
  v17[8] = objc_opt_class();
  v17[9] = objc_opt_class();
  v17[10] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:11];
  [v6 addObjectsFromArray:v7];

  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:&v16];
  v9 = v16;
  [v8 setRequiresSecureCoding:0];
  v10 = *MEMORY[0x277CCA308];
  v15 = v9;
  v11 = [v8 decodeTopLevelObjectOfClasses:v6 forKey:v10 error:&v15];
  v12 = v15;

  objc_opt_class();
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
  }

  return v13;
}

+ (void)clearTileSetTableCache
{
  if (_tileSetTable)
  {
    [_tileSetTable removeAllObjects];
  }
}

- (void)lookForMissingDefinitionsInGroups
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_groups;
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v19)
  {
    v18 = *v30;
    do
    {
      v3 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * v3);
        if (v4)
        {
          v20 = v3;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v5 = [v4 rules];
          v6 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v26;
            do
            {
              v9 = 0;
              do
              {
                if (*v26 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = *(*(&v25 + 1) + 8 * v9);
                if (v10)
                {
                  v23 = 0u;
                  v24 = 0u;
                  v21 = 0u;
                  v22 = 0u;
                  v11 = [v10 tileDefinitions];
                  v12 = [v11 countByEnumeratingWithState:&v21 objects:v33 count:16];
                  if (v12)
                  {
                    v13 = v12;
                    v14 = *v22;
                    do
                    {
                      v15 = 0;
                      do
                      {
                        if (*v22 != v14)
                        {
                          objc_enumerationMutation(v11);
                        }

                        v16 = *(*(&v21 + 1) + 8 * v15);
                        if (v16 && ([(NSMutableArray *)self->_definitions containsObject:*(*(&v21 + 1) + 8 * v15)]& 1) == 0)
                        {
                          [(NSMutableArray *)self->_definitions addObject:v16];
                          [(SKTileSet *)self observeTileDefinition:v16];
                        }

                        ++v15;
                      }

                      while (v13 != v15);
                      v13 = [v11 countByEnumeratingWithState:&v21 objects:v33 count:16];
                    }

                    while (v13);
                  }
                }

                ++v9;
              }

              while (v9 != v7);
              v7 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v7);
          }

          v3 = v20;
        }

        ++v3;
      }

      while (v3 != v19);
      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)updateTileDefinitionIDsInGroupRules
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_groups;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v8 rules];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13++) calcTileDefinitionIDsWithTileSet:self];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }
}

- (id)findTileDefinitionForGroup:(id)a3 withGroupAdjacency:(unint64_t *)a4
{
  v6 = a3;
  v7 = 0;
  if (v6 && a4)
  {
    if (!self->_definitions)
    {
      goto LABEL_15;
    }

    groups = self->_groups;
    if (!groups || ![(NSMutableArray *)groups containsObject:v6])
    {
      goto LABEL_15;
    }

    v9 = [(NSMutableArray *)self->_groups indexOfObject:v6];
    v10 = 0;
    v11 = 8;
    if (self->_type - 2 < 2)
    {
      v11 = 6;
    }

    v12 = &kAdjacencyMask;
    if (self->_type - 2 < 2)
    {
      v12 = &kHexPointyAdjacencyMask;
    }

    do
    {
      v13 = *a4++;
      if (v13 == v9)
      {
        v10 |= *v12;
      }

      ++v12;
      --v11;
    }

    while (v11);
    v14 = [v6 findTileDefinitionIndexForAdjacencyData:v10 tileSetType:{-[SKTileSet type](self, "type")}];
    if (v14 < [(NSMutableArray *)self->_definitions count])
    {
      v7 = [(NSMutableArray *)self->_definitions objectAtIndexedSubscript:v14];
    }

    else
    {
LABEL_15:
      v7 = 0;
    }
  }

  return v7;
}

- (id)findTileDefinitionsForGroup:(id)a3 withGroupAdjacency:(unint64_t *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    if (a4)
    {
      if (self->_definitions)
      {
        groups = self->_groups;
        if (groups)
        {
          if ([(NSMutableArray *)groups containsObject:v6])
          {
            v9 = [(NSMutableArray *)self->_groups indexOfObject:v6];
            v10 = 0;
            v11 = self->_type - 2;
            v12 = v11 >= 2;
            if (v11 >= 2)
            {
              v13 = &kAdjacencyMask;
            }

            else
            {
              v13 = &kHexPointyAdjacencyMask;
            }

            v14 = 8;
            if (!v12)
            {
              v14 = 6;
            }

            do
            {
              v15 = *a4++;
              if (v15 == v9)
              {
                v10 |= *v13;
              }

              ++v13;
              --v14;
            }

            while (v14);
            v16 = [v6 findTileDefinitionIDsForAdjacencyData:v10 tileSetType:{-[SKTileSet type](self, "type")}];
            v7 = [MEMORY[0x277CBEB18] array];
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v27;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v27 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v26 + 1) + 8 * i);
                  if (v22)
                  {
                    v23 = [v22 unsignedIntegerValue];
                    if (v23 <= [(NSMutableArray *)self->_definitions count])
                    {
                      v24 = [(NSMutableArray *)self->_definitions objectAtIndexedSubscript:v23];
                      [v7 addObject:v24];
                    }
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
              }

              while (v19);
            }
          }
        }
      }
    }
  }

  return v7;
}

- (id)getCenterTileDefinitionForGroup:(id)a3 withRequiredOutputGroupAdjacency:(unint64_t *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = [v6 rules];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v7 rules];
  v11 = [v10 count];
  if (!a4 || !v11 || !self->_definitions || (groups = self->_groups) == 0)
  {

LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  v13 = [(NSMutableArray *)groups containsObject:v7];

  if (!v13)
  {
LABEL_12:
    v24 = 0;
    goto LABEL_16;
  }

  v14 = [(NSMutableArray *)self->_groups indexOfObject:v7];
  v15 = [v7 rules];
  v9 = [v15 firstObject];

  v16 = vdupq_n_s64(v14);
  *a4 = v16;
  *(a4 + 1) = v16;
  *(a4 + 2) = v16;
  *(a4 + 3) = v16;
  v17 = [v9 tileDefinitionIDs];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v9 tileDefinitionIDs];
  v20 = [v19 count];

  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = [v9 tileDefinitionIDs];
  v22 = [v21 firstObject];
  v23 = [v22 integerValue];

  if (v23 >= [(NSMutableArray *)self->_definitions count])
  {
    goto LABEL_14;
  }

  v24 = [(NSMutableArray *)self->_definitions objectAtIndexedSubscript:v23];
LABEL_15:

LABEL_16:

  return v24;
}

@end