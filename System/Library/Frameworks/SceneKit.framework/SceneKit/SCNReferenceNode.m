@interface SCNReferenceNode
+ (SCNReferenceNode)referenceNodeWithURL:(NSURL *)referenceURL;
- (BOOL)_isNameUnique:(id)a3;
- (SCNReferenceNode)initWithCoder:(NSCoder *)aDecoder;
- (SCNReferenceNode)initWithURL:(NSURL *)referenceURL;
- (id)_catalog;
- (id)_loadReferencedSceneWithURL:(id)a3 catalog:(id)a4;
- (id)_resolveURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_applyOverrides;
- (void)_applyUnsharing:(id)a3 alreadyShared:(id)a4;
- (void)_diffNode:(id)a3 with:(id)a4 path:(id)a5;
- (void)_diffObject:(id)a3 with:(id)a4 path:(id)a5;
- (void)_loadWithCatalog:(id)a3;
- (void)_loadWithURL:(id)a3 catalog:(id)a4;
- (void)addOverride:(id)a3 forKeyPath:(id)a4;
- (void)collectOverrides;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllOverrides;
- (void)removeForKeyPath:(id)a3;
- (void)setOverride:(id)a3 forKeyPath:(id)a4;
- (void)setOverrides:(id)a3;
- (void)setReferenceURL:(NSURL *)referenceURL;
- (void)unload;
@end

@implementation SCNReferenceNode

- (SCNReferenceNode)initWithURL:(NSURL *)referenceURL
{
  v7.receiver = self;
  v7.super_class = SCNReferenceNode;
  v4 = [(SCNNode *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SCNReferenceNode *)v4 setReferenceURL:referenceURL];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNReferenceNode;
  [(SCNNode *)&v3 dealloc];
}

+ (SCNReferenceNode)referenceNodeWithURL:(NSURL *)referenceURL
{
  v3 = [objc_alloc(objc_opt_class()) initWithURL:referenceURL];

  return v3;
}

- (void)_diffObject:(id)a3 with:(id)a4 path:(id)a5
{
  v19 = a5;
  v29 = *MEMORY[0x277D85DE8];
  if (_diffObject_with_path__onceToken != -1)
  {
    [SCNReferenceNode _diffObject:with:path:];
  }

  v5 = objc_opt_class();
  outCount = 0;
  v6 = class_copyPropertyList(v5, &outCount);
  v7 = [MEMORY[0x277CBEB18] array];
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v9 = v6[i];
      Attributes = property_getAttributes(v9);
      if (strcmp([objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{Attributes), "componentsSeparatedByString:", @", "), "objectAtIndex:", 0), "substringFromIndex:", 1), "UTF8String"}], "{CATransform3D=dddddddddddddddd}"))
      {
        [objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{Attributes), "rangeOfString:", @", R, "}];
        if (v11 != 3)
        {
          [v7 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", property_getName(v9))}];
        }
      }
    }
  }

  free(v6);
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v23 + 1) + 8 * j);
        if (([_diffObject_with_path__skippedProperies containsObject:{v15, v19}] & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"_") & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"ide_") & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"ske_") & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"simd") & 1) == 0)
        {
          v16 = [a3 valueForKey:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v17 = [a4 valueForKey:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v16 lastPathComponent];
              v17 = [v17 lastPathComponent];
            }

            else
            {
              v18 = v16;
            }

            if (([v18 isEqual:v17] & 1) == 0)
            {
              -[NSMutableDictionary setValue:forKey:](self->_overrides, "setValue:forKey:", v16, [objc_msgSend(v19 stringByAppendingString:{@".", "stringByAppendingString:", v15}]);
            }
          }
        }
      }

      v12 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides", v19];
}

id __42__SCNReferenceNode__diffObject_with_path___block_invoke()
{
  result = [MEMORY[0x277CBEB98] setWithArray:&unk_282E0FB70];
  _diffObject_with_path__skippedProperies = result;
  return result;
}

- (BOOL)_isNameUnique:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SCNReferenceNode__isNameUnique___block_invoke;
  v5[3] = &unk_2782FD1D8;
  v5[4] = a3;
  v5[5] = &v6;
  [(SCNNode *)self enumerateHierarchyUsingBlock:v5];
  v3 = *(v7 + 6) == 1;
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__SCNReferenceNode__isNameUnique___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [objc_msgSend(a2 "name")];
  if (result)
  {
    if (++*(*(*(a1 + 40) + 8) + 24) == 2)
    {
      *a3 = 1;
    }
  }

  return result;
}

- (void)_diffNode:(id)a3 with:(id)a4 path:(id)a5
{
  if ([a3 name] && (objc_msgSend(objc_msgSend(a3, "name"), "containsString:", @".") & 1) == 0 && -[SCNReferenceNode _isNameUnique:](self, "_isNameUnique:", objc_msgSend(a3, "name")))
  {
    a5 = [@"/" stringByAppendingString:{objc_msgSend(a3, "name")}];
  }

  v24 = a4;
  [(SCNReferenceNode *)self _diffObject:a3 with:a4 path:a5];
  v23 = a3;
  if ([a3 geometry] && objc_msgSend(a4, "geometry"))
  {
    -[SCNReferenceNode _diffObject:with:path:](self, "_diffObject:with:path:", [a3 geometry], objc_msgSend(a4, "geometry"), objc_msgSend(objc_msgSend(a5, "stringByAppendingString:", @"."), "stringByAppendingString:", @"geometry"));
    v9 = [objc_msgSend(objc_msgSend(a3 "geometry")];
    if (v9 == [objc_msgSend(objc_msgSend(v24 "geometry")])
    {
      v28 = [objc_msgSend(a3 "geometry")];
      v27 = [objc_msgSend(v24 "geometry")];
      if (v9)
      {
        v10 = 0;
        v25 = v9;
        v26 = a5;
        do
        {
          v11 = [v28 objectAtIndexedSubscript:v10];
          v12 = [v27 objectAtIndexedSubscript:v10];
          v29 = v10;
          v13 = [objc_msgSend(a5 stringByAppendingString:{@".", "stringByAppendingString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"geometry.materials[%d]", v10)}];
          [(SCNReferenceNode *)self _diffObject:v11 with:v12 path:v13];
          v14 = [v11 properties];
          v15 = [v12 properties];
          v16 = [v14 count];
          if ([v15 count] == v16)
          {
            if (v16)
            {
              for (i = 0; i != v16; ++i)
              {
                -[SCNReferenceNode _diffObject:with:path:](self, "_diffObject:with:path:", [v14 objectAtIndexedSubscript:i], objc_msgSend(v15, "objectAtIndexedSubscript:", i), objc_msgSend(objc_msgSend(v13, "stringByAppendingString:", @"."), "stringByAppendingString:", objc_msgSend(objc_msgSend(v14, "objectAtIndexedSubscript:", i), "slotName")));
              }
            }
          }

          else
          {
            v18 = scn_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [SCNReferenceNode _diffNode:v31 with:v18 path:?];
            }
          }

          ++v10;
          a5 = v26;
        }

        while (v29 + 1 != v25);
      }
    }

    else
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SCNReferenceNode _diffNode:with:path:];
      }
    }
  }

  if ([objc_msgSend(v23 "particleSystems")] && objc_msgSend(objc_msgSend(v24, "particleSystems"), "count"))
  {
    -[SCNReferenceNode _diffObject:with:path:](self, "_diffObject:with:path:", [objc_msgSend(v23 "particleSystems")], objc_msgSend(objc_msgSend(v24, "particleSystems"), "objectAtIndexedSubscript:", 0), objc_msgSend(objc_msgSend(a5, "stringByAppendingString:", @"."), "stringByAppendingString:", @"particleSystems[0]"));
  }

  v20 = [objc_msgSend(v23 "childNodes")];
  if (v20 == [objc_msgSend(v24 "childNodes")])
  {
    if (v20)
    {
      for (j = 0; j != v20; ++j)
      {
        a5 = [objc_msgSend(a5 stringByAppendingString:{@".", "stringByAppendingString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"[%d]", j)}];
        -[SCNReferenceNode _diffNode:with:path:](self, "_diffNode:with:path:", [objc_msgSend(v23 "childNodes")], objc_msgSend(objc_msgSend(v24, "childNodes"), "objectAtIndexedSubscript:", j), a5);
      }
    }
  }

  else
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SCNReferenceNode _diffNode:with:path:];
    }
  }
}

- (void)collectOverrides
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addOverride:(id)a3 forKeyPath:(id)a4
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  overrides = self->_overrides;
  if (!overrides)
  {
    overrides = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_overrides = overrides;
  }

  [(NSMutableDictionary *)overrides setObject:a3 forKey:a4];

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];
}

- (void)removeForKeyPath:(id)a3
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  [(NSMutableDictionary *)self->_overrides removeObjectForKey:a3];
  if (![(NSMutableDictionary *)self->_overrides count])
  {

    self->_overrides = 0;
  }

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];
}

- (void)removeAllOverrides
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  [(NSMutableDictionary *)self->_overrides removeAllObjects];

  self->_overrides = 0;

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];
}

- (void)setOverrides:(id)a3
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];

  self->_overrides = [a3 mutableCopy];

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];
}

- (void)_applyUnsharing:(id)a3 alreadyShared:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  if ([a4 containsObject:?])
  {
    return;
  }

  [a4 addObject:a3];
  v7 = [a3 rangeOfString:@"." options:4];
  if (v8 != 1)
  {
    return;
  }

  v9 = v7;
  v10 = v7 + 1;
  if (v7 + 1 >= [a3 length])
  {
    return;
  }

  v11 = [a3 substringToIndex:v9];
  v12 = [a3 substringFromIndex:v10];
  v13 = [(SCNNode *)self valueForKeyPath:v11];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v12 isEqualToString:@"geometry"])
    {
      v15 = [objc_msgSend(v14 "geometry")];
      [v14 setGeometry:v15];
LABEL_11:

      goto LABEL_12;
    }

    if ([v12 isEqualToString:@"particleSystems[0]"])
    {
      v16 = [objc_msgSend(v14 "particleSystems")];
      if (v16)
      {
        v17 = v16;
        v15 = [v16 copy];
        [v14 removeParticleSystem:v17];
        [v14 addParticleSystem:v15];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  if (([a4 containsObject:v11] & 1) == 0)
  {
    [(SCNReferenceNode *)self _applyUnsharing:v11 alreadyShared:a4];
    v14 = [(SCNNode *)self valueForKeyPath:v11];
  }

  if ([v12 isEqualToString:@"firstMaterial"])
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ([v12 isEqualToString:@"materials"])
  {
    v19 = [objc_msgSend(v14 "materials")];

    [v14 setMaterials:v19];
  }

  else
  {
    v21 = [v12 rangeOfString:@"["];
    if (v22 == 1)
    {
      v23 = [v12 substringFromIndex:v21 + 1];
      v24 = [v23 rangeOfString:@"]"];
      if (v25 == 1)
      {
        v18 = [objc_msgSend(v23 substringToIndex:{v24), "integerValue"}];
LABEL_17:
        if (v18 >= [objc_msgSend(v14 "materials")])
        {
          v20 = scn_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v30 = a3;
            v31 = 1024;
            v32 = v18;
            v33 = 1024;
            v34 = [objc_msgSend(v14 "materials")];
            _os_log_error_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_ERROR, "Error: failed to evaluate key path %@ - material index %d out of bounds (%d)", buf, 0x18u);
          }
        }

        else
        {
          v28 = [objc_msgSend(objc_msgSend(v14 "materials")];
          [v14 replaceMaterialAtIndex:v18 withMaterial:?];
        }

        return;
      }

      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SCNReferenceNode _applyUnsharing:alreadyShared:];
      }
    }

    else
    {
      v26 = scn_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SCNReferenceNode _applyUnsharing:alreadyShared:];
      }
    }
  }
}

- (void)_applyOverrides
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  overrides = self->_overrides;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SCNReferenceNode__applyOverrides__block_invoke;
  v7[3] = &unk_2782FD200;
  v7[4] = self;
  v7[5] = v3;
  [(NSMutableDictionary *)overrides enumerateKeysAndObjectsUsingBlock:v7];
  v5 = self->_overrides;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SCNReferenceNode__applyOverrides__block_invoke_2;
  v6[3] = &unk_2782FC900;
  v6[4] = self;
  [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)setOverride:(id)a3 forKeyPath:(id)a4
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  if (!self->_overrides)
  {
    self->_overrides = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];

  [(SCNReferenceNode *)self _applyOverride:a3 forKeyPath:a4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SCNReferenceNode;
  v4 = [(SCNNode *)&v6 copyWithZone:a3];
  [v4 setReferenceURL:self->_referenceURL];
  [v4 setLoadingPolicy:self->_loadingPolicy];
  v4[37] = [(NSURL *)self->_catalogURL copy];
  v4[35] = [(NSMutableDictionary *)self->_overrides mutableCopy];
  return v4;
}

- (void)setReferenceURL:(NSURL *)referenceURL
{
  v3 = self->_referenceURL;
  if (v3 != referenceURL)
  {

    self->_referenceURL = [(NSURL *)referenceURL copy];
  }
}

- (id)_catalog
{
  if (!self->_catalogURL || (result = [SCNAssetCatalog assetCatalogWithURL:?]) == 0)
  {
    result = SCNGetResourceBundle();
    if (result)
    {
      v3 = [result bundleURL];

      return [SCNAssetCatalog assetCatalogWithURL:v3];
    }
  }

  return result;
}

- (id)_resolveURL
{
  referenceURL = self->_referenceURL;
  if (!referenceURL)
  {
    return 0;
  }

  if ([(NSURL *)self->_referenceURL scheme]&& ![(NSURL *)referenceURL isFileURL])
  {
    return referenceURL;
  }

  v4 = [(NSURL *)referenceURL relativePath];
  if ([(NSString *)v4 isAbsolutePath])
  {
    return referenceURL;
  }

  sourceDocumentURL = self->_sourceDocumentURL;
  if (sourceDocumentURL)
  {
    v5 = [[(NSURL *)sourceDocumentURL URLByDeletingLastPathComponent] URLByAppendingPathComponent:v4];
    if (C3DFileMayExistAtURL(v5))
    {
      return v5;
    }
  }

  catalogURL = self->_catalogURL;
  v5 = referenceURL;
  if (!catalogURL)
  {
    return v5;
  }

  return [(NSURL *)catalogURL URLByAppendingPathComponent:v4];
}

- (void)unload
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(SCNNode *)self childNodes];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) removeFromParentNode];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_loaded = 0;
}

- (id)_loadReferencedSceneWithURL:(id)a3 catalog:(id)a4
{
  if (a3)
  {
    if (a4 || (a4 = [(SCNReferenceNode *)self _catalog]) != 0)
    {

      return [a4 sceneWithURL:a3];
    }

    else
    {

      return [SCNScene sceneWithURL:a3 options:0 error:0];
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNReferenceNode _loadReferencedSceneWithURL:catalog:];
    }

    return 0;
  }
}

- (void)_loadWithCatalog:(id)a3
{
  if (!self->_loaded)
  {
    v6 = [(SCNReferenceNode *)self _resolveURL];

    [(SCNReferenceNode *)self _loadWithURL:v6 catalog:a3];
  }
}

- (void)_loadWithURL:(id)a3 catalog:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = [SCNTransaction valueForKey:@"SCNReferenceLoadingStack"];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [SCNTransaction setValue:v7 forKey:@"SCNReferenceLoadingStack"];
    }

    if ([v7 containsObject:a3])
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNReferenceNode _loadWithURL:catalog:];
      }
    }

    else
    {
      [v7 addObject:a3];
      v10 = [(SCNReferenceNode *)self _loadReferencedSceneWithURL:a3 catalog:a4];
      [v7 removeObject:a3];
      if (v10)
      {
        self->_loaded = 1;
        v11 = self;
        if (C3DWasLinkedBeforeMajorOSYear2017())
        {
          v11 = +[SCNNode node];
          [(SCNNode *)v11 setName:@"referenceRoot"];
        }

        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = [objc_msgSend(objc_msgSend(v10 "rootNode")];
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v18;
          do
          {
            v16 = 0;
            do
            {
              if (*v18 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [(SCNNode *)v11 addChildNode:*(*(&v17 + 1) + 8 * v16++)];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v14);
        }

        -[SCNNode _copyAnimationsFrom:](v11, "_copyAnimationsFrom:", [v10 rootNode]);
        if (v11 != self)
        {
          [(SCNNode *)self addChildNode:v11];
        }

        [(SCNReferenceNode *)self _applyOverrides];
      }
    }
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNReferenceNode _loadReferencedSceneWithURL:catalog:];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p url=%@>", NSStringFromClass(v4), self, self->_referenceURL];
}

- (void)encodeWithCoder:(id)a3
{
  referenceURL = self->_referenceURL;
  if (referenceURL)
  {
    [a3 encodeObject:referenceURL forKey:@"referenceURL"];
  }

  [a3 encodeInteger:self->_loadingPolicy forKey:@"loadingPolicy"];
  overrides = self->_overrides;
  if (overrides)
  {
    [a3 encodeObject:overrides forKey:@"overrides"];
  }

  v7.receiver = self;
  v7.super_class = SCNReferenceNode;
  [(SCNNode *)&v7 encodeWithCoder:a3];
}

- (SCNReferenceNode)initWithCoder:(NSCoder *)aDecoder
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SCNReferenceNode;
  v4 = [(SCNNode *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    -[SCNReferenceNode setReferenceURL:](v4, "setReferenceURL:", -[NSCoder decodeObjectOfClasses:forKey:](aDecoder, "decodeObjectOfClasses:forKey:", [v5 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v9, 2)}], @"referenceURL"));
    [(SCNReferenceNode *)v4 setLoadingPolicy:[(NSCoder *)aDecoder decodeIntegerForKey:@"loadingPolicy"]];
    v4->_overrides = [-[NSCoder decodeObjectOfClasses:forKey:](aDecoder decodeObjectOfClasses:SCNUserInfoClasses() forKey:{@"overrides", "mutableCopy"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(NSCoder *)aDecoder assetCatalog];
      v4->_catalogURL = [v6 catalogURL];
      v4->_sourceDocumentURL = [(NSCoder *)aDecoder documentURL];
    }

    else
    {
      v6 = 0;
    }

    if (![(NSCoder *)aDecoder containsValueForKey:@"childNodes"]&& !v4->_loadingPolicy)
    {
      [(SCNReferenceNode *)v4 _loadWithCatalog:v6];
    }
  }

  return v4;
}

- (void)_diffNode:with:path:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_diffNode:(uint8_t *)buf with:(_BYTE *)a2 path:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: inconsistency - material has custom properties - can't diff reference node", buf, 2u);
}

- (void)_diffNode:with:path:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_applyUnsharing:alreadyShared:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_applyUnsharing:alreadyShared:.cold.2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadReferencedSceneWithURL:catalog:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadWithURL:catalog:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end