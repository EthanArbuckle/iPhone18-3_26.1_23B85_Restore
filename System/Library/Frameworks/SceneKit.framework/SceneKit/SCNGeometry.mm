@interface SCNGeometry
+ (SCNGeometry)geometry;
+ (SCNGeometry)geometryWithGeometryRef:(__C3DGeometry *)ref;
+ (SCNGeometry)geometryWithMDLMesh:(id)mesh options:(id)options;
+ (SCNGeometry)geometryWithMDLMesh:(id)mesh submesh:(id)submesh options:(id)options;
+ (SCNGeometry)geometryWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels;
+ (id)boxWithWidth:(double)width height:(double)height length:(double)length cornerRadius:(double)radius options:(id)options;
+ (id)capsuleWithRadius:(double)radius height:(double)height options:(id)options;
+ (id)coneWithHeight:(double)height topRadius:(double)radius bottomRadius:(double)bottomRadius options:(id)options;
+ (id)cylinderWithRadius:(double)radius height:(double)height options:(id)options;
+ (id)morpherWithMDLMesh:(id)mesh;
+ (id)planeWithWidth:(double)width height:(double)height options:(id)options;
+ (id)pyramidWithWidth:(double)width height:(double)height length:(double)length options:(id)options;
+ (id)sphereWithRadius:(double)radius options:(id)options;
+ (id)torusWithRingRadius:(double)radius pipeRadius:(double)pipeRadius options:(id)options;
+ (id)tubeWithInnerRadius:(double)radius outerRadius:(double)outerRadius height:(double)height options:(id)options;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (BOOL)isAnimationForKeyPaused:(id)paused;
- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination remainingPath:(id *)remainingPath;
- (BOOL)simdGetBoundingSphereCenter:(SCNGeometry *)self radius:(SEL)radius;
- (NSArray)animationKeys;
- (NSArray)geometryElements;
- (NSArray)geometrySources;
- (NSArray)geometrySourcesForSemantic:(SCNGeometrySourceSemantic)semantic;
- (NSArray)materials;
- (NSInteger)geometryElementCount;
- (NSString)name;
- (SCNGeometry)init;
- (SCNGeometry)initWithCoder:(id)coder;
- (SCNGeometry)initWithGeometryRef:(__C3DGeometry *)ref;
- (SCNGeometryElement)geometryElementAtIndex:(NSInteger)elementIndex;
- (SCNMaterial)firstMaterial;
- (SCNMaterial)materialWithName:(NSString *)name;
- (__C3DAnimationManager)animationManager;
- (__C3DMaterial)materialRef;
- (__C3DMaterial)materialRefCreateIfNeeded;
- (__C3DScene)sceneRef;
- (id)_firstMaterial;
- (id)_geometryByAddingSourcesOfSkinner:(id)skinner;
- (id)_geometryByRemovingSkinnerSources;
- (id)_geometryByUnifyingNormalsWithCreaseThreshold:(double)threshold;
- (id)_geometryByWeldingVerticesWithThreshold:(double)threshold normalThreshold:(double)normalThreshold;
- (id)_materialWithName:(id)name;
- (id)_renderableCopy;
- (id)_scnAnimationForKey:(id)key;
- (id)animationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)geometryDescription;
- (id)geometrySourceForSemantic:(id)semantic;
- (id)getBoundingBox;
- (id)getBoundingSphere;
- (id)identifier;
- (id)initPresentationGeometryWithGeometryRef:(__C3DGeometry *)ref;
- (id)interleavedCopy;
- (id)mutableCopy;
- (id)mutableMaterials;
- (id)objectInMaterialsAtIndex:(unint64_t)index;
- (id)presentationGeometry;
- (id)scene;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)primitiveType;
- (unint64_t)countOfMaterials;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyAttributesTo:(id)to;
- (void)_customDecodingOfSCNGeometry:(id)geometry;
- (void)_customEncodingOfSCNGeometry:(id)geometry;
- (void)_discardOriginalTopology;
- (void)_expand;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setGeometryRef:(__C3DGeometry *)ref;
- (void)_setupGeometryElements;
- (void)_setupGeometrySources;
- (void)_setupObjCModelFrom:(id)from;
- (void)_setupShadableHelperIfNeeded;
- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_unifyNormals;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleBindingOfSymbol:(id)symbol usingBlock:(id)block;
- (void)handleUnbindingOfSymbol:(id)symbol usingBlock:(id)block;
- (void)insertObject:(id)object inMaterialsAtIndex:(unint64_t)index;
- (void)pauseAnimationForKey:(id)key;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)duration;
- (void)removeAllBindings;
- (void)removeAllMaterials;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration;
- (void)removeMaterial:(id)material;
- (void)removeObjectFromMaterialsAtIndex:(unint64_t)index;
- (void)replaceMaterial:(id)material with:(id)with;
- (void)replaceObjectInMaterialsAtIndex:(unint64_t)index withObject:(id)object;
- (void)resumeAnimationForKey:(id)key;
- (void)setBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (void)setEdgeCreasesElement:(SCNGeometryElement *)edgeCreasesElement;
- (void)setEdgeCreasesSource:(SCNGeometrySource *)edgeCreasesSource;
- (void)setFirstMaterial:(SCNMaterial *)firstMaterial;
- (void)setGeometryRef:(__C3DGeometry *)ref;
- (void)setIdentifier:(id)identifier;
- (void)setLevelsOfDetail:(NSArray *)levelsOfDetail;
- (void)setMaterials:(NSArray *)materials;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setName:(NSString *)name;
- (void)setPrimitiveType:(int64_t)type;
- (void)setProgram:(id)program;
- (void)setShaderModifiers:(id)modifiers;
- (void)setSpeed:(double)speed forAnimationKey:(id)key;
- (void)setSubdivisionLevel:(NSUInteger)subdivisionLevel;
- (void)setTessellator:(SCNGeometryTessellator *)tessellator;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setValueForKey:(id)key optionKey:(id)optionKey options:(id)options;
- (void)setWantsAdaptiveSubdivision:(BOOL)wantsAdaptiveSubdivision;
- (void)set_subdivisionSettings:(id)settings;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation SCNGeometry

+ (SCNGeometry)geometryWithMDLMesh:(id)mesh submesh:(id)submesh options:(id)options
{
  v5 = 0;
  if (mesh && submesh)
  {
    if ([submesh indexCount])
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = [SCNGeometryElement geometryElementWithMDLSubmesh:submesh];
      if (v14)
      {
        [v10 addObject:v14];
      }

      material = [submesh material];
      if (material)
      {
        v16 = [SCNMaterial materialWithMDLMaterial:material option:options];
        if (v16)
        {
          [v11 addObject:v16];
        }
      }

      v24._meshElement = 0;
      v24._elementData = 0;
      v23[1] = 0;
      v24.super.isa = &v24._meshElement;
      v22 = v23;
      v23[0] = 0;
      v20 = 0;
      v21 = 0;
      v5 = [self geometryWithSources:v12 elements:v10];
      -[SCNGeometry setName:](v5, "setName:", [mesh name]);
      [(SCNGeometry *)v5 setSubdivisionLevel:0];
      [(SCNGeometry *)v5 setEdgeCreasesElement:v20];
      [(SCNGeometry *)v5 setEdgeCreasesSource:v21];
      [(SCNGeometry *)v5 setMaterials:v11];

      std::__tree<char>::destroy(&v22, v23[0]);
      std::__tree<char>::destroy(&v24, &v24._meshElement->var0.var0.var0);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

+ (SCNGeometry)geometryWithMDLMesh:(id)mesh options:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  if (!mesh)
  {
    return 0;
  }

  selfCopy = self;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47._meshElement = 0;
  v47._elementData = 0;
  v46 = 0;
  v47.super.isa = &v47._meshElement;
  v44 = &v45;
  v45 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  submeshes = [mesh submeshes];
  v10 = [submeshes countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(submeshes);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        if ([v13 indexCount])
        {
          v14 = [SCNGeometryElement geometryElementWithMDLSubmesh:v13];
          if (v14)
          {
            [v6 addObject:v14];
          }

          material = [v13 material];
          if (material)
          {
            material = [SCNMaterial materialWithMDLMaterial:material options:options];
            if (material)
            {
              [v32 addObject:material];
            }
          }

          [v13 topology];
        }
      }

      v10 = [submeshes countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);
  }

  v16 = v31;
  v38 = 0;
  v39 = 0;
  if ([objc_msgSend(mesh "submeshes")])
  {
    v17 = 0;
    v18 = *MEMORY[0x277CD7AB0];
    while (1)
    {
      v19 = v17;
      if ([objc_msgSend(objc_msgSend(mesh vertexDescriptor] <= v17)
      {
        break;
      }

      if ([objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(mesh "vertexDescriptor")])
      {
        goto LABEL_24;
      }
    }

    v19 = 0;
LABEL_24:
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:&v47._primitiveType count:16];
    if (v23)
    {
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          unsignedLongValue = [v26 unsignedLongValue];
          if (unsignedLongValue >= [objc_msgSend(objc_msgSend(objc_msgSend(mesh "submeshes")])
          {
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
          }

          else
          {
            v28 = [objc_msgSend(objc_msgSend(objc_msgSend(mesh "submeshes")];
          }

          [v22 addObject:v28];
        }

        v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:&v47._primitiveType count:16];
      }

      while (v23);
    }

    v16 = v31;
    if (v46)
    {
      [v22 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v19)}];
    }

    v21 = [selfCopy geometryWithSources:v31 elements:v6 sourceChannels:v22];
  }

  else
  {
    v21 = [selfCopy geometryWithSources:v31 elements:v6];
  }

  -[SCNGeometry setName:](v21, "setName:", [mesh name]);
  [(SCNGeometry *)v21 setSubdivisionLevel:0];
  [(SCNGeometry *)v21 setEdgeCreasesElement:v38];
  [(SCNGeometry *)v21 setEdgeCreasesSource:v39];
  [(SCNGeometry *)v21 setMaterials:v32];

  std::__tree<char>::destroy(&v44, v45);
  std::__tree<char>::destroy(&v47, &v47._meshElement->var0.var0.var0);
  return v21;
}

+ (id)morpherWithMDLMesh:(id)mesh
{
  v52 = *MEMORY[0x277D85DE8];
  vertexDescriptor = [mesh vertexDescriptor];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  attributes = [vertexDescriptor attributes];
  v8 = [attributes countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    v11 = *MEMORY[0x277CD7AB0];
    v12 = *MEMORY[0x277CD7AA0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(attributes);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        if ([v14 format])
        {
          if ([objc_msgSend(v14 "name")])
          {
            [v5 addObject:v14];
          }

          if ([objc_msgSend(v14 "name")])
          {
            [v6 addObject:v14];
          }
        }
      }

      v9 = [attributes countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [v5 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v5);
          }

          [v15 addObject:{+[SCNGeometrySource geometrySourceWithMDLVertexAttribute:mesh:](SCNGeometrySource, "geometrySourceWithMDLVertexAttribute:mesh:", *(*(&v39 + 1) + 8 * j), mesh)}];
        }

        v17 = [v5 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v17);
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = [v6 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v6);
          }

          [v20 addObject:{+[SCNGeometrySource geometrySourceWithMDLVertexAttribute:mesh:](SCNGeometrySource, "geometrySourceWithMDLVertexAttribute:mesh:", *(*(&v35 + 1) + 8 * k), mesh)}];
        }

        v22 = [v6 countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v22);
    }

    v25 = [self geometryWithMDLMesh:mesh];
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    if ([v5 count] == 1)
    {
      [v26 addObject:v25];
    }

    else
    {
      v28 = [v15 count];
      v29 = [v20 count];
      v30 = [v15 count];
      if (v28 == v29)
      {
        if (v30)
        {
          v31 = 0;
          do
          {
            v48[0] = [v15 objectAtIndexedSubscript:v31];
            v48[1] = [v20 objectAtIndexedSubscript:v31];
            [v26 addObject:{+[SCNGeometry geometryWithSources:elements:](SCNGeometry, "geometryWithSources:elements:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v48, 2), 0)}];
            ++v31;
          }

          while (v31 < [v15 count]);
        }
      }

      else if (v30)
      {
        v32 = 0;
        do
        {
          v47 = [v15 objectAtIndexedSubscript:v32];
          [v26 addObject:{+[SCNGeometry geometryWithSources:elements:](SCNGeometry, "geometryWithSources:elements:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v47, 1), 0)}];
          ++v32;
        }

        while (v32 < [v15 count]);
      }
    }

    v33 = objc_alloc_init(SCNMorpher);
    [(SCNMorpher *)v33 setTargets:v26];

    return v33;
  }

  else
  {

    return 0;
  }
}

- (void)setValueForKey:(id)key optionKey:(id)optionKey options:(id)options
{
  v7 = [options objectForKey:optionKey];
  if (v7)
  {

    [(SCNGeometry *)self setValue:v7 forKey:key];
  }
}

+ (id)planeWithWidth:(double)width height:(double)height options:(id)options
{
  v6 = [SCNPlane planeWithWidth:width height:height];
  [(SCNGeometry *)v6 setValueForKey:@"widthSegmentCount" optionKey:@"kPrimitiveWidthSegments" options:options];
  [(SCNGeometry *)v6 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  return v6;
}

+ (id)boxWithWidth:(double)width height:(double)height length:(double)length cornerRadius:(double)radius options:(id)options
{
  v8 = [SCNBox boxWithWidth:width height:height length:length chamferRadius:radius];
  [(SCNGeometry *)v8 setValueForKey:@"widthSegmentCount" optionKey:@"kPrimitiveWidthSegments" options:options];
  [(SCNGeometry *)v8 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  [(SCNGeometry *)v8 setValueForKey:@"lengthSegmentCount" optionKey:@"kPrimitiveLengthSegments" options:options];
  [(SCNGeometry *)v8 setValueForKey:@"chamferSegmentCount" optionKey:@"kPrimitiveChamferSegments" options:options];
  return v8;
}

+ (id)pyramidWithWidth:(double)width height:(double)height length:(double)length options:(id)options
{
  v7 = [SCNPyramid pyramidWithWidth:width height:height length:length];
  [(SCNGeometry *)v7 setValueForKey:@"widthSegmentCount" optionKey:@"kPrimitiveWidthSegments" options:options];
  [(SCNGeometry *)v7 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  [(SCNGeometry *)v7 setValueForKey:@"lengthSegmentCount" optionKey:@"kPrimitiveLengthSegments" options:options];
  return v7;
}

+ (id)sphereWithRadius:(double)radius options:(id)options
{
  v5 = [SCNSphere sphereWithRadius:radius];
  [(SCNGeometry *)v5 setValueForKey:@"segmentCount" optionKey:@"kPrimitiveRotationSegments" options:options];
  v6 = [options objectForKey:@"kPrimitiveSphereType"];
  if (v6)
  {
    -[SCNSphere setGeodesic:](v5, "setGeodesic:", [v6 isEqualToString:@"kPrimitiveTypeGeosphere"]);
  }

  return v5;
}

+ (id)cylinderWithRadius:(double)radius height:(double)height options:(id)options
{
  v6 = [SCNCylinder cylinderWithRadius:radius height:height];
  [(SCNGeometry *)v6 setValueForKey:@"radialSegmentCount" optionKey:@"kPrimitiveRotationSegments" options:options];
  [(SCNGeometry *)v6 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  return v6;
}

+ (id)coneWithHeight:(double)height topRadius:(double)radius bottomRadius:(double)bottomRadius options:(id)options
{
  v7 = [SCNCone coneWithTopRadius:radius bottomRadius:bottomRadius height:height];
  [(SCNGeometry *)v7 setValueForKey:@"radialSegmentCount" optionKey:@"kPrimitiveRotationSegments" options:options];
  [(SCNGeometry *)v7 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  return v7;
}

+ (id)tubeWithInnerRadius:(double)radius outerRadius:(double)outerRadius height:(double)height options:(id)options
{
  v7 = [SCNTube tubeWithInnerRadius:radius outerRadius:outerRadius height:height];
  [(SCNGeometry *)v7 setValueForKey:@"radialSegmentCount" optionKey:@"kPrimitiveRotationSegments" options:options];
  [(SCNGeometry *)v7 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  return v7;
}

+ (id)capsuleWithRadius:(double)radius height:(double)height options:(id)options
{
  v6 = [SCNCapsule capsuleWithCapRadius:radius height:height];
  [(SCNGeometry *)v6 setValueForKey:@"radialSegmentCount" optionKey:@"kPrimitiveRotationSegments" options:options];
  [(SCNGeometry *)v6 setValueForKey:@"heightSegmentCount" optionKey:@"kPrimitiveHeightSegments" options:options];
  return v6;
}

+ (id)torusWithRingRadius:(double)radius pipeRadius:(double)pipeRadius options:(id)options
{
  v6 = [SCNTorus torusWithRingRadius:radius pipeRadius:pipeRadius];
  [(SCNGeometry *)v6 setValueForKey:@"ringSegmentCount" optionKey:@"kPrimitiveRotationSegments" options:options];
  [(SCNGeometry *)v6 setValueForKey:@"pipeSegmentCount" optionKey:@"kPrimitivePipeSegments" options:options];
  return v6;
}

- (SCNGeometry)init
{
  v5.receiver = self;
  v5.super_class = SCNGeometry;
  v2 = [(SCNGeometry *)&v5 init];
  if (v2)
  {
    v3 = C3DGeometryCreate();
    v2->_geometry = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    v2->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    [(SCNGeometry *)v2 _syncObjCModel];
  }

  return v2;
}

- (SCNGeometry)initWithGeometryRef:(__C3DGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNGeometry;
  v4 = [(SCNGeometry *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_geometry = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    v4->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    [(SCNGeometry *)v4 _syncObjCModel];
    [(SCNGeometry *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationGeometryWithGeometryRef:(__C3DGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNGeometry;
  v4 = [(SCNGeometry *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) |= 1u;
    v4->_geometry = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (SCNGeometry)geometryWithGeometryRef:(__C3DGeometry *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithGeometryRef:ref];

    return v6;
  }

  return result;
}

+ (SCNGeometry)geometry
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  geometry = self->_geometry;
  if (geometry)
  {
    if ((*(self + 16) & 1) == 0)
    {
      C3DEntitySetObjCWrapper(geometry, 0);
      geometry = self->_geometry;
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __22__SCNGeometry_dealloc__block_invoke;
    v5[3] = &__block_descriptor_40_e8_v16__0d8l;
    v5[4] = geometry;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v5];
  }

  [(SCNGeometryTessellator *)self->_tessellator clientWillDie:self];

  [(SCNShadableHelper *)self->_shadableHelper ownerWillDie];
  free(self->_fixedBoundingBoxExtrema);
  v4.receiver = self;
  v4.super_class = SCNGeometry;
  [(SCNGeometry *)&v4 dealloc];
}

- (void)setName:(NSString *)name
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setName:];
    }
  }

  else if (name | self->_name)
  {
    if (([(NSString *)name isEqual:?]& 1) == 0)
    {

      self->_name = [(NSString *)name copy];
      sceneRef = [(SCNGeometry *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __23__SCNGeometry_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = name;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
    }
  }
}

CFStringRef __23__SCNGeometry_setName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  return C3DEntitySetName(v2, v3);
}

- (NSString)name
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_name;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Name = C3DEntityGetName([(SCNGeometry *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)identifier
{
  __CFObject = [(SCNGeometry *)self __CFObject];

  C3DEntitySetID(__CFObject, identifier);
}

- (id)identifier
{
  __CFObject = [(SCNGeometry *)self __CFObject];

  return C3DEntityGetID(__CFObject);
}

- (void)_syncEntityObjCModel
{
  __CFObject = [(SCNGeometry *)self __CFObject];

  self->_name = C3DEntityGetName(__CFObject);
}

- (void)_syncObjCModel
{
  [(SCNGeometry *)self _syncEntityObjCModel];
  self->_subdivisionIsAdaptive = C3DGeometryOsdGetWantsAdaptiveSubdivision(self->_geometry);
  self->_subdivisionSettings = C3DGeometryOsdGetSubdivisionSettings(self->_geometry);

  self->_edgeCreasesSource = 0;
  EdgeCreasesSource = C3DGeometryOsdGetEdgeCreasesSource(self->_geometry);
  if (EdgeCreasesSource)
  {
    v4 = EdgeCreasesSource;
    ObjCWrapper = C3DEntityGetObjCWrapper(EdgeCreasesSource);
    if (ObjCWrapper)
    {
      v6 = ObjCWrapper;
    }

    else
    {
      v6 = [[SCNGeometrySource alloc] initWithMeshSource:v4];
    }

    self->_edgeCreasesSource = v6;
  }

  self->_edgeCreasesElement = 0;
  EdgeCreasesElement = C3DGeometryOsdGetEdgeCreasesElement(self->_geometry);
  if (EdgeCreasesElement)
  {
    v8 = EdgeCreasesElement;
    v9 = C3DEntityGetObjCWrapper(EdgeCreasesElement);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [[SCNGeometryElement alloc] initWithMeshElement:v8];
    }

    self->_edgeCreasesElement = v10;
  }
}

- (id)geometryDescription
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [(NSString *)[(SCNGeometry *)self name] length];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v4)
  {
    [string appendFormat:@"%@: %p '%@'", v6, self, -[SCNGeometry name](self, "name")];
  }

  else
  {
    [string appendFormat:@"%@: %p", v6, self, v8];
  }

  if ([(SCNGeometry *)self geometryElementCount]>= 2)
  {
    [string appendFormat:@" | %d elements", -[SCNGeometry geometryElementCount](self, "geometryElementCount")];
  }

  return string;
}

- (void)_setGeometryRef:(__C3DGeometry *)ref
{
  geometry = self->_geometry;
  if (!geometry)
  {
    if (!ref)
    {
      return;
    }

LABEL_8:
    v6 = CFRetain(ref);
    goto LABEL_9;
  }

  C3DEntitySetObjCWrapper(geometry, 0);
  v6 = self->_geometry;
  if (v6 == ref)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    CFRelease(v6);
    self->_geometry = 0;
  }

  if (ref)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  self->_geometry = v6;
LABEL_10:
  if (v6)
  {

    C3DEntitySetObjCWrapper(v6, self);
  }
}

- (void)setGeometryRef:(__C3DGeometry *)ref
{
  if (self->_geometry != ref)
  {
    [(SCNGeometry *)self _setGeometryRef:?];
    [(SCNGeometry *)self willChangeValueForKey:@"materials"];

    self->_materials = 0;

    [(SCNGeometry *)self didChangeValueForKey:@"materials"];
  }
}

- (id)presentationGeometry
{
  if ((*(self + 16) & 1) == 0)
  {
    v2 = [objc_alloc(objc_opt_class()) initPresentationGeometryWithGeometryRef:*(self + 1)];

    return v2;
  }

  return self;
}

+ (SCNGeometry)geometryWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels
{
  selfCopy = self;
  channelsCopy = channels;
  v42 = *MEMORY[0x277D85DE8];
  v7 = C3DGeometryCreate();
  Default = C3DMaterialCreateDefault(v8);
  C3DGeometryAppendMaterial(v7, Default);
  CFRelease(Default);
  v10 = *MEMORY[0x277CBECE8];
  v11 = [sources count];
  v12 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(v10, v11, MEMORY[0x277CBF128]);
  v14 = CFArrayCreateMutable(v10, [elements count], v12);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [sources countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(sources);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        [v19 _clearC3DCache];
        CFArrayAppendValue(Mutable, [v19 meshSource]);
      }

      v16 = [sources countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v16);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [elements countByEnumeratingWithState:&v32 objects:v40 count:{16, selfCopy}];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(elements);
        }

        CFArrayAppendValue(v14, [*(*(&v32 + 1) + 8 * j) meshElement]);
      }

      v21 = [elements countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  v24 = [sources count];
  v25 = &selfCopy - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = channelsCopy;
  __buildSourceChannels(channelsCopy, v24, elements, v25);
  v27 = C3DMeshCreateWithMeshSourcesAndMeshElements(Mutable, v14, v25);
  C3DGeometrySetMesh(v7, v27);
  CFRelease(Mutable);
  CFRelease(v14);
  CFRelease(v27);
  v28 = [[selfCopy alloc] initWithGeometryRef:v7];
  v28[5] = [v26 copy];
  if (v7)
  {
    CFRelease(v7);
  }

  return v28;
}

- (void)_setupGeometrySources
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  v5 = self->_sources;
  self->_sources = objc_alloc_init(MEMORY[0x277CBEB18]);
  Mesh = C3DGeometryGetMesh(self->_geometry);
  if (Mesh)
  {
    v7 = Mesh;
    v15 = -1;
    v8 = C3DMeshUsesSameChannelForAllSources(Mesh, &v15);
    if (v15)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v11 = C3DMeshCopyAllSources(v7, 0);
    v12 = [(__CFArray *)v11 count];
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        [(NSMutableArray *)self->_sources addObject:[SCNGeometrySource geometrySourceWithMeshSourceRef:[(__CFArray *)v11 objectAtIndexedSubscript:i]]];
        if ((v9 & 1) == 0)
        {
          [v10 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", C3DMeshGetChannelForSourceAtIndex(v7, i))}];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  self->_sourceChannels = [v10 copy];
  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (void)_setupGeometryElements
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Mesh = C3DGeometryGetMesh(self->_geometry);
  if (Mesh)
  {
    v6 = Mesh;
    v7 = self->_elements;
    self->_elements = objc_alloc_init(MEMORY[0x277CBEB18]);
    ElementsCount = C3DMeshGetElementsCount(v6);
    if (ElementsCount >= 1)
    {
      v9 = ElementsCount;
      for (i = 0; i != v9; ++i)
      {
        [(NSMutableArray *)self->_elements addObject:[SCNGeometryElement geometryElementWithMeshElementRef:C3DMeshGetElementAtIndex(v6, i, 0)]];
      }
    }
  }

  if (v4)
  {

    C3DSceneUnlock(v4);
  }
}

- (NSArray)geometrySources
{
  result = &self->_sources->super;
  if (!result)
  {
    [(SCNGeometry *)self _setupGeometrySources];
    return &self->_sources->super;
  }

  return result;
}

- (NSArray)geometrySourcesForSemantic:(SCNGeometrySourceSemantic)semantic
{
  v17 = *MEMORY[0x277D85DE8];
  geometrySources = [(SCNGeometry *)self geometrySources];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSArray *)geometrySources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(geometrySources);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v10 "semantic")])
        {
          [(NSArray *)v5 addObject:v10];
        }
      }

      v7 = [(NSArray *)geometrySources countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (![(NSArray *)v5 count])
  {
    if (C3DWasLinkedBeforeMajorOSYear2015())
    {
      return 0;
    }

    else
    {
      return MEMORY[0x277CBEBF8];
    }
  }

  return v5;
}

- (id)geometrySourceForSemantic:(id)semantic
{
  NSLog(&cfstr_Geometrysource_0.isa, a2);
  v5 = [(SCNGeometry *)self geometrySourcesForSemantic:semantic];
  result = [(NSArray *)v5 count];
  if (result)
  {

    return [(NSArray *)v5 objectAtIndex:0];
  }

  return result;
}

- (NSArray)geometryElements
{
  result = &self->_elements->super;
  if (!result)
  {
    [(SCNGeometry *)self _setupGeometryElements];
    return &self->_elements->super;
  }

  return result;
}

- (NSInteger)geometryElementCount
{
  geometryElements = [(SCNGeometry *)self geometryElements];

  return [(NSArray *)geometryElements count];
}

- (SCNGeometryElement)geometryElementAtIndex:(NSInteger)elementIndex
{
  geometryElements = [(SCNGeometry *)self geometryElements];
  if ([(NSArray *)geometryElements count]<= elementIndex)
  {
    return 0;
  }

  return [(NSArray *)geometryElements objectAtIndexedSubscript:elementIndex];
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  fixedBoundingBoxExtrema = self->_fixedBoundingBoxExtrema;
  if (fixedBoundingBoxExtrema && (*(self + 16) & 1) == 0)
  {
    if (min)
    {
      v8 = *&fixedBoundingBoxExtrema->x;
      min->z = fixedBoundingBoxExtrema->z;
      *&min->x = v8;
    }

    if (max)
    {
      v9 = self->_fixedBoundingBoxExtrema;
      v10 = *&v9[1].x;
      max->z = v9[1].z;
      *&max->x = v10;
    }

    return 1;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v13 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  if (![(SCNGeometry *)self geometryRef])
  {
    v11 = 0;
    if (!v13)
    {
      return v11;
    }

    goto LABEL_16;
  }

  v20 = 0.0;
  v19 = 0;
  v18 = 0.0;
  v17 = 0;
  v11 = C3DGetBoundingBox([(SCNGeometry *)self geometryRef], 1, &v19, &v17);
  if (min)
  {
    v14 = v20;
    *&min->x = v19;
    min->z = v14;
  }

  if (max)
  {
    v15 = v18;
    *&max->x = v17;
    max->z = v15;
  }

  if (v13)
  {
LABEL_16:
    C3DSceneUnlock(v13);
  }

  return v11;
}

- (void)setBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  if (*(self + 16))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setBoundingBoxMin:max:];
    }
  }

  else
  {
    fixedBoundingBoxExtrema = self->_fixedBoundingBoxExtrema;
    if (min && max)
    {
      if (fixedBoundingBoxExtrema)
      {
        v8 = SCNVector3EqualToVector3(*min, *fixedBoundingBoxExtrema);
        v10 = self->_fixedBoundingBoxExtrema;
        if (v8)
        {
          if (SCNVector3EqualToVector3(*max, v10[1]))
          {
            return;
          }

          v10 = self->_fixedBoundingBoxExtrema;
        }
      }

      else
      {
        v10 = malloc_type_malloc(0x18uLL, 0x10000403E1C8BA9uLL);
        self->_fixedBoundingBoxExtrema = v10;
      }

      v14 = *&min->x;
      v10->z = min->z;
      *&v10->x = v14;
      v15 = self->_fixedBoundingBoxExtrema;
      v16 = *&max->x;
      v15[1].z = max->z;
      *&v15[1].x = v16;
      *&v9 = *&min->x;
      DWORD2(v9) = LODWORD(min->z);
      v18 = v9;
      DWORD2(v9) = LODWORD(max->z);
      sceneRef = [(SCNGeometry *)self sceneRef:*&max->x];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __37__SCNGeometry_setBoundingBoxMin_max___block_invoke_2;
      v20[3] = &unk_2782FEFB8;
      v21 = v19;
      v22 = v17;
      selfCopy = self;
      v13 = v20;
    }

    else
    {
      if (!fixedBoundingBoxExtrema)
      {
        return;
      }

      free(fixedBoundingBoxExtrema);
      self->_fixedBoundingBoxExtrema = 0;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __37__SCNGeometry_setBoundingBoxMin_max___block_invoke;
      v24[3] = &unk_2782FB820;
      v24[4] = self;
      v13 = v24;
    }

    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v13];
  }
}

__n128 __37__SCNGeometry_setBoundingBoxMin_max___block_invoke_2(float32x4_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmulq_f32(vaddq_f32(v1, v2), v3);
  v5 = vmulq_f32(vsubq_f32(v2, v1), v3);
  v4.i32[3] = 1.0;
  v5.i32[3] = 0;
  v7[0] = v4;
  v7[1] = v5;
  C3DGeometrySetBoundingBox(*(a1[4].i64[0] + 8), v7);
  return result;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v8 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  v13 = 0uLL;
  if (!geometryRef || !C3DGetBoundingSphere(geometryRef, 1, &v13))
  {
    v11 = 0;
    if (!v8)
    {
      return v11;
    }

LABEL_12:
    C3DSceneUnlock(v8);
    return v11;
  }

  if (center)
  {
    v10 = *(&v13 + 2);
    *&center->x = v13;
    center->z = v10;
  }

  if (radius)
  {
    *radius = *(&v13 + 3);
  }

  v11 = 1;
  if (v8)
  {
    goto LABEL_12;
  }

  return v11;
}

- (BOOL)simdGetBoundingSphereCenter:(SCNGeometry *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  sceneRef = [(SCNGeometry *)self sceneRef];
  v8 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  v12 = 0uLL;
  if (!geometryRef || !C3DGetBoundingSphere(geometryRef, 1, &v12))
  {
    v10 = 0;
    if (!v8)
    {
      return v10;
    }

LABEL_12:
    C3DSceneUnlock(v8);
    return v10;
  }

  if (v5)
  {
    *v5 = v12;
  }

  if (v4)
  {
    *v4 = HIDWORD(v12);
  }

  v10 = 1;
  if (v8)
  {
    goto LABEL_12;
  }

  return v10;
}

- (id)getBoundingSphere
{
  v10 = 0;
  v8 = 0.0;
  v9 = 0;
  v2 = [(SCNGeometry *)self getBoundingSphereCenter:&v9 radius:&v8];
  result = 0;
  if (v2)
  {
    v4 = objc_alloc_init(SCNBoundingSphere);
    LODWORD(v6) = HIDWORD(v9);
    LODWORD(v5) = v9;
    LODWORD(v7) = v10;
    [(SCNBoundingSphere *)v4 setCenter:v5, v6, v7];
    [(SCNBoundingSphere *)v4 setRadius:v8];
    return v4;
  }

  return result;
}

- (id)getBoundingBox
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v2 = [(SCNGeometry *)self getBoundingBoxMin:&v13 max:&v11];
  result = 0;
  if (v2)
  {
    v4 = objc_alloc_init(SCNBoundingBox);
    LODWORD(v6) = HIDWORD(v13);
    LODWORD(v5) = v13;
    LODWORD(v7) = v14;
    [(SCNBoundingBox *)v4 setMin:v5, v6, v7];
    LODWORD(v9) = HIDWORD(v11);
    LODWORD(v8) = v11;
    LODWORD(v10) = v12;
    [(SCNBoundingBox *)v4 setMax:v8, v9, v10];
    return v4;
  }

  return result;
}

- (void)_setupObjCModelFrom:(id)from
{
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  -[SCNGeometry setLevelsOfDetail:](self, "setLevelsOfDetail:", [from levelsOfDetail]);
  -[SCNGeometry setMaterials:](self, "setMaterials:", [from materials]);
  -[SCNGeometry setEdgeCreasesSource:](self, "setEdgeCreasesSource:", [from edgeCreasesSource]);
  -[SCNGeometry setEdgeCreasesElement:](self, "setEdgeCreasesElement:", [from edgeCreasesElement]);
  -[SCNGeometry setSubdivisionLevel:](self, "setSubdivisionLevel:", [from subdivisionLevel]);
  -[SCNGeometry setWantsAdaptiveSubdivision:](self, "setWantsAdaptiveSubdivision:", [from wantsAdaptiveSubdivision]);
  -[SCNGeometry set_subdivisionSettings:](self, "set_subdivisionSettings:", [from _subdivisionSettings]);
  [(SCNGeometry *)self _copyAnimationsFrom:from];
  os_unfair_lock_lock(from + 38);
  v5 = *(from + 18);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SCNGeometry__setupObjCModelFrom___block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(from + 38);
  -[SCNGeometry setTessellator:](self, "setTessellator:", [from tessellator]);
  +[SCNTransaction commitImmediate];
}

- (void)_copyAttributesTo:(id)to
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v5 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys copy];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SCNGeometry__copyAttributesTo___block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = to;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];

  [to copyShaderModifiersAndLanguageVersionFrom:self];
}

void __33__SCNGeometry__copyAttributesTo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copy];
  [*(a1 + 32) _shadableSetValue:v5 forUndefinedKey:a2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  Copy = C3DGeometryCreateCopy([(SCNGeometry *)self geometryRef]);
  v5 = [objc_alloc(objc_opt_class()) initWithGeometryRef:Copy];
  if (Copy)
  {
    CFRelease(Copy);
  }

  [v5 _setupObjCModelFrom:self];
  [(SCNGeometry *)self _copyAttributesTo:v5];
  return v5;
}

- (id)mutableCopy
{
  MutableCopy = C3DGeometryCreateMutableCopy([(SCNGeometry *)self geometryRef]);
  v4 = [objc_alloc(objc_opt_class()) initWithGeometryRef:MutableCopy];
  [v4 _setupObjCModelFrom:self];
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v5 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys copy];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ____createCopy_block_invoke;
  v7[3] = &unk_2782FC900;
  v7[4] = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

- (id)interleavedCopy
{
  InterleavedCopy = C3DGeometryCreateInterleavedCopy([(SCNGeometry *)self geometryRef]);
  v4 = [objc_alloc(objc_opt_class()) initWithGeometryRef:InterleavedCopy];
  [v4 _setupObjCModelFrom:self];
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v5 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys copy];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ____createCopy_block_invoke;
  v7[3] = &unk_2782FC900;
  v7[4] = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
  if (InterleavedCopy)
  {
    CFRelease(InterleavedCopy);
  }

  return v4;
}

- (id)_renderableCopy
{
  RenderableCopy = C3DGeometryCreateRenderableCopy([(SCNGeometry *)self geometryRef]);
  v4 = [objc_alloc(objc_opt_class()) initWithGeometryRef:RenderableCopy];
  [v4 _setupObjCModelFrom:self];
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v5 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys copy];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ____createCopy_block_invoke;
  v7[3] = &unk_2782FC900;
  v7[4] = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
  if (RenderableCopy)
  {
    CFRelease(RenderableCopy);
  }

  return v4;
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNGeometry *)self __CFObject];

  return C3DGetScene(__CFObject);
}

- (id)scene
{
  result = [(SCNGeometry *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (void)_expand
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_materialWithName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  materials = [(SCNGeometry *)self materials];
  v5 = [(NSArray *)materials countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(materials);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)materials countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (SCNMaterial)materialWithName:(NSString *)name
{
  result = [(SCNGeometry *)self _materialWithName:name];
  if (*(self + 16))
  {

    return [(SCNMaterial *)result presentationMaterial];
  }

  return result;
}

- (unint64_t)countOfMaterials
{
  materials = self->_materials;
  if (!materials)
  {
    [(SCNGeometry *)self _expand];
    materials = self->_materials;
  }

  return [(NSMutableArray *)materials count];
}

- (id)objectInMaterialsAtIndex:(unint64_t)index
{
  materials = self->_materials;
  if (!materials)
  {
    [(SCNGeometry *)self _expand];
    materials = self->_materials;
  }

  return [(NSMutableArray *)materials objectAtIndex:index];
}

- (void)insertObject:(id)object inMaterialsAtIndex:(unint64_t)index
{
  if (!object)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNGeometry *)v7 insertObject:v8 inMaterialsAtIndex:v9, v10, v11, v12, v13, v14];
    }
  }

  materials = self->_materials;
  if (!materials)
  {
    [(SCNGeometry *)self _expand];
    materials = self->_materials;
  }

  [(NSMutableArray *)materials insertObject:object atIndex:index];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__SCNGeometry_insertObject_inMaterialsAtIndex___block_invoke;
  v17[3] = &unk_2782FB630;
  v17[4] = self;
  v17[5] = object;
  v17[6] = index;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v17];
}

void __47__SCNGeometry_insertObject_inMaterialsAtIndex___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) materialRef];
  v4 = *(a1 + 48);

  C3DGeometryInsertMaterialAtIndex(v2, v3, v4);
}

- (void)removeObjectFromMaterialsAtIndex:(unint64_t)index
{
  materials = self->_materials;
  if (!materials)
  {
    [(SCNGeometry *)self _expand];
    materials = self->_materials;
  }

  if ([(NSMutableArray *)materials count]<= index)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNGeometry *)v6 removeObjectFromMaterialsAtIndex:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  [(NSMutableArray *)self->_materials removeObjectAtIndex:index];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SCNGeometry_removeObjectFromMaterialsAtIndex___block_invoke;
  v15[3] = &unk_2782FB7D0;
  v15[4] = self;
  v15[5] = index;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v15];
}

- (void)replaceObjectInMaterialsAtIndex:(unint64_t)index withObject:(id)object
{
  if (!object)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNGeometry *)v7 insertObject:v8 inMaterialsAtIndex:v9, v10, v11, v12, v13, v14];
    }
  }

  if (!self->_materials)
  {
    [(SCNGeometry *)self _expand];
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__SCNGeometry_replaceObjectInMaterialsAtIndex_withObject___block_invoke;
  v16[3] = &unk_2782FB630;
  v16[4] = self;
  v16[5] = object;
  v16[6] = index;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
  [(NSMutableArray *)self->_materials replaceObjectAtIndex:index withObject:object];
}

void __58__SCNGeometry_replaceObjectInMaterialsAtIndex_withObject___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) materialRef];
  v4 = *(a1 + 48);

  C3DGeometryReplaceMaterialAtIndex(v2, v3, v4);
}

- (NSArray)materials
{
  if (!self->_materials)
  {
    [(SCNGeometry *)self _expand];
  }

  materials = self->_materials;
  if (*(self + 16))
  {
    v5 = [(NSMutableArray *)materials count];
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        -[NSArray addObject:](v4, "addObject:", [-[NSMutableArray objectAtIndex:](self->_materials objectAtIndex:{i), "presentationMaterial"}]);
      }
    }
  }

  else
  {
    v4 = [(NSMutableArray *)materials copy];
  }

  if ([(NSArray *)v4 count])
  {
    return v4;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)mutableMaterials
{
  result = self->_materials;
  if (!result)
  {
    [(SCNGeometry *)self _expand];
    return self->_materials;
  }

  return result;
}

- (id)_firstMaterial
{
  mutableMaterials = [(SCNGeometry *)self mutableMaterials];
  if (!mutableMaterials)
  {
    return 0;
  }

  v3 = mutableMaterials;
  if (![mutableMaterials count])
  {
    return 0;
  }

  return [v3 objectAtIndex:0];
}

- (SCNMaterial)firstMaterial
{
  result = [(SCNGeometry *)self _firstMaterial];
  if (*(self + 16))
  {

    return [(SCNMaterial *)result presentationMaterial];
  }

  return result;
}

- (void)setFirstMaterial:(SCNMaterial *)firstMaterial
{
  if (firstMaterial)
  {
    if ([-[SCNGeometry mutableMaterials](self "mutableMaterials")])
    {

      [(SCNGeometry *)self replaceObjectInMaterialsAtIndex:0 withObject:firstMaterial];
    }

    else
    {

      [(SCNGeometry *)self insertMaterial:firstMaterial atIndex:0];
    }
  }

  else
  {

    [(SCNGeometry *)self removeMaterialAtIndex:?];
  }
}

- (void)removeMaterial:(id)material
{
  v4 = [(NSArray *)[(SCNGeometry *)self materials] indexOfObject:material];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(SCNGeometry *)self removeObjectFromMaterialsAtIndex:v4];
  }
}

- (void)replaceMaterial:(id)material with:(id)with
{
  v6 = [(NSArray *)[(SCNGeometry *)self materials] indexOfObject:material];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(SCNGeometry *)self replaceObjectInMaterialsAtIndex:v6 withObject:with];
  }
}

- (void)removeAllMaterials
{
  [(NSMutableArray *)self->_materials removeAllObjects];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SCNGeometry_removeAllMaterials__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
  if (!self->_materials)
  {
    self->_materials = objc_alloc_init(MEMORY[0x277CBEB18]);
  }
}

void __33__SCNGeometry_removeAllMaterials__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) geometryRef];
  if (v1)
  {

    C3DGeometryRemoveAllMaterials(v1);
  }
}

- (void)setMaterials:(NSArray *)materials
{
  [(SCNGeometry *)self removeAllMaterials];
  v5 = [(NSArray *)materials count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      [(SCNGeometry *)self insertMaterial:[(NSArray *)materials objectAtIndex:i] atIndex:i];
    }
  }
}

- (int64_t)primitiveType
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Mesh = C3DGeometryGetMesh([(SCNGeometry *)self geometryRef]);
  Type = Mesh;
  if (Mesh)
  {
    if (C3DMeshGetElementsCount(Mesh) < 1)
    {
      Type = 0;
      if (!v4)
      {
        return Type;
      }

      goto LABEL_7;
    }

    ElementAtIndex = C3DMeshGetElementAtIndex(Type, 0, 0);
    Type = C3DMeshElementGetType(ElementAtIndex);
  }

  if (v4)
  {
LABEL_7:
    C3DSceneUnlock(v4);
  }

  return Type;
}

- (void)setPrimitiveType:(int64_t)type
{
  typeCopy = type;
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Mesh = C3DGeometryGetMesh([(SCNGeometry *)self geometryRef]);
  if (Mesh)
  {
    v8 = Mesh;
    if (C3DMeshGetElementsCount(Mesh) >= 1)
    {
      ElementsCount = C3DMeshGetElementsCount(v8);
      if (ElementsCount >= 1)
      {
        v10 = ElementsCount;
        for (i = 0; i != v10; ++i)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(v8, i, 0);
          C3DMeshElementSetType(ElementAtIndex, typeCopy);
        }
      }
    }
  }

  if (v6)
  {

    C3DSceneUnlock(v6);
  }
}

- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination remainingPath:(id *)remainingPath
{
  v10 = [key hasPrefix:@"materials["];
  if (v10)
  {
    v11 = [path substringWithRange:{10, objc_msgSend(path, "length") - 10}];
    v12 = [v11 rangeOfString:@"]"];
    if (v13 == 1 && (v14 = v12, v15 = [objc_msgSend(v11 substringWithRange:{0, v12), "intValue"}], v16 = -[SCNGeometry materials](self, "materials"), -[NSArray count](v16, "count") > v15))
    {
      v17 = [(NSArray *)v16 objectAtIndex:v15];
      if (remainingPath)
      {
        v18 = v14 + 12;
        if (v18 >= [path length])
        {
          v19 = 0;
        }

        else
        {
          v19 = [path substringWithRange:{v18, objc_msgSend(path, "length") - v18}];
        }

        *remainingPath = v19;
      }

      *destination = v17;
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v27 = *MEMORY[0x277D85DE8];
  if (![path length])
  {
    return 0;
  }

  v23 = 0;
  v24 = 0;
  SCNKitSplitKVCPath(path, &v24, &v23);
  v21 = 0;
  v22 = 0;
  if ([(SCNGeometry *)self parseSpecialKey:v24 withPath:path intoDestination:&v21 remainingPath:&v22])
  {
    v7 = [v21 copyAnimationChannelForKeyPath:v22 animation:animation];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count") + 1}];
      [v8 addObject:v24];
      [v8 addObjectsFromArray:v7];

      return v8;
    }

    return 0;
  }

  v21 = [(SCNGeometry *)self valueForKey:v24];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v9 = [v21 copyAnimationChannelForKeyPath:v23 animation:animation]) != 0)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count") + 1}];
    [v8 addObject:v24];
    [v8 addObjectsFromArray:v9];
  }

  else
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v10 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:path];
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v10)
      {
        TargetedBaseType = SCNAnimationGetTargetedBaseType(animation);
        if (TargetedBaseType)
        {
          v17 = SCNDefaultValueWithBaseType(TargetedBaseType, v13, v14, v15, v16);
          sceneRef = [(SCNGeometry *)self sceneRef];
          v19 = sceneRef;
          if (sceneRef)
          {
            C3DSceneLock(sceneRef);
            +[SCNTransaction begin];
            [SCNTransaction setImmediateMode:1];
            [(SCNGeometry *)self setValue:v17 forUndefinedKey:path];
            +[SCNTransaction commitImmediate];
            C3DSceneUnlock(v19);
          }

          else
          {
            +[SCNTransaction begin];
            [SCNTransaction setImmediateMode:1];
            [(SCNGeometry *)self setValue:v17 forUndefinedKey:path];
            +[SCNTransaction commitImmediate];
          }
        }

        else
        {
          v20 = scn_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            pathCopy = path;
            _os_log_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", buf, 0xCu);
          }
        }
      }
    }

    return SCNCreateAnimationChannelWithObjectAndPath(self, path);
  }

  return v8;
}

- (void)setLevelsOfDetail:(NSArray *)levelsOfDetail
{
  v5 = self->_levelsOfDetail;
  if (v5 != levelsOfDetail)
  {
    v10[10] = v3;
    v10[11] = v4;

    self->_levelsOfDetail = [(NSArray *)levelsOfDetail copy];
    v8 = [(NSArray *)levelsOfDetail sortedArrayUsingComparator:&__block_literal_global_82];
    sceneRef = [(SCNGeometry *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__SCNGeometry_setLevelsOfDetail___block_invoke_2;
    v10[3] = &unk_2782FC950;
    v10[4] = v8;
    v10[5] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
  }
}

uint64_t __33__SCNGeometry_setLevelsOfDetail___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 thresholdMode];
  [objc_msgSend(a2 "thresholdValue")];
  v7 = v6;
  [objc_msgSend(a3 "thresholdValue")];
  v9 = v7 > v8;
  if (!v5)
  {
    v9 = v7 < v8;
  }

  if (v9)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __33__SCNGeometry_setLevelsOfDetail___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SCNGeometry_setLevelsOfDetail___block_invoke_3;
  v4[3] = &unk_2782FB9F0;
  v4[4] = v2;
  [v3 enumerateObjectsUsingBlock:v4];
  C3DGeometrySetLOD(*(*(a1 + 40) + 8), v2);
}

uint64_t __33__SCNGeometry_setLevelsOfDetail___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 __CFObject];

  return [v2 addObject:v3];
}

- (void)setTessellator:(SCNGeometryTessellator *)tessellator
{
  v4 = self->_tessellator;
  if (v4 != tessellator)
  {
    [(SCNGeometryTessellator *)v4 removeClient:self];

    v6 = tessellator;
    self->_tessellator = v6;

    [(SCNGeometryTessellator *)v6 addClient:self];
  }
}

- (void)set_subdivisionSettings:(id)settings
{
  settingsCopy = settings;
  if (settings != *&self->_subdivisionSettings)
  {
    self->_subdivisionSettings = settings;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__SCNGeometry_set_subdivisionSettings___block_invoke;
    v6[3] = &unk_2782FF898;
    v6[4] = self;
    settingsCopy2 = settings;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

void __39__SCNGeometry_set_subdivisionSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  if (v2)
  {
    v3 = *(a1 + 40);

    C3DGeometryOsdSetSubdivisionSettings(v2, v3);
  }
}

- (void)setSubdivisionLevel:(NSUInteger)subdivisionLevel
{
  if (subdivisionLevel <= 0x7FFFFFFFFFFFFFFELL)
  {
    v9[10] = v3;
    v9[11] = v4;
    if (self->_subdivisionLevel != subdivisionLevel)
    {
      self->_subdivisionLevel = subdivisionLevel;
      tessellator = self->_tessellator;
      if (tessellator)
      {
        [(SCNGeometryTessellator *)tessellator tessellatorValueDidChangeForClient:self];
      }

      sceneRef = [(SCNGeometry *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __35__SCNGeometry_setSubdivisionLevel___block_invoke;
      v9[3] = &unk_2782FB7D0;
      v9[4] = self;
      v9[5] = subdivisionLevel;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
    }
  }
}

void __35__SCNGeometry_setSubdivisionLevel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  if (v2)
  {
    v3 = *(a1 + 40);

    C3DGeometryOsdSetSubdivisionLevel(v2, v3);
  }
}

- (void)setWantsAdaptiveSubdivision:(BOOL)wantsAdaptiveSubdivision
{
  if (self->_subdivisionIsAdaptive != wantsAdaptiveSubdivision)
  {
    v10 = v3;
    v11 = v4;
    self->_subdivisionIsAdaptive = wantsAdaptiveSubdivision;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SCNGeometry_setWantsAdaptiveSubdivision___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = wantsAdaptiveSubdivision;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __43__SCNGeometry_setWantsAdaptiveSubdivision___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  if (v2)
  {
    v3 = *(a1 + 40);

    C3DGeometryOsdSetWantsAdaptiveSubdivision(v2, v3);
  }
}

- (void)setEdgeCreasesElement:(SCNGeometryElement *)edgeCreasesElement
{
  v5 = self->_edgeCreasesElement;
  if (v5 != edgeCreasesElement)
  {
    v10[7] = v3;
    v10[8] = v4;
    if (!edgeCreasesElement)
    {
LABEL_5:

      self->_edgeCreasesElement = edgeCreasesElement;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __37__SCNGeometry_setEdgeCreasesElement___block_invoke;
      v10[3] = &unk_2782FB820;
      v10[4] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
      return;
    }

    if ([(SCNGeometryElement *)edgeCreasesElement primitiveType]== SCNGeometryPrimitiveTypeLine)
    {
      v5 = self->_edgeCreasesElement;
      goto LABEL_5;
    }

    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setEdgeCreasesElement:];
    }
  }
}

void __37__SCNGeometry_setEdgeCreasesElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 112) meshElement];

    C3DGeometryOsdSetEdgeCreasesElement(v3, v4);
  }
}

- (void)setEdgeCreasesSource:(SCNGeometrySource *)edgeCreasesSource
{
  v5 = self->_edgeCreasesSource;
  if (v5 != edgeCreasesSource)
  {
    v10[7] = v3;
    v10[8] = v4;
    if (!edgeCreasesSource)
    {
LABEL_5:

      self->_edgeCreasesSource = edgeCreasesSource;
      sceneRef = [(SCNGeometry *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __36__SCNGeometry_setEdgeCreasesSource___block_invoke;
      v10[3] = &unk_2782FB820;
      v10[4] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
      return;
    }

    if ([(NSString *)[(SCNGeometrySource *)edgeCreasesSource semantic] isEqualToString:@"kGeometrySourceSemanticEdgeCrease"])
    {
      v5 = self->_edgeCreasesSource;
      goto LABEL_5;
    }

    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setEdgeCreasesSource:];
    }
  }
}

void __36__SCNGeometry_setEdgeCreasesSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 104) meshSource];

    C3DGeometryOsdSetEdgeCreasesSource(v3, v4);
  }
}

- (__C3DMaterial)materialRefCreateIfNeeded
{
  geometryRef = [(SCNGeometry *)self geometryRef];
  OverrideMaterial = C3DGeometryGetOverrideMaterial(geometryRef);
  if (!OverrideMaterial)
  {
    if (C3DGeometryGetMaterialsCount(geometryRef) >= 1 && (MaterialAtIndex = C3DGeometryGetMaterialAtIndex(geometryRef, 0)) != 0)
    {
      Copy = C3DMaterialCreateCopy(MaterialAtIndex);
    }

    else
    {
      Copy = C3DMaterialCreate();
    }

    OverrideMaterial = Copy;
    C3DGeometrySetOverrideMaterial(geometryRef, Copy);
    CFRelease(OverrideMaterial);
  }

  return OverrideMaterial;
}

- (__C3DMaterial)materialRef
{
  geometryRef = [(SCNGeometry *)self geometryRef];

  return C3DGeometryGetOverrideMaterial(geometryRef);
}

- (void)_unifyNormals
{
  geometryRef = [(SCNGeometry *)self geometryRef];
  if (geometryRef)
  {
    Mesh = C3DGeometryGetMesh(geometryRef);

    C3DMeshUnifyNormals(Mesh, Mesh, 1, 0);
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if ([key hasPrefix:@"materials["])
  {
    v7 = 0;
    if ([(SCNGeometry *)self parseSpecialKey:key withPath:key intoDestination:&v7 remainingPath:0]&& v7)
    {
      if (value)
      {
        [SCNGeometry replaceMaterial:"replaceMaterial:with:" with:?];
      }

      else
      {
        [(SCNGeometry *)self removeMaterial:?];
      }
    }
  }

  else
  {

    [(SCNGeometry *)self _shadableSetValue:value forUndefinedKey:key];
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v7 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    ValueForKey = C3DEntityGetValueForKey(self->_geometry, key);
    v5 = ValueForKey;
    if (ValueForKey)
    {
      Bytes = C3DValueGetBytes(ValueForKey);
      Type = C3DValueGetType(v5);
      v5 = SCNNSValueFromTypedBytes(Bytes, Type, v11, v12, v13, v14);
    }

    if (v7)
    {
      C3DSceneUnlock(v7);
    }

    if (v5)
    {
      return v5;
    }

    v15 = C3DCFTypeCopyModelInfoAtPath(self->_geometry, key, 0);
    if (v15)
    {
      v16 = v15;
      if (C3DModelTargetGetTargetAddress(v15))
      {
        TargetAddress = C3DModelTargetGetTargetAddress(v16);
        BaseType = C3DModelTargetGetBaseType(v16);
        v23 = SCNNSValueFromTypedBytes(TargetAddress, BaseType, v19, v20, v21, v22);
        CFRelease(v16);
        return v23;
      }

      CFRelease(v16);
    }
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  SCNKitSplitKVCPath(key, &v27, &v26);
  if ([(SCNGeometry *)self parseSpecialKey:v27 withPath:key intoDestination:&v28 remainingPath:0])
  {
    return v28;
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v25 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:key];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v25;
}

- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key
{
  if ((*(self + 16) & 1) == 0)
  {
    keyCopy = key;
    if ([key hasPrefix:@"shaderModifiers."])
    {
      keyCopy = [keyCopy substringFromIndex:16];
    }

    os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
    v7 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      [(SCNGeometry *)self willChangeValueForKey:@"customMaterialProperties"];
      [(SCNGeometry *)self willChangeValueForKey:@"customMaterialAttributes"];
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
    }

    valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
    if (value)
    {
      if (!valuesForUndefinedKeys)
      {
        valuesForUndefinedKeys = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_valuesForUndefinedKeys = valuesForUndefinedKeys;
      }

      [(NSMutableDictionary *)valuesForUndefinedKeys setObject:value forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)valuesForUndefinedKeys removeObjectForKey:keyCopy];
    }

    os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
    if ((isKindOfClass & 1) == 0)
    {
      [(SCNGeometry *)self didChangeValueForKey:@"customMaterialProperties"];
      [(SCNGeometry *)self didChangeValueForKey:@"customMaterialAttributes"];
    }

    __CFObject = [(SCNGeometry *)self __CFObject];
    objc_opt_class();
    v12 = keyCopy;
    if (objc_opt_isKindOfClass())
    {
      [v7 unlinkCustomPropertyWithParent:self];
      v12 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [value linkCustomPropertyWithParent:self andCustomName:keyCopy];
      effectSlot = [value effectSlot];
      if (effectSlot)
      {
        v14 = CFRetain(effectSlot);
        v12 = 0;
LABEL_28:
        sceneRef = [(SCNGeometry *)self sceneRef];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__SCNGeometry__shadableSetValue_forUndefinedKey___block_invoke_2;
        v20[3] = &unk_2782FED90;
        v20[6] = v14;
        v20[7] = __CFObject;
        v20[4] = keyCopy;
        v20[5] = value;
        [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v12 applyBlock:v20];
        return;
      }

      v12 = 0;
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

    v14 = SCNCopyValueFromObjCProperty(self, keyCopy);
    if (!v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v22[0] = C3DColor4FromRGBCFColor(value, 0);
        v22[1] = v19;
        v14 = C3DValueCreate(10, 1);
        C3DValueInitFrom(v14, v22);
        if (!v14)
        {
          goto LABEL_28;
        }

LABEL_24:
        if (!v7)
        {
          Type = C3DValueGetType(v14);
          Default = C3DValueCreateDefault(Type);
          sceneRef2 = [(SCNGeometry *)self sceneRef];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __49__SCNGeometry__shadableSetValue_forUndefinedKey___block_invoke;
          v21[3] = &unk_2782FE238;
          v21[4] = keyCopy;
          v21[5] = __CFObject;
          v21[6] = Default;
          [SCNTransaction postCommandWithContext:sceneRef2 object:self applyBlock:v21];
        }

        goto LABEL_28;
      }

      v14 = SCNCopyValueFromObjCValue(value);
    }

    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v10 = scn_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SCNGeometry _shadableSetValue:forUndefinedKey:];
  }
}

void __49__SCNGeometry__shadableSetValue_forUndefinedKey___block_invoke(uint64_t a1)
{
  C3DEntitySetValueForKey(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __49__SCNGeometry__shadableSetValue_forUndefinedKey___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    C3DEntitySetValueForKey(*(a1 + 56), *(a1 + 32), v2);
    v3 = *(a1 + 48);

    CFRelease(v3);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {

      C3DEntitySetValueForKey(v4, v5, v6);
    }

    else
    {

      C3DEntityResetValueForKey(v4, v5);
    }
  }
}

- (id)customMaterialPropertyNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNGeometry_customMaterialPropertyNames__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __42__SCNGeometry_customMaterialPropertyNames__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

- (id)customMaterialProperties
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNGeometry_customMaterialProperties__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __39__SCNGeometry_customMaterialProperties__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a3];
  }

  return result;
}

- (id)customMaterialAttributeNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNGeometry_customMaterialAttributeNames__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __43__SCNGeometry_customMaterialAttributeNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = _isValidCustomPropertyType(a3);
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

- (id)customMaterialAttributes
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNGeometry_customMaterialAttributes__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __39__SCNGeometry_customMaterialAttributes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = _isValidCustomPropertyType(a3);
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a3];
  }

  return result;
}

- (void)_setupShadableHelperIfNeeded
{
  if (!self->_shadableHelper)
  {
    self->_shadableHelper = [[SCNShadableHelper alloc] initWithOwner:self];
  }
}

- (void)setShaderModifiers:(id)modifiers
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setShaderModifiers:];
    }
  }

  else
  {
    if (modifiers)
    {
      [(SCNGeometry *)self _setupShadableHelperIfNeeded];
    }

    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setShaderModifiers:modifiers];
  }
}

- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry copyShaderModifiersAndLanguageVersionFrom:];
    }
  }

  else
  {
    if ([from shaderModifiers])
    {
      [(SCNGeometry *)self _setupShadableHelperIfNeeded];
    }

    __shadableHelper = [from __shadableHelper];
    [(SCNShadableHelper *)self->_shadableHelper copyModifiersFrom:__shadableHelper];
    minimumLanguageVersion = [__shadableHelper minimumLanguageVersion];
    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setMinimumLanguageVersion:minimumLanguageVersion];
  }
}

- (void)setMinimumLanguageVersion:(id)version
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setMinimumLanguageVersion:];
    }
  }

  else
  {
    if (version)
    {
      [(SCNGeometry *)self _setupShadableHelperIfNeeded];
    }

    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setMinimumLanguageVersion:version];
  }
}

- (void)handleBindingOfSymbol:(id)symbol usingBlock:(id)block
{
  [(SCNGeometry *)self _setupShadableHelperIfNeeded];
  shadableHelper = self->_shadableHelper;

  [(SCNShadableHelper *)shadableHelper handleBindingOfSymbol:symbol usingBlock:block];
}

- (void)handleUnbindingOfSymbol:(id)symbol usingBlock:(id)block
{
  [(SCNGeometry *)self _setupShadableHelperIfNeeded];
  shadableHelper = self->_shadableHelper;

  [(SCNShadableHelper *)shadableHelper handleUnbindingOfSymbol:symbol usingBlock:block];
}

- (void)setProgram:(id)program
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometry setProgram:];
    }
  }

  else
  {
    if (program)
    {
      [(SCNGeometry *)self _setupShadableHelperIfNeeded];
      shadableHelper = self->_shadableHelper;
      programCopy = program;
    }

    else
    {
      shadableHelper = self->_shadableHelper;
      programCopy = 0;
    }

    [(SCNShadableHelper *)shadableHelper setProgram:programCopy];
  }
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNGeometry *)self sceneRef];
  if (result)
  {

    return C3DSceneGetAnimationManager(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v7 = [-[SCNOrderedDictionary objectForKey:](self->_animations objectForKey:{key), "animation"}] == animation;
  if (v7)
  {
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    __CFObject = [(SCNGeometry *)self __CFObject];
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v9 __removeAnimation:v10 forKey:v11, v12, v13, v14, v15, v16];
      }
    }

    C3DEntityRemoveAnimationForKey(__CFObject, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v7;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      keyCopy = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (!animations)
    {
      animations = objc_alloc_init(SCNOrderedDictionary);
      self->_animations = animations;
    }

    [(SCNOrderedDictionary *)animations setObject:player forKey:keyCopy];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNGeometry *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SCNGeometry_addAnimationPlayer_forKey___block_invoke;
    v10[3] = &unk_2782FC928;
    v10[4] = player;
    v10[5] = self;
    v10[6] = keyCopy;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem addAnimationPlayer:forKey:];
    }
  }
}

void __41__SCNGeometry_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 56));
    [*(*(a1 + 40) + 64) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 56);

    os_unfair_lock_unlock(v2);
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      keyCopy = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = [SCNAnimation animationWithCAAnimation:animationCopy];
    }

    v7 = [SCNAnimationPlayer animationPlayerWithSCNAnimation:animationCopy];
    [(SCNGeometry *)self addAnimationPlayer:v7 forKey:keyCopy];

    [(SCNAnimationPlayer *)v7 play];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem addAnimation:forKey:];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SCNGeometry_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SCNGeometry_removeAllAnimationsWithBlendOutDuration___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = duration;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNGeometry *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SCNGeometry_removeAnimationForKey___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = key;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNGeometry *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SCNGeometry_removeAnimationForKey_blendOutDuration___block_invoke;
    v8[3] = &unk_2782FB630;
    v8[4] = self;
    v8[5] = key;
    *&v8[6] = duration;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  allKeys = [(SCNOrderedDictionary *)self->_animations allKeys];
  os_unfair_lock_unlock(&self->_animationsLock);
  if ([(NSArray *)allKeys count])
  {
    return allKeys;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)_syncObjCAnimations
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  __CFObject = [(SCNGeometry *)self __CFObject];
  if (__CFObject)
  {
    v6 = __CFObject;
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v7 _syncObjCAnimations:v8];
      }
    }

    Animations = C3DEntityGetAnimations(v6);
    if (Animations)
    {
      v16 = Animations;
      os_unfair_lock_lock(&self->_animationsLock);
      C3DOrderedDictionaryApplyFunction(v16, SCNConvertC3DAnimationDictionaryFunc, self->_animations);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (id)animationForKey:(id)key
{
  v3 = [(SCNGeometry *)self _scnAnimationForKey:key];
  v4 = MEMORY[0x277CD9DF8];

  return [v4 animationWithSCNAnimation:v3];
}

- (id)_scnAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = [-[SCNOrderedDictionary objectForKey:](animations objectForKey:{keyCopy), "animation"}];
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  animationKeys = [from animationKeys];
  v6 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(animationKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(from animationPlayerForKey:{v10), "copy"}];
        [(SCNGeometry *)self addAnimationPlayer:v11 forKey:v10];
      }

      v7 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = [(SCNOrderedDictionary *)animations objectForKey:keyCopy];
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  __CFObject = [(SCNGeometry *)self __CFObject];
  if (__CFObject)
  {
    v10 = __CFObject;
    animationManager = [(SCNGeometry *)self animationManager];
    if (animationManager)
    {
      v12 = animationManager;
      v13 = CACurrentMediaTime();

      C3DAnimationManagerPauseAnimationForKey(v12, v10, key, animationCopy, nodeCopy, v13);
    }
  }
}

- (void)pauseAnimationForKey:(id)key
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNGeometry_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)key
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SCNGeometry_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setSpeed:(double)speed forAnimationKey:(id)key
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", key];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SCNGeometry_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = key;
  *&v9[6] = speed;
  [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v9];
}

void __40__SCNGeometry_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) animationManager];
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);

      C3DAnimationManagerChangeSpeedOfAnimationForKey(v4, v3, v5, v6);
    }
  }
}

- (BOOL)isAnimationForKeyPaused:(id)paused
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNGeometry *)self __CFObject];
  if (__CFObject)
  {
    v8 = __CFObject;
    animationManager = [(SCNGeometry *)self animationManager];
    if (animationManager)
    {
      IsPaused = C3DAnimationManagerGetAnimationForKeyIsPaused(animationManager, v8, paused);
      if (!v6)
      {
        return IsPaused;
      }

      goto LABEL_8;
    }
  }

  IsPaused = 0;
  if (v6)
  {
LABEL_8:
    C3DSceneUnlock(v6);
  }

  return IsPaused;
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v16[15] = v6;
    v16[16] = v7;
    v13 = objc_alloc_init(C3DBinding);
    [(C3DBinding *)v13 setSourceObject:object];
    [(C3DBinding *)v13 setKeyPathDst:path];
    [(C3DBinding *)v13 setKeyPathSrc:keyPath];
    [(C3DBinding *)v13 setOptions:options];
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_bindings = bindings;
    }

    [(NSMutableDictionary *)bindings setValue:v13 forKey:path];

    sceneRef = [(SCNGeometry *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SCNGeometry_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = object;
    v16[6] = path;
    v16[7] = keyPath;
    v16[8] = options;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
  }
}

void __63__SCNGeometry_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = objc_alloc_init(C3DBinding);
  -[C3DBinding setSourceObject:](v3, "setSourceObject:", [*(a1 + 40) __CFObject]);
  [(C3DBinding *)v3 setKeyPathDst:*(a1 + 48)];
  [(C3DBinding *)v3 setKeyPathSrc:*(a1 + 56)];
  [(C3DBinding *)v3 setOptions:*(a1 + 64)];
  C3DEntityAddBinding(v2, v3);
}

- (void)unbindAnimatablePath:(id)path
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNGeometry_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = path;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __36__SCNGeometry_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  sceneRef = [(SCNGeometry *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNGeometry_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __32__SCNGeometry_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (void)_customEncodingOfSCNGeometry:(id)geometry
{
  if (!self->_materials)
  {
    [(SCNGeometry *)self _expand];
  }

  fixedBoundingBoxExtrema = self->_fixedBoundingBoxExtrema;
  if (fixedBoundingBoxExtrema)
  {
    *&v3 = fixedBoundingBoxExtrema->x;
    *&v4 = fixedBoundingBoxExtrema->y;
    *&v5 = fixedBoundingBoxExtrema->z;
    [geometry encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v3, v4, v5), @"fixedBoundingBoxExtrema[0]"}];
    v9 = self->_fixedBoundingBoxExtrema;
    *&v10 = v9[1].x;
    *&v11 = v9[1].y;
    *&v12 = v9[1].z;
    [geometry encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v10, v11, v12), @"fixedBoundingBoxExtrema[1]"}];
  }

  TypeID = C3DGeometryGetTypeID();
  if (TypeID == CFGetTypeID(self->_geometry))
  {
    v14 = [(SCNGeometry *)self geometrySourcesForSemantic:@"kGeometrySourceSemanticVertex"];
    if (v14)
    {
      [geometry encodeObject:v14 forKey:@"kGeometrySourceSemanticVertex"];
    }

    v15 = [(SCNGeometry *)self geometrySourcesForSemantic:@"kGeometrySourceSemanticNormal"];
    if (v15)
    {
      [geometry encodeObject:v15 forKey:@"kGeometrySourceSemanticNormal"];
    }

    v16 = [(SCNGeometry *)self geometrySourcesForSemantic:@"kGeometrySourceSemanticColor"];
    if (v16)
    {
      [geometry encodeObject:v16 forKey:@"kGeometrySourceSemanticColor"];
    }

    v17 = [(SCNGeometry *)self geometrySourcesForSemantic:@"kGeometrySourceSemanticTexcoord"];
    if (v17)
    {
      [geometry encodeObject:v17 forKey:@"kGeometrySourceSemanticTexcoord"];
    }

    v18 = [(SCNGeometry *)self geometrySourcesForSemantic:@"kGeometrySourceSemanticTangent"];
    if (v18)
    {
      [geometry encodeObject:v18 forKey:@"kGeometrySourceSemanticTangent"];
    }

    geometryElements = [(SCNGeometry *)self geometryElements];
    if ([(NSArray *)geometryElements count])
    {
      [geometry encodeObject:geometryElements forKey:@"elements"];
    }

    sourceChannels = self->_sourceChannels;
    if (sourceChannels)
    {
      [geometry encodeObject:sourceChannels forKey:@"sourceChannels"];
    }
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (valuesForUndefinedKeys)
  {
    [geometry encodeObject:valuesForUndefinedKeys forKey:@"valuesForUndefinedKeys"];
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)_customDecodingOfSCNGeometry:(id)geometry
{
  v55 = *MEMORY[0x277D85DE8];
  if ([geometry containsValueForKey:@"fixedBoundingBoxExtrema[0]"])
  {
    [objc_msgSend(geometry decodeObjectOfClass:objc_opt_class() forKey:{@"fixedBoundingBoxExtrema[0]", "SCNVector3Value"}];
    v53[0] = v5;
    v53[1] = v6;
    v53[2] = v7;
    [objc_msgSend(geometry decodeObjectOfClass:objc_opt_class() forKey:{@"fixedBoundingBoxExtrema[1]", "SCNVector3Value"}];
    v54[0] = v8;
    v54[1] = v9;
    v54[2] = v10;
    [(SCNGeometry *)self setBoundingBoxMin:v53 max:v54];
  }

  TypeID = C3DGeometryGetTypeID();
  if (TypeID == CFGetTypeID(self->_geometry))
  {
    array = [MEMORY[0x277CBEB18] array];
    v13 = [geometry scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"elements"];
    v14 = objc_opt_class();
    v15 = [geometry scn_decodeArrayOfObjectsOfClass:v14 forKey:@"kGeometrySourceSemanticVertex"];
    if (v15)
    {
      [array addObjectsFromArray:v15];
    }

    v16 = [geometry scn_decodeArrayOfObjectsOfClass:v14 forKey:@"kGeometrySourceSemanticNormal"];
    if (v16)
    {
      [array addObjectsFromArray:v16];
    }

    v17 = [geometry scn_decodeArrayOfObjectsOfClass:v14 forKey:@"kGeometrySourceSemanticColor"];
    if (v17)
    {
      [array addObjectsFromArray:v17];
    }

    v18 = [geometry scn_decodeArrayOfObjectsOfClass:v14 forKey:@"kGeometrySourceSemanticTexcoord"];
    if (v18)
    {
      [array addObjectsFromArray:v18];
    }

    v19 = [geometry scn_decodeArrayOfObjectsOfClass:v14 forKey:@"kGeometrySourceSemanticTangent"];
    if (v19)
    {
      [array addObjectsFromArray:v19];
    }

    v20 = *MEMORY[0x277CBECE8];
    v21 = [array count];
    v22 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(v20, v21, MEMORY[0x277CBF128]);
    v24 = CFArrayCreateMutable(v20, [v13 count], v22);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v25 = [array countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      while (2)
      {
        v28 = 0;
        do
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(array);
          }

          meshSource = [*(*(&v47 + 1) + 8 * v28) meshSource];
          if (!meshSource)
          {
            v39 = scn_default_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [SCNGeometry _customDecodingOfSCNGeometry:];
            }

LABEL_37:
            CFRelease(Mutable);
            CFRelease(v24);
            return;
          }

          CFArrayAppendValue(Mutable, meshSource);
          ++v28;
        }

        while (v26 != v28);
        v26 = [array countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v44;
      while (2)
      {
        v33 = 0;
        do
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v13);
          }

          meshElement = [*(*(&v43 + 1) + 8 * v33) meshElement];
          if (!meshElement)
          {
            v40 = scn_default_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [SCNGeometry _customDecodingOfSCNGeometry:];
            }

            goto LABEL_37;
          }

          CFArrayAppendValue(v24, meshElement);
          ++v33;
        }

        while (v31 != v33);
        v31 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    self->_sourceChannels = [geometry scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"sourceChannels"];
    v35 = [array count];
    v36 = &v42[-1] - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    __buildSourceChannels(self->_sourceChannels, v35, v13, v36);
    v37 = C3DMeshCreateWithMeshSourcesAndMeshElements(Mutable, v24, v36);
    C3DGeometrySetMesh(self->_geometry, v37);
    CFRelease(Mutable);
    CFRelease(v24);
    CFRelease(v37);
  }

  v38 = [geometry decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"valuesForUndefinedKeys"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __44__SCNGeometry__customDecodingOfSCNGeometry___block_invoke;
    v42[3] = &unk_2782FC900;
    v42[4] = self;
    [v38 enumerateKeysAndObjectsUsingBlock:v42];
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 16))
  {
    [(SCNGeometry *)self _syncObjCModel];
  }

  [(SCNGeometry *)self _customEncodingOfSCNGeometry:coder];
  materials = self->_materials;
  if (materials)
  {
    [coder encodeObject:materials forKey:@"materials"];
  }

  levelsOfDetail = self->_levelsOfDetail;
  if (levelsOfDetail)
  {
    [coder encodeObject:levelsOfDetail forKey:@"levelsOfDetail"];
  }

  [coder encodeInteger:self->_subdivisionLevel forKey:@"subdivisionLevel"];
  [coder encodeBool:self->_subdivisionIsAdaptive forKey:@"wantsAdaptiveSubdivision"];
  edgeCreasesSource = self->_edgeCreasesSource;
  if (edgeCreasesSource)
  {
    [coder encodeObject:edgeCreasesSource forKey:@"edgeCreasesSource"];
  }

  edgeCreasesElement = self->_edgeCreasesElement;
  if (edgeCreasesElement)
  {
    [coder encodeObject:edgeCreasesElement forKey:@"edgeCreasesElement"];
  }

  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    [coder encodeObject:shadableHelper forKey:@"shadableHelper"];
  }

  [coder encodeBytes:&self->_subdivisionSettings length:4 forKey:@"subdivisionSettings"];
  name = self->_name;
  if (name)
  {
    [coder encodeObject:name forKey:@"name"];
  }

  SCNEncodeEntity(coder, self);
  SCNEncodeAnimations(coder, self);
  tessellator = self->_tessellator;

  [coder encodeObject:tessellator forKey:@"tessellator"];
}

- (SCNGeometry)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = SCNGeometry;
  v4 = [(SCNGeometry *)&v11 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    __createCFObject = [v4 __createCFObject];
    *(v4 + 1) = __createCFObject;
    if (__createCFObject)
    {
      C3DEntitySetObjCWrapper(__createCFObject, v4);
    }

    [v4 _syncObjCModel];
    *(v4 + 38) = 0;
    [v4 _customDecodingOfSCNGeometry:coder];
    [v4 setMaterials:{objc_msgSend(coder, "scn_decodeArrayOfObjectsOfClass:containingNestedContainersForKey:", objc_opt_class(), @"materials"}];
    [v4 setLevelsOfDetail:{objc_msgSend(coder, "scn_decodeArrayOfObjectsOfClass:forKey:", objc_opt_class(), @"levelsOfDetail"}];
    [v4 setSubdivisionLevel:{objc_msgSend(coder, "decodeIntegerForKey:", @"subdivisionLevel"}];
    [v4 setWantsAdaptiveSubdivision:{objc_msgSend(coder, "decodeBoolForKey:", @"wantsAdaptiveSubdivision"}];
    [v4 setEdgeCreasesSource:{objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"edgeCreasesSource"}];
    [v4 setEdgeCreasesElement:{objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"edgeCreasesElement"}];
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"shadableHelper"];
    *(v4 + 15) = v7;
    if ([v7 owner] != v4)
    {

      *(v4 + 15) = 0;
    }

    v10 = 0;
    v8 = [coder decodeBytesForKey:@"subdivisionSettings" returnedLength:&v10];
    if (v10 == 4)
    {
      *(v4 + 97) = *v8;
    }

    [v4 setName:{objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"name"}];
    *(v4 + 14) = 0;
    SCNDecodeEntity(coder, v4);
    SCNDecodeAnimations(coder, v4);
    [v4 setTessellator:{objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"tessellator"}];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (id)_geometryByUnifyingNormalsWithCreaseThreshold:(double)threshold
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  geometryElements = [(SCNGeometry *)self geometryElements];
  v6 = [(NSArray *)geometryElements countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(geometryElements);
        }

        if ([*(*(&v22 + 1) + 8 * v9) primitiveType] == 4)
        {
          v15 = [(SCNGeometry *)self copy];
          geometryRef = [(SCNGeometry *)v15 geometryRef];
          if (geometryRef)
          {
            v17 = geometryRef;
            Mesh = C3DGeometryGetMesh(geometryRef);
            Copy = C3DMeshCreateCopy(Mesh);
            C3DMeshUnifyNormals(Copy, Copy, 1, 1);
            C3DGeometrySetMesh(v17, Copy);
            if (Copy)
            {
              CFRelease(Copy);
            }
          }

          return v15;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)geometryElements countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  geometrySources = [(SCNGeometry *)self geometrySources];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](geometrySources, "count") - 1}];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__SCNGeometry_SCNUtils___geometryByUnifyingNormalsWithCreaseThreshold___block_invoke;
  v21[3] = &unk_2782FB9F0;
  v21[4] = v11;
  [(NSArray *)geometrySources enumerateObjectsUsingBlock:v21];
  v12 = [SCNGeometry geometryWithSources:v11 elements:[(SCNGeometry *)self geometryElements]];
  v13 = [MEMORY[0x277CD7B00] meshWithSCNGeometry:v12];
  *&v14 = threshold;
  [v13 addNormalsWithAttributeNamed:@"normals" creaseThreshold:v14];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  v15 = [SCNGeometry geometryWithMDLMesh:v13];
  [(SCNGeometry *)v15 _setupObjCModelFrom:self];
  [(SCNGeometry *)v15 setName:[(SCNGeometry *)self name]];
  +[SCNTransaction commitImmediate];
  return v15;
}

uint64_t __71__SCNGeometry_SCNUtils___geometryByUnifyingNormalsWithCreaseThreshold___block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "semantic")];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

- (id)_geometryByAddingSourcesOfSkinner:(id)skinner
{
  skinnerRef = [skinner skinnerRef];
  if (C3DSkinnerHasOnlyOneJoint(skinnerRef))
  {
    v5 = [(SCNGeometry *)self copy];

    return v5;
  }

  else
  {
    geometryRef = [(SCNGeometry *)self geometryRef];
    Mesh = C3DGeometryGetMesh(geometryRef);
    v9 = C3DMeshCreate();
    __C3DSkinnerPrepareSkinnedMesh(skinnerRef, Mesh, v9, geometryRef);
    Copy = C3DGeometryCreateCopy(geometryRef);
    C3DGeometrySetMesh(Copy, v9);
    CFRelease(v9);
    v11 = [SCNGeometry geometryWithGeometryRef:Copy];
    [(SCNGeometry *)v11 setName:[(SCNGeometry *)self name]];
    [(SCNGeometry *)v11 setMaterials:[(SCNGeometry *)self materials]];
    return v11;
  }
}

- (id)_geometryByRemovingSkinnerSources
{
  geometryRef = [(SCNGeometry *)self geometryRef];
  Mesh = C3DGeometryGetMesh(geometryRef);
  Copy = C3DMeshCreateCopy(Mesh);
  C3DMeshRemoveSourcesWithSemantic(Copy, 5);
  C3DMeshRemoveSourcesWithSemantic(Copy, 6);
  v6 = C3DGeometryCreateCopy(geometryRef);
  C3DGeometrySetMesh(v6, Copy);
  v7 = [SCNGeometry geometryWithGeometryRef:v6];
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  [(SCNGeometry *)v7 setName:[(SCNGeometry *)self name]];
  [(SCNGeometry *)v7 setMaterials:[(SCNGeometry *)self materials]];
  return v7;
}

- (void)_discardOriginalTopology
{
  v26 = *MEMORY[0x277D85DE8];
  RenderingMesh = C3DGeometryGetRenderingMesh([(SCNGeometry *)self geometryRef]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  geometrySources = [(SCNGeometry *)self geometrySources];
  v5 = [(NSArray *)geometrySources countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(geometrySources);
        }

        meshSource = [*(*(&v20 + 1) + 8 * v8) meshSource];
        if (meshSource)
        {
          C3DEntitySetObjCWrapper(meshSource, 0);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)geometrySources countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  geometryElements = [(SCNGeometry *)self geometryElements];
  v11 = [(NSArray *)geometryElements countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(geometryElements);
        }

        meshElement = [*(*(&v16 + 1) + 8 * v14) meshElement];
        if (meshElement)
        {
          C3DEntitySetObjCWrapper(meshElement, 0);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)geometryElements countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  C3DMeshBuildRenderableData(RenderingMesh, 0);
  [(SCNGeometry *)self _releaseCachedSourcesAndElements];
}

- (id)_geometryByWeldingVerticesWithThreshold:(double)threshold normalThreshold:(double)normalThreshold
{
  selfCopy = self;
  v122 = *MEMORY[0x277D85DE8];
  firstObject = [(NSArray *)[(SCNGeometry *)self geometrySourcesForSemantic:?] firstObject];
  firstObject2 = [(NSArray *)[(SCNGeometry *)selfCopy geometrySourcesForSemantic:@"kGeometrySourceSemanticNormal"] firstObject];
  [(SCNGeometry *)selfCopy geometrySourcesForSemantic:@"kGeometrySourceSemanticTexcoord"];
  vectorCount = [firstObject vectorCount];
  v10 = malloc_type_malloc(8 * vectorCount, 0x100004000313F17uLL);
  v11 = malloc_type_malloc(8 * vectorCount, 0x100004000313F17uLL);
  v12 = v11;
  if (vectorCount)
  {
    for (i = 0; i != vectorCount; ++i)
    {
      *&v10[8 * i] = i;
      v11[i] = i;
    }
  }

  v103 = [objc_msgSend(firstObject "data")];
  dataOffset = [firstObject dataOffset];
  dataStride = [firstObject dataStride];
  qsort_r(v10, vectorCount, 8uLL, &v103, vertexSort);
  if (vectorCount)
  {
    v90 = 0;
    v15 = 0;
    v16 = normalThreshold + normalThreshold;
    v17 = v10 + 8;
    v78 = v10;
    while (1)
    {
      v18 = *&v10[8 * v15];
      if (v12[v18] == v18)
      {
        v19 = v103 + dataOffset + dataStride * v18;
        v14.i64[0] = *v19;
        LODWORD(__dst) = *v19;
        v14.i32[2] = *(v19 + 8);
        v87 = v14;
        v20 = [objc_msgSend(firstObject2 "data")];
        dataOffset2 = [firstObject2 dataOffset];
        dataStride2 = [firstObject2 dataStride];
        v23 = v20 + dataOffset2;
        v24.i64[0] = *(v23 + dataStride2 * v18);
        v24.i32[2] = *(v23 + 8 + dataStride2 * v18);
        v84 = v24;
        vectorCount2 = [firstObject2 vectorCount];
        v26 = v15 + 1;
        if (v15 + 1 < vectorCount2)
        {
          LODWORD(v27) = 0;
          v28 = v103;
          v29 = ~v15 + vectorCount2;
          v30 = &v17[8 * v15];
          v31 = v90;
          do
          {
            v33 = *v30;
            v30 += 8;
            v32 = v33;
            if (v12[v33] == v33)
            {
              v34 = v28 + dataOffset + dataStride * v32;
              if (vabds_f32(__dst, *v34) > threshold)
              {
                break;
              }

              v14.i32[1] = *(v34 + 4);
              v14.i32[2] = *(v34 + 8);
              v14.i32[0] = *v34;
              v35 = vsubq_f32(v87, v14);
              v14 = vmulq_f32(v35, v35);
              if (sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) <= threshold)
              {
                v14.i64[0] = *(v23 + v32 * dataStride2);
                v14.i32[2] = *(v23 + 8 + v32 * dataStride2);
                v14 = vmulq_f32(v84, v14);
                if (v16 >= (1.0 - (v14.f32[2] + vaddv_f32(*v14.f32))))
                {
                  v12[v32] = v18;
                  LODWORD(v27) = v27 + 1;
                }
              }
            }

            --v29;
          }

          while (v29);
          v27 = v27;
          v10 = v78;
          goto LABEL_19;
        }

        v27 = 0;
        v10 = v78;
      }

      else
      {
        v27 = 0;
        v26 = v15 + 1;
      }

      v31 = v90;
LABEL_19:
      v90 = v31 + v27;
      v15 = v26;
      if (v26 == vectorCount)
      {
        v36 = v31 + v27;
        if (v90)
        {
          geometrySources = [(SCNGeometry *)selfCopy geometrySources];
          geometryElements = [(SCNGeometry *)selfCopy geometryElements];
          obj = geometrySources;
          v85 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](geometrySources, "count")}];
          v80 = geometryElements;
          v83 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](geometryElements, "count")}];
          for (j = 0; j != vectorCount; ++j)
          {
            v40 = v12[j];
            do
            {
              v41 = v40;
              v40 = v12[v40];
            }

            while (v41 > v40);
            v12[j] = v41;
            if (v41 > j && v12[v41] == v41)
            {
              v12[v41] = j;
              v12[j] = j;
            }
          }

          v77 = selfCopy;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v88 = [(NSArray *)geometrySources countByEnumeratingWithState:&v99 objects:v121 count:16];
          if (v88)
          {
            v81 = *v100;
            do
            {
              for (k = 0; k != v88; ++k)
              {
                if (*v100 != v81)
                {
                  objc_enumerationMutation(obj);
                }

                v43 = *(*(&v99 + 1) + 8 * k);
                bytesPerComponent = [v43 bytesPerComponent];
                v45 = [v43 componentsPerVector] * bytesPerComponent;
                v46 = ([v43 vectorCount] - v36) * v45;
                __dsta = malloc_type_malloc(v46, 0x4BE85623uLL);
                v47 = [objc_msgSend(v43 "data")];
                [v43 vectorCount];
                dataStride3 = [v43 dataStride];
                v49 = 0;
                v50 = (v47 + [v43 dataOffset]);
                v51 = __dsta;
                do
                {
                  if (v49 == v12[v49])
                  {
                    memcpy(v51, v50, v45);
                    v51 += v45;
                  }

                  v50 += dataStride3;
                  ++v49;
                }

                while (vectorCount != v49);
                v36 = v90;
                v52 = +[SCNGeometrySource _geometrySourceWithData:semantic:vectorCount:componentType:componentCount:dataOffset:dataStride:](SCNGeometrySource, "_geometrySourceWithData:semantic:vectorCount:componentType:componentCount:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:__dsta length:v46 freeWhenDone:1], objc_msgSend(v43, "semantic"), objc_msgSend(v43, "vectorCount") - v90, objc_msgSend(v43, "_componentType"), objc_msgSend(v43, "componentsPerVector"), 0, 0);
                [objc_msgSend(v43 "semantic")];
                [v85 addObject:v52];
              }

              v88 = [(NSArray *)obj countByEnumeratingWithState:&v99 objects:v121 count:16];
            }

            while (v88);
          }

          v53 = 0;
          v54 = 0;
          v55 = vectorCount - v36;
          do
          {
            if (v12[v54] > v54)
            {
              v56 = scn_default_log();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
              {
                [(SCNGeometry(SCNUtils) *)v119 _geometryByWeldingVerticesWithThreshold:v56 normalThreshold:?];
              }
            }

            if (v54 != v12[v54])
            {
              ++v53;
              if (!v54)
              {
                v57 = scn_default_log();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                {
                  [(SCNGeometry(SCNUtils) *)v117 _geometryByWeldingVerticesWithThreshold:v57 normalThreshold:?];
                }
              }
            }

            if (v12[v54] > v54)
            {
              v58 = scn_default_log();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                [(SCNGeometry(SCNUtils) *)v115 _geometryByWeldingVerticesWithThreshold:v58 normalThreshold:?];
              }
            }

            *&v78[8 * v54] = v54 - v53;
            v12[v54] = *&v78[8 * v12[v54]];
            if (*&v78[8 * v54] >= v55)
            {
              v59 = scn_default_log();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
              {
                [(SCNGeometry(SCNUtils) *)v113 _geometryByWeldingVerticesWithThreshold:v59 normalThreshold:?];
              }
            }

            ++v54;
          }

          while (vectorCount != v54);
          if (v53 != v90)
          {
            v60 = scn_default_log();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              [SCNGeometry(SCNUtils) _geometryByWeldingVerticesWithThreshold:v60 normalThreshold:?];
            }
          }

          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v86 = [(NSArray *)v80 countByEnumeratingWithState:&v95 objects:v112 count:16];
          if (v86)
          {
            v61 = vectorCount - v90;
            v82 = *v96;
            do
            {
              for (m = 0; m != v86; ++m)
              {
                if (*v96 != v82)
                {
                  objc_enumerationMutation(v80);
                }

                v63 = *(*(&v95 + 1) + 8 * m);
                bytesPerIndex = [v63 bytesPerIndex];
                v65 = [objc_msgSend(v63 "data")];
                indexCount = [v63 indexCount];
                if ([v63 primitiveType] == 4)
                {
                  v67 = [v63 primitiveCount] * bytesPerIndex;
                }

                else
                {
                  v67 = 0;
                }

                __dstb = v67;
                v89 = v67 + indexCount * bytesPerIndex;
                v91 = malloc_type_malloc(v89, 0x100004077774924uLL);
                if (indexCount)
                {
                  v68 = 0;
                  v69 = &v91[__dstb];
                  do
                  {
                    switch(bytesPerIndex)
                    {
                      case 4:
                        v74 = v12[*(v65 + 4 * v68)];
                        *&v69[4 * v68] = v74;
                        if (v61 <= v74)
                        {
                          v75 = scn_default_log();
                          if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                          {
                            [(SCNGeometry(SCNUtils) *)v106 _geometryByWeldingVerticesWithThreshold:v75 normalThreshold:?];
                          }
                        }

                        break;
                      case 2:
                        v72 = v12[*(v65 + 2 * v68)];
                        *&v69[2 * v68] = v72;
                        if (v61 <= v72)
                        {
                          v73 = scn_default_log();
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
                          {
                            [(SCNGeometry(SCNUtils) *)v108 _geometryByWeldingVerticesWithThreshold:v73 normalThreshold:?];
                          }
                        }

                        break;
                      case 1:
                        v70 = v12[*(v65 + v68)];
                        v69[v68] = v70;
                        if (v61 <= v70)
                        {
                          v71 = scn_default_log();
                          if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
                          {
                            [(SCNGeometry(SCNUtils) *)v110 _geometryByWeldingVerticesWithThreshold:v71 normalThreshold:?];
                          }
                        }

                        break;
                    }

                    ++v68;
                  }

                  while (indexCount != v68);
                }

                if (__dstb)
                {
                  memcpy(v91, [objc_msgSend(v63 "data")], __dstb);
                }

                [v83 addObject:{+[SCNGeometryElement geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:](SCNGeometryElement, "geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:", objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v91, v89, 1), objc_msgSend(v63, "primitiveType"), objc_msgSend(v63, "primitiveCount"), bytesPerIndex)}];
              }

              v86 = [(NSArray *)v80 countByEnumeratingWithState:&v95 objects:v112 count:16];
            }

            while (v86);
          }

          selfCopy = [SCNGeometry geometryWithSources:v85 elements:v83];
          [(SCNGeometry *)selfCopy setName:[(SCNGeometry *)v77 name]];
          [(SCNGeometry *)selfCopy setMaterials:[(SCNGeometry *)v77 materials]];
          v10 = v78;
        }

        break;
      }
    }
  }

  free(v10);
  free(v12);
  return selfCopy;
}

- (id)debugQuickLookObject
{
  v2 = [SCNNode nodeWithGeometry:self];

  return [(SCNNode *)v2 debugQuickLookObject];
}

- (id)debugQuickLookData
{
  debugQuickLookObject = [(SCNGeometry *)self debugQuickLookObject];

  return UIImagePNGRepresentation(debugQuickLookObject);
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setBoundingBoxMin:max:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setEdgeCreasesElement:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setEdgeCreasesSource:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shadableSetValue:forUndefinedKey:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setShaderModifiers:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)copyShaderModifiersAndLanguageVersionFrom:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setMinimumLanguageVersion:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setProgram:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_customEncodingOfSCNGeometry:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Failed to archive geometry's custom attributes. %@ %@", &v3, 0x16u);
}

- (void)_customDecodingOfSCNGeometry:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_customDecodingOfSCNGeometry:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end