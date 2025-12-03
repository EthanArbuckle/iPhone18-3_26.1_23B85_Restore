@interface SCNReferenceNode
+ (SCNReferenceNode)referenceNodeWithURL:(NSURL *)referenceURL;
- (BOOL)_isNameUnique:(id)unique;
- (SCNReferenceNode)initWithCoder:(NSCoder *)aDecoder;
- (SCNReferenceNode)initWithURL:(NSURL *)referenceURL;
- (id)_catalog;
- (id)_loadReferencedSceneWithURL:(id)l catalog:(id)catalog;
- (id)_resolveURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_applyOverrides;
- (void)_applyUnsharing:(id)unsharing alreadyShared:(id)shared;
- (void)_diffNode:(id)node with:(id)with path:(id)path;
- (void)_diffObject:(id)object with:(id)with path:(id)path;
- (void)_loadWithCatalog:(id)catalog;
- (void)_loadWithURL:(id)l catalog:(id)catalog;
- (void)addOverride:(id)override forKeyPath:(id)path;
- (void)collectOverrides;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeAllOverrides;
- (void)removeForKeyPath:(id)path;
- (void)setOverride:(id)override forKeyPath:(id)path;
- (void)setOverrides:(id)overrides;
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

- (void)_diffObject:(id)object with:(id)with path:(id)path
{
  pathCopy = path;
  v29 = *MEMORY[0x277D85DE8];
  if (_diffObject_with_path__onceToken != -1)
  {
    [SCNReferenceNode _diffObject:with:path:];
  }

  v5 = objc_opt_class();
  outCount = 0;
  v6 = class_copyPropertyList(v5, &outCount);
  array = [MEMORY[0x277CBEB18] array];
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
          [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", property_getName(v9))}];
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
  v12 = [array countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(array);
        }

        v15 = *(*(&v23 + 1) + 8 * j);
        if (([_diffObject_with_path__skippedProperies containsObject:{v15, pathCopy}] & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"_") & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"ide_") & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"ske_") & 1) == 0 && (objc_msgSend(v15, "hasPrefix:", @"simd") & 1) == 0)
        {
          v16 = [object valueForKey:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            lastPathComponent2 = [with valueForKey:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              lastPathComponent = [v16 lastPathComponent];
              lastPathComponent2 = [lastPathComponent2 lastPathComponent];
            }

            else
            {
              lastPathComponent = v16;
            }

            if (([lastPathComponent isEqual:lastPathComponent2] & 1) == 0)
            {
              -[NSMutableDictionary setValue:forKey:](self->_overrides, "setValue:forKey:", v16, [objc_msgSend(pathCopy stringByAppendingString:{@".", "stringByAppendingString:", v15}]);
            }
          }
        }
      }

      v12 = [array countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides", pathCopy];
}

id __42__SCNReferenceNode__diffObject_with_path___block_invoke()
{
  result = [MEMORY[0x277CBEB98] setWithArray:&unk_282E0FB70];
  _diffObject_with_path__skippedProperies = result;
  return result;
}

- (BOOL)_isNameUnique:(id)unique
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SCNReferenceNode__isNameUnique___block_invoke;
  v5[3] = &unk_2782FD1D8;
  v5[4] = unique;
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

- (void)_diffNode:(id)node with:(id)with path:(id)path
{
  if ([node name] && (objc_msgSend(objc_msgSend(node, "name"), "containsString:", @".") & 1) == 0 && -[SCNReferenceNode _isNameUnique:](self, "_isNameUnique:", objc_msgSend(node, "name")))
  {
    path = [@"/" stringByAppendingString:{objc_msgSend(node, "name")}];
  }

  withCopy = with;
  [(SCNReferenceNode *)self _diffObject:node with:with path:path];
  nodeCopy = node;
  if ([node geometry] && objc_msgSend(with, "geometry"))
  {
    -[SCNReferenceNode _diffObject:with:path:](self, "_diffObject:with:path:", [node geometry], objc_msgSend(with, "geometry"), objc_msgSend(objc_msgSend(path, "stringByAppendingString:", @"."), "stringByAppendingString:", @"geometry"));
    v9 = [objc_msgSend(objc_msgSend(node "geometry")];
    if (v9 == [objc_msgSend(objc_msgSend(withCopy "geometry")])
    {
      v28 = [objc_msgSend(node "geometry")];
      v27 = [objc_msgSend(withCopy "geometry")];
      if (v9)
      {
        v10 = 0;
        v25 = v9;
        pathCopy = path;
        do
        {
          v11 = [v28 objectAtIndexedSubscript:v10];
          v12 = [v27 objectAtIndexedSubscript:v10];
          v29 = v10;
          v13 = [objc_msgSend(path stringByAppendingString:{@".", "stringByAppendingString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"geometry.materials[%d]", v10)}];
          [(SCNReferenceNode *)self _diffObject:v11 with:v12 path:v13];
          properties = [v11 properties];
          properties2 = [v12 properties];
          v16 = [properties count];
          if ([properties2 count] == v16)
          {
            if (v16)
            {
              for (i = 0; i != v16; ++i)
              {
                -[SCNReferenceNode _diffObject:with:path:](self, "_diffObject:with:path:", [properties objectAtIndexedSubscript:i], objc_msgSend(properties2, "objectAtIndexedSubscript:", i), objc_msgSend(objc_msgSend(v13, "stringByAppendingString:", @"."), "stringByAppendingString:", objc_msgSend(objc_msgSend(properties, "objectAtIndexedSubscript:", i), "slotName")));
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
          path = pathCopy;
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

  if ([objc_msgSend(nodeCopy "particleSystems")] && objc_msgSend(objc_msgSend(withCopy, "particleSystems"), "count"))
  {
    -[SCNReferenceNode _diffObject:with:path:](self, "_diffObject:with:path:", [objc_msgSend(nodeCopy "particleSystems")], objc_msgSend(objc_msgSend(withCopy, "particleSystems"), "objectAtIndexedSubscript:", 0), objc_msgSend(objc_msgSend(path, "stringByAppendingString:", @"."), "stringByAppendingString:", @"particleSystems[0]"));
  }

  v20 = [objc_msgSend(nodeCopy "childNodes")];
  if (v20 == [objc_msgSend(withCopy "childNodes")])
  {
    if (v20)
    {
      for (j = 0; j != v20; ++j)
      {
        path = [objc_msgSend(path stringByAppendingString:{@".", "stringByAppendingString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"[%d]", j)}];
        -[SCNReferenceNode _diffNode:with:path:](self, "_diffNode:with:path:", [objc_msgSend(nodeCopy "childNodes")], objc_msgSend(objc_msgSend(withCopy, "childNodes"), "objectAtIndexedSubscript:", j), path);
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

- (void)addOverride:(id)override forKeyPath:(id)path
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  overrides = self->_overrides;
  if (!overrides)
  {
    overrides = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_overrides = overrides;
  }

  [(NSMutableDictionary *)overrides setObject:override forKey:path];

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];
}

- (void)removeForKeyPath:(id)path
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  [(NSMutableDictionary *)self->_overrides removeObjectForKey:path];
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

- (void)setOverrides:(id)overrides
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];

  self->_overrides = [overrides mutableCopy];

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];
}

- (void)_applyUnsharing:(id)unsharing alreadyShared:(id)shared
{
  v35 = *MEMORY[0x277D85DE8];
  if ([shared containsObject:?])
  {
    return;
  }

  [shared addObject:unsharing];
  v7 = [unsharing rangeOfString:@"." options:4];
  if (v8 != 1)
  {
    return;
  }

  v9 = v7;
  v10 = v7 + 1;
  if (v7 + 1 >= [unsharing length])
  {
    return;
  }

  v11 = [unsharing substringToIndex:v9];
  v12 = [unsharing substringFromIndex:v10];
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

  if (([shared containsObject:v11] & 1) == 0)
  {
    [(SCNReferenceNode *)self _applyUnsharing:v11 alreadyShared:shared];
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
            unsharingCopy = unsharing;
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

- (void)setOverride:(id)override forKeyPath:(id)path
{
  [(SCNReferenceNode *)self willChangeValueForKey:@"overrides"];
  if (!self->_overrides)
  {
    self->_overrides = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [(SCNReferenceNode *)self didChangeValueForKey:@"overrides"];

  [(SCNReferenceNode *)self _applyOverride:override forKeyPath:path];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SCNReferenceNode;
  v4 = [(SCNNode *)&v6 copyWithZone:zone];
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
      bundleURL = [result bundleURL];

      return [SCNAssetCatalog assetCatalogWithURL:bundleURL];
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

  relativePath = [(NSURL *)referenceURL relativePath];
  if ([(NSString *)relativePath isAbsolutePath])
  {
    return referenceURL;
  }

  sourceDocumentURL = self->_sourceDocumentURL;
  if (sourceDocumentURL)
  {
    v5 = [[(NSURL *)sourceDocumentURL URLByDeletingLastPathComponent] URLByAppendingPathComponent:relativePath];
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

  return [(NSURL *)catalogURL URLByAppendingPathComponent:relativePath];
}

- (void)unload
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  childNodes = [(SCNNode *)self childNodes];
  v4 = [(NSArray *)childNodes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(childNodes);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromParentNode];
      }

      while (v5 != v7);
      v5 = [(NSArray *)childNodes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_loaded = 0;
}

- (id)_loadReferencedSceneWithURL:(id)l catalog:(id)catalog
{
  if (l)
  {
    if (catalog || (catalog = [(SCNReferenceNode *)self _catalog]) != 0)
    {

      return [catalog sceneWithURL:l];
    }

    else
    {

      return [SCNScene sceneWithURL:l options:0 error:0];
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

- (void)_loadWithCatalog:(id)catalog
{
  if (!self->_loaded)
  {
    _resolveURL = [(SCNReferenceNode *)self _resolveURL];

    [(SCNReferenceNode *)self _loadWithURL:_resolveURL catalog:catalog];
  }
}

- (void)_loadWithURL:(id)l catalog:(id)catalog
{
  v22 = *MEMORY[0x277D85DE8];
  if (l)
  {
    v7 = [SCNTransaction valueForKey:@"SCNReferenceLoadingStack"];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [SCNTransaction setValue:v7 forKey:@"SCNReferenceLoadingStack"];
    }

    if ([v7 containsObject:l])
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNReferenceNode _loadWithURL:catalog:];
      }
    }

    else
    {
      [v7 addObject:l];
      v10 = [(SCNReferenceNode *)self _loadReferencedSceneWithURL:l catalog:catalog];
      [v7 removeObject:l];
      if (v10)
      {
        self->_loaded = 1;
        selfCopy = self;
        if (C3DWasLinkedBeforeMajorOSYear2017())
        {
          selfCopy = +[SCNNode node];
          [(SCNNode *)selfCopy setName:@"referenceRoot"];
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

              [(SCNNode *)selfCopy addChildNode:*(*(&v17 + 1) + 8 * v16++)];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v14);
        }

        -[SCNNode _copyAnimationsFrom:](selfCopy, "_copyAnimationsFrom:", [v10 rootNode]);
        if (selfCopy != self)
        {
          [(SCNNode *)self addChildNode:selfCopy];
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

- (void)encodeWithCoder:(id)coder
{
  referenceURL = self->_referenceURL;
  if (referenceURL)
  {
    [coder encodeObject:referenceURL forKey:@"referenceURL"];
  }

  [coder encodeInteger:self->_loadingPolicy forKey:@"loadingPolicy"];
  overrides = self->_overrides;
  if (overrides)
  {
    [coder encodeObject:overrides forKey:@"overrides"];
  }

  v7.receiver = self;
  v7.super_class = SCNReferenceNode;
  [(SCNNode *)&v7 encodeWithCoder:coder];
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
      assetCatalog = [(NSCoder *)aDecoder assetCatalog];
      v4->_catalogURL = [assetCatalog catalogURL];
      v4->_sourceDocumentURL = [(NSCoder *)aDecoder documentURL];
    }

    else
    {
      assetCatalog = 0;
    }

    if (![(NSCoder *)aDecoder containsValueForKey:@"childNodes"]&& !v4->_loadingPolicy)
    {
      [(SCNReferenceNode *)v4 _loadWithCatalog:assetCatalog];
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