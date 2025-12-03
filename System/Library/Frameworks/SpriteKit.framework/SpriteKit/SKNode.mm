@interface SKNode
+ (SKNode)node;
+ (SKNode)nodeWithFileNamed:(NSString *)filename;
+ (SKNode)nodeWithFileNamed:(NSString *)filename securelyWithClasses:(NSSet *)classes andError:(NSError *)error;
+ (id)debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error;
+ (id)nodeFromCaptureData:(id)data;
- (BOOL)_isEffectivelyHidden;
- (BOOL)_isEligibleForFocus;
- (BOOL)_pathFromPhysicsBodyToPoints:(SKNode *)self outSize:(SEL)size;
- (BOOL)containsPoint:(CGPoint)p;
- (BOOL)containsPoint:(CGPoint)point withRadius:(double)radius;
- (BOOL)inParentHierarchy:(SKNode *)parent;
- (BOOL)intersectsNode:(id)node useAlphaTest:(BOOL)test;
- (BOOL)isEqualToNode:(SKNode *)node;
- (CGPath)outline;
- (CGPoint)_anchorPoint;
- (CGPoint)convertPoint:(CGPoint)cgpoint fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)cgpoint toCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point fromNode:(SKNode *)node;
- (CGPoint)convertPoint:(CGPoint)point toNode:(SKNode *)node;
- (CGPoint)convertPointFromParent:(CGPoint)parent;
- (CGPoint)convertPointToParent:(CGPoint)parent;
- (CGPoint)position;
- (CGRect)_convertFrameToView:(id)view;
- (CGRect)_untransformedBounds;
- (CGRect)calculateAccumulatedFrame;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (CGRect)frame;
- (CGSize)_size;
- (CGSize)_untransformedSize;
- (CGSize)size;
- (Class)swiftClassFromString:(id)string moduleName:(id)name;
- (GKEntity)entity;
- (NSArray)_allActions;
- (NSArray)children;
- (NSArray)constraints;
- (NSArray)nodesAtPoint:(CGPoint)p;
- (NSArray)objectForKeyedSubscript:(NSString *)name;
- (NSArray)preferredFocusEnvironments;
- (NSDictionary)attributeValues;
- (NSString)description;
- (SKAction)actionForKey:(NSString *)key;
- (SKAttributeValue)valueForAttributeNamed:(NSString *)key;
- (SKNode)childNodeWithName:(NSString *)name;
- (SKNode)init;
- (SKNode)initWithCoder:(NSCoder *)aDecoder;
- (SKNode)nodeAtPoint:(CGPoint)p;
- (SKNode)parent;
- (SKScene)scene;
- (double)globalAccumulatedBoundingVerts;
- (double)globalBoundingVerts;
- (id)_copyImageData;
- (id)_descendants;
- (id)_descendantsWithPredicate:(id)predicate;
- (id)_subnodeFromIndexPath:(id)path;
- (id)allIntersectionsWithNode:(id)node useAlphaTest:(BOOL)test;
- (id)archiveToFile:(id)file;
- (id)childrenInRect:(CGRect)rect;
- (id)containingView;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createDebugHierarchyVisualRepresentation;
- (id)createFullCaptureData;
- (id)nodeAtPoint:(CGPoint)point recursive:(BOOL)recursive;
- (shared_ptr<PKCAether>)_aether;
- (void)_debugPrint:(int)print;
- (void)_debugPrint:(int)print mask:(unint64_t)mask;
- (void)_descendantsToMutableArray:(id)array;
- (void)_descendantsWithPredicate:(id)predicate toMutableArray:(id)array;
- (void)_enumerateChildNodesWithName:(id)name usingBlock:(id)block stopPointer:(BOOL *)pointer;
- (void)_getBasePhysicsScale:(float *)scale yScale:(float *)yScale;
- (void)_getWorldTransform:(float *)transform positionY:(float *)y rotation:(float *)rotation xScale:(float *)scale yScale:(float *)yScale;
- (void)_processSearchTokens:()vector<Token visited:(std:(void *)visited :(id)a5 allocator<Token>> *)a3 usingBlock:(BOOL *)block stopPointer:;
- (void)_removeAction:(id)action;
- (void)_removeChild:(id)child;
- (void)_runAction:(id)action;
- (void)addChild:(SKNode *)node;
- (void)addChild:(id)child withKey:(id)key;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)insertChild:(SKNode *)node atIndex:(NSInteger)index;
- (void)moveToParent:(SKNode *)parent;
- (void)removeActionForKey:(NSString *)key;
- (void)removeAllActions;
- (void)removeAllChildren;
- (void)removeChild:(id)child;
- (void)removeChildAtIndex:(int64_t)index;
- (void)removeChildrenInArray:(NSArray *)nodes;
- (void)removeFromParent;
- (void)runAction:(SKAction *)action;
- (void)runAction:(SKAction *)action completion:(void *)block;
- (void)runAction:(SKAction *)action withKey:(NSString *)key;
- (void)setAlpha:(CGFloat)alpha;
- (void)setAttributeValues:(NSDictionary *)attributeValues;
- (void)setConstraints:(NSArray *)constraints;
- (void)setNeedsFocusUpdate;
- (void)setParent:(id)parent;
- (void)setPaused:(BOOL)paused;
- (void)setPhysicsBody:(SKPhysicsBody *)physicsBody;
- (void)setPosition:(CGPoint)position;
- (void)setScale:(CGFloat)scale;
- (void)setSpeed:(CGFloat)speed;
- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key;
- (void)setXRotation:(double)rotation;
- (void)setXScale:(CGFloat)xScale;
- (void)setYRotation:(double)rotation;
- (void)setYScale:(CGFloat)yScale;
- (void)set_anchorPoint:(CGPoint)point;
- (void)updateFocusIfNeeded;
@end

@implementation SKNode

- (void)_removeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    [(NSMutableArray *)self->_actions removeExactObject:actionCopy];
  }
}

- (void)_removeChild:(id)child
{
  childCopy = child;
  if (childCopy)
  {
    [(NSMutableArray *)self->_children removeExactObject:childCopy];
  }
}

- (shared_ptr<PKCAether>)_aether
{
  *v2 = 0;
  v2[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (BOOL)isEqualToNode:(SKNode *)node
{
  v4 = node;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      name = [(SKNode *)self name];
      if (name)
      {
      }

      else
      {
        name2 = [(SKNode *)v5 name];

        if (!name2)
        {
LABEL_9:
          [(SKNode *)self frame];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          [(SKNode *)v5 frame];
          v61.origin.x = v20;
          v61.origin.y = v21;
          v61.size.width = v22;
          v61.size.height = v23;
          v60.origin.x = v13;
          v60.origin.y = v15;
          v60.size.width = v17;
          v60.size.height = v19;
          if (CGRectEqualToRect(v60, v61))
          {
            [(SKNode *)self position];
            v25 = v24;
            v27 = v26;
            [(SKNode *)v5 position];
            LOBYTE(v7) = 0;
            if (v25 == v29 && v27 == v28)
            {
              [(SKNode *)self zPosition];
              v31 = v30;
              v32 = objc_opt_self();
              [v32 zPosition];
              v33 = v31;
              *&v34 = v34;
              if ((COERCE_UNSIGNED_INT(v33 - *&v34) & 0x60000000) != 0 || ([(SKNode *)self xScale], v36 = v35, [(SKNode *)v5 xScale], v37 = v36, *&v38 = v38, (COERCE_UNSIGNED_INT(v37 - *&v38) & 0x60000000) != 0) || ([(SKNode *)self yScale], v40 = v39, [(SKNode *)v5 yScale], v41 = v40, *&v42 = v42, (COERCE_UNSIGNED_INT(v41 - *&v42) & 0x60000000) != 0) || ([(SKNode *)self zRotation], v44 = v43, [(SKNode *)v5 zRotation], v45 = v44, *&v46 = v46, (COERCE_UNSIGNED_INT(v45 - *&v46) & 0x60000000) != 0) || ([(SKNode *)self alpha], v48 = v47, [(SKNode *)v5 alpha], v49 = v48, *&v50 = v50, (COERCE_UNSIGNED_INT(v49 - *&v50) & 0x60000000) != 0) || (v51 = [(SKNode *)self isHidden], v51 != [(SKNode *)v5 isHidden]) || (v52 = [(SKNode *)self isUserInteractionEnabled], v52 != [(SKNode *)v5 isUserInteractionEnabled]) || (v53 = [(SKNode *)self focusBehavior], v53 != [(SKNode *)v5 focusBehavior]) || ([(SKNode *)self speed], v55 = v54, [(SKNode *)v5 speed], v56 = v55, *&v57 = v57, (COERCE_UNSIGNED_INT(v56 - *&v57) & 0x60000000) != 0))
              {
                LOBYTE(v7) = 0;
              }

              else
              {
                isPaused = [(SKNode *)self isPaused];
                v7 = isPaused ^ [(SKNode *)v5 isPaused]^ 1;
              }
            }

            goto LABEL_24;
          }

LABEL_23:
          LOBYTE(v7) = 0;
LABEL_24:

          goto LABEL_25;
        }
      }

      name3 = [(SKNode *)self name];
      name4 = [(SKNode *)v5 name];
      v11 = [name3 isEqualToString:name4];

      if ((v11 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    LOBYTE(v7) = 0;
  }

LABEL_25:

  return v7;
}

+ (SKNode)node
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (SKNode)nodeWithFileNamed:(NSString *)filename
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = filename;
  v5 = SKGetResourceBundle();
  v6 = [v5 pathForResource:v4 ofType:@"sks"];

  if (v6 || (SKGetResourceBundle(), v7 = objc_claimAutoreleasedReturnValue(), [v7 pathForResource:v4 ofType:0], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6 options:1 error:0];
    v23 = 0;
    v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v23];
    v10 = v23;
    [v9 setRequiresSecureCoding:0];
    [v9 setDecodingFailurePolicy:0];
    v11 = objc_opt_new();
    [v9 setDelegate:v11];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __28__SKNode_nodeWithFileNamed___block_invoke;
    v20 = &unk_27830FEF8;
    selfCopy = self;
    v13 = v9;
    v21 = v13;
    [v12 enumerateObjectsUsingBlock:&v17];
    v14 = [MEMORY[0x277CBEB98] setWithArray:{v12, v17, v18, v19, v20}];
    v15 = [v13 decodeObjectOfClasses:v14 forKey:*MEMORY[0x277CCA308]];

    [v13 finishDecoding];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __28__SKNode_nodeWithFileNamed___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  aClass = a2;
  if ([objc_opt_class() isSubclassOfClass:aClass])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(aClass);
    [v6 setClass:v7 forClassName:v8];

    *a4 = 1;
  }
}

+ (SKNode)nodeWithFileNamed:(NSString *)filename securelyWithClasses:(NSSet *)classes andError:(NSError *)error
{
  v25[3] = *MEMORY[0x277D85DE8];
  v7 = filename;
  v8 = SKGetResourceBundle();
  v9 = [v8 pathForResource:v7 ofType:@"sks"];

  if (v9 || (SKGetResourceBundle(), v10 = objc_claimAutoreleasedReturnValue(), [v10 pathForResource:v7 ofType:0], v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9 options:1 error:0];
    v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:error];
    [v12 setDecodingFailurePolicy:1];
    [v12 setRequiresSecureCoding:0];
    v13 = objc_opt_new();
    [v12 setDelegate:v13];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __57__SKNode_nodeWithFileNamed_securelyWithClasses_andError___block_invoke;
    v22 = &unk_27830FEF8;
    selfCopy = self;
    v15 = v12;
    v23 = v15;
    [v14 enumerateObjectsUsingBlock:&v19];
    v16 = [MEMORY[0x277CBEB98] setWithArray:{v14, v19, v20, v21, v22}];
    v17 = [v15 decodeTopLevelObjectOfClasses:v16 forKey:*MEMORY[0x277CCA308] error:error];

    [v15 finishDecoding];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __57__SKNode_nodeWithFileNamed_securelyWithClasses_andError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  aClass = a2;
  if ([objc_opt_class() isSubclassOfClass:aClass])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(aClass);
    [v6 setClass:v7 forClassName:v8];

    *a4 = 1;
  }
}

- (SKNode)init
{
  v9.receiver = self;
  v9.super_class = SKNode;
  v2 = [(SKNode *)&v9 init];
  v3 = v2;
  if (v2)
  {
    _makeBackingNode = [(SKNode *)v2 _makeBackingNode];
    v3->_skcNode = _makeBackingNode;
    *(_makeBackingNode + 8) = v3;
    [(SKNode *)v3 _didMakeBackingNode];
    userData = v3->_userData;
    v3->_userData = 0;

    info = v3->_info;
    v3->_info = 0;

    reachConstraints = v3->_reachConstraints;
    v3->_reachConstraints = 0;

    [(SKNode *)v3 setUserInteractionEnabled:0];
    [(SKNode *)v3 setFocusBehavior:0];
    objc_storeWeak(&v3->_parent, 0);
    v3->_version = 52000001;
    [(SKNode *)v3 _initAccessibility];
  }

  return v3;
}

- (Class)swiftClassFromString:(id)string moduleName:(id)name
{
  stringCopy = string;
  nameCopy = name;
  v7 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    v8 = v7;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle objectForInfoDictionaryKey:@"CFBundleName"];
  }

  v10 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  v13 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789"];
  v14 = [v12 rangeOfCharacterFromSet:v13];

  if (!v14)
  {
    v15 = [v12 stringByReplacingCharactersInRange:0 withString:{1, @"_"}];

    v12 = v15;
  }

  stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_TtC%lu%@%lu%@", objc_msgSend(v12, "length"), v12, objc_msgSend(stringCopy, "length"), stringCopy];
  v17 = NSClassFromString(stringCopy);

  return v17;
}

- (SKNode)initWithCoder:(NSCoder *)aDecoder
{
  v97[9] = *MEMORY[0x277D85DE8];
  v4 = aDecoder;
  v74 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v97[0] = objc_opt_class();
  v97[1] = objc_opt_class();
  v97[2] = objc_opt_class();
  v97[3] = objc_opt_class();
  v97[4] = objc_opt_class();
  v97[5] = objc_opt_class();
  v97[6] = objc_opt_class();
  v97[7] = objc_opt_class();
  v97[8] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:9];
  [v74 addObjectsFromArray:v5];

  allowedClasses = [(NSCoder *)v4 allowedClasses];
  [v74 unionSet:allowedClasses];

  v7 = [(NSCoder *)v4 decodeObjectOfClasses:v74 forKey:@"_info"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 objectForKeyedSubscript:@"_PB_previewSKNodeCustomClassName"], (aClassName = objc_claimAutoreleasedReturnValue()) == 0))
  {
    aClassName = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = NSClassFromString(aClassName);
  if (!v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"_PB_previewSKNodeCustomModuleName"];
    v8 = [(SKNode *)self swiftClassFromString:aClassName moduleName:v9];
    if (!v8)
    {
      NSLog(&cfstr_UnableToLoadCu.isa, aClassName, v9);

      goto LABEL_11;
    }
  }

  if (v8 != objc_opt_class() && [(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
  {
    selfCopy = self;
    v10 = [[v8 alloc] initWithCoder:v4];

    goto LABEL_41;
  }

LABEL_11:
  v87.receiver = self;
  v87.super_class = SKNode;
  v11 = [(SKNode *)&v87 init];
  v10 = v11;
  if (v11)
  {
    _makeBackingNode = [(SKNode *)v11 _makeBackingNode];
    v10->_skcNode = _makeBackingNode;
    *(_makeBackingNode + 8) = v10;
    [(SKNode *)v10 _didMakeBackingNode];
    v13 = MEMORY[0x277CBEB98];
    v96[0] = objc_opt_class();
    v96[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [(NSCoder *)v4 decodeObjectOfClasses:v15 forKey:@"_constraints"];
    [(SKNode *)v10 setConstraints:v16];

    v17 = MEMORY[0x277CBEB98];
    v95[0] = objc_opt_class();
    v95[1] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [(NSCoder *)v4 decodeObjectOfClasses:v19 forKey:@"_reachConstraints"];
    [(SKNode *)v10 setReachConstraints:v20];

    v21 = [(NSCoder *)v4 decodeObjectOfClasses:v74 forKey:@"_userData"];
    [(SKNode *)v10 setUserData:v21];

    [(SKNode *)v10 set_info:v7];
    v22 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    [(SKNode *)v10 setName:v22];

    v23 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_opacity"];
    [v23 doubleValue];
    [(SKNode *)v10 setAlpha:?];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_position"];
      [v24 CGPointValue];
      [(SKNode *)v10 setPosition:?];

      v25 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_zRotation"];
      [v25 doubleValue];
      [(SKNode *)v10 setZRotation:?];

      v26 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_xRotation"];
      [v26 doubleValue];
      [(SKNode *)v10 setXRotation:?];

      v27 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_yRotation"];
      [v27 doubleValue];
      [(SKNode *)v10 setYRotation:?];

      v28 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_xScale"];
      [v28 doubleValue];
      [(SKNode *)v10 setXScale:?];

      v29 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_yScale"];
      [v29 doubleValue];
      [(SKNode *)v10 setYScale:?];

      v30 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_zPosition"];
      [v30 doubleValue];
      [(SKNode *)v10 setZPosition:?];
    }

    v31 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_anchorPoint"];
    [v31 CGPointValue];
    [(SKNode *)v10 set_anchorPoint:?];

    v32 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hidden"];
    -[SKNode setHidden:](v10, "setHidden:", [v32 BOOLValue]);

    skcNode = v10->_skcNode;
    v34 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_skcPaused"];
    (*(*skcNode + 160))(skcNode, [v34 BOOLValue]);

    v35 = [(NSCoder *)v4 decodeObjectOfClasses:v74 forKey:@"_PKPhysicsBody"];
    [(SKNode *)v10 setPhysicsBody:v35];

    v36 = MEMORY[0x277CBEB98];
    v94[0] = objc_opt_class();
    v94[1] = objc_opt_class();
    v94[2] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];
    v38 = [v36 setWithArray:v37];
    v39 = [(NSCoder *)v4 decodeObjectOfClasses:v38 forKey:@"_attributeValues"];
    [(SKNode *)v10 setAttributeValues:v39];

    v40 = MEMORY[0x277CBEB98];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v42 = [v40 setWithArray:v41];
    v72 = [(NSCoder *)v4 decodeObjectOfClasses:v42 forKey:@"_children"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v43 = v72;
      v44 = [v43 countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (v44)
      {
        v45 = *v84;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v84 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v83 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SKNode *)v10 addChild:v47];
            }
          }

          v44 = [v43 countByEnumeratingWithState:&v83 objects:v92 count:16];
        }

        while (v44);
      }

      v48 = MEMORY[0x277CBEB98];
      v91[0] = objc_opt_class();
      v91[1] = objc_opt_class();
      v91[2] = objc_opt_class();
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
      v50 = [v48 setWithArray:v49];
      v51 = [(NSCoder *)v4 decodeObjectOfClasses:v50 forKey:@"_keyedSubSprites"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = objc_opt_new();
        keyedSubSprites = v10->_keyedSubSprites;
        v10->_keyedSubSprites = v52;

        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __24__SKNode_initWithCoder___block_invoke;
        v81[3] = &unk_27830FF20;
        v82 = v10;
        [v51 enumerateKeysAndObjectsUsingBlock:v81];
      }
    }

    v54 = MEMORY[0x277CBEB98];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v90[2] = objc_opt_class();
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:3];
    v56 = [v54 setWithArray:v55];
    v57 = [(NSCoder *)v4 decodeObjectOfClasses:v56 forKey:@"_keyedActions"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = objc_opt_new();
      keyedActions = v10->_keyedActions;
      v10->_keyedActions = v58;

      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __24__SKNode_initWithCoder___block_invoke_2;
      v79[3] = &unk_27830FF48;
      v80 = v10;
      [v57 enumerateKeysAndObjectsUsingBlock:v79];
    }

    v60 = MEMORY[0x277CBEB98];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v62 = [v60 setWithArray:v61];
    v63 = [(NSCoder *)v4 decodeObjectOfClasses:v62 forKey:@"_actions"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v64 = v63;
      v65 = [v64 countByEnumeratingWithState:&v75 objects:v88 count:16];
      if (v65)
      {
        v66 = *v76;
        do
        {
          for (j = 0; j != v65; ++j)
          {
            if (*v76 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v68 = *(*(&v75 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SKNode *)v10 _runAction:v68];
            }
          }

          v65 = [v64 countByEnumeratingWithState:&v75 objects:v88 count:16];
        }

        while (v65);
      }
    }

    [(SKNode *)v10 _initAccessibility];
  }

LABEL_41:
  v69 = v10;

  return v69;
}

void __24__SKNode_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 56) setObject:v5 forKey:v6];
    }
  }
}

void __24__SKNode_initWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 48) setObject:v5 forKey:v6];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [coderCopy encodeObject:v4 forKey:@"_version"];

  v5 = MEMORY[0x277CCAE60];
  [(SKNode *)self position];
  v6 = [v5 valueWithCGPoint:?];
  [coderCopy encodeObject:v6 forKey:@"_position"];

  v7 = MEMORY[0x277CCABB0];
  [(SKNode *)self alpha];
  v8 = [v7 numberWithDouble:?];
  [coderCopy encodeObject:v8 forKey:@"_opacity"];

  v9 = MEMORY[0x277CCABB0];
  [(SKNode *)self xRotation];
  v10 = [v9 numberWithDouble:?];
  [coderCopy encodeObject:v10 forKey:@"_xRotation"];

  v11 = MEMORY[0x277CCABB0];
  [(SKNode *)self yRotation];
  v12 = [v11 numberWithDouble:?];
  [coderCopy encodeObject:v12 forKey:@"_yRotation"];

  v13 = MEMORY[0x277CCABB0];
  [(SKNode *)self zRotation];
  v14 = [v13 numberWithDouble:?];
  [coderCopy encodeObject:v14 forKey:@"_zRotation"];

  v15 = MEMORY[0x277CCABB0];
  [(SKNode *)self xScale];
  v16 = [v15 numberWithDouble:?];
  [coderCopy encodeObject:v16 forKey:@"_xScale"];

  v17 = MEMORY[0x277CCABB0];
  [(SKNode *)self yScale];
  v18 = [v17 numberWithDouble:?];
  [coderCopy encodeObject:v18 forKey:@"_yScale"];

  name = [(SKNode *)self name];
  [coderCopy encodeObject:name forKey:@"_name"];

  userData = [(SKNode *)self userData];
  [coderCopy encodeObject:userData forKey:@"_userData"];

  _info = [(SKNode *)self _info];
  [coderCopy encodeObject:_info forKey:@"_info"];

  constraints = [(SKNode *)self constraints];
  v23 = [constraints mutableCopy];
  [coderCopy encodeObject:v23 forKey:@"_constraints"];

  reachConstraints = [(SKNode *)self reachConstraints];
  [coderCopy encodeObject:reachConstraints forKey:@"_reachConstraints"];

  children = [(SKNode *)self children];
  v26 = [children mutableCopy];
  [coderCopy encodeObject:v26 forKey:@"_children"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKNode isHidden](self, "isHidden")}];
  [coderCopy encodeObject:v27 forKey:@"_hidden"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKNode isPaused](self, "isPaused")}];
  [coderCopy encodeObject:v28 forKey:@"_paused"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:*(self->_skcNode + 172)];
  [coderCopy encodeObject:v29 forKey:@"_skcPaused"];

  v30 = MEMORY[0x277CCABB0];
  [(SKNode *)self zPosition];
  v31 = [v30 numberWithDouble:?];
  [coderCopy encodeObject:v31 forKey:@"_zPosition"];

  [coderCopy encodeObject:self->_actions forKey:@"_actions"];
  [coderCopy encodeObject:self->_keyedActions forKey:@"_keyedActions"];
  [coderCopy encodeObject:self->_keyedSubSprites forKey:@"_keyedSubSprites"];
  physicsBody = [(SKNode *)self physicsBody];
  [coderCopy encodeObject:physicsBody forKey:@"_PKPhysicsBody"];

  attributeValues = [(SKNode *)self attributeValues];
  [coderCopy encodeObject:attributeValues forKey:@"_attributeValues"];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  [coderCopy encodeObject:v35 forKey:@"_originalClass"];
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKNode *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  selfCopy = self;
  if ([(NSMutableArray *)self->_children count]&& [(NSMutableDictionary *)self->_keyedSubSprites count])
  {
    v5 = [(NSMutableDictionary *)self->_keyedSubSprites copy];
    v6 = [(NSMutableArray *)self->_children copy];
    allValues = [v5 allValues];
    [v6 removeObjectsInArray:allValues];

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v5 copyItems:1];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v6 copyItems:1];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    allKeys = [v8 allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v11)
    {
      v12 = *v58;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v57 + 1) + 8 * i);
          v15 = [v8 objectForKey:v14];
          [v4 addChild:v15 withKey:v14];
        }

        v11 = [allKeys countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v11);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v17)
    {
      v18 = *v54;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [v4 addChild:*(*(&v53 + 1) + 8 * j)];
        }

        v17 = [v16 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_children copyItems:1];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = v20;
    v21 = [v16 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v21)
    {
      v22 = *v50;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v16);
          }

          [v4 addChild:*(*(&v49 + 1) + 8 * k)];
        }

        v21 = [v16 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v21);
    }

    v8 = v16;
  }

  if ([(NSMutableArray *)selfCopy->_actions count]|| [(NSMutableDictionary *)selfCopy->_keyedActions count])
  {
    v24 = [(NSMutableDictionary *)selfCopy->_keyedActions copy];
    v25 = [(NSMutableArray *)selfCopy->_actions mutableCopy];
    allValues2 = [v24 allValues];
    [v25 removeObjectsInArray:allValues2];

    v27 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v24 copyItems:1];
    obj = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v25 copyItems:1];

    allValues3 = [v27 allValues];
    [obj addObjectsFromArray:allValues3];

    objc_storeStrong(v4 + 5, obj);
    v29 = [v27 mutableCopy];
    v30 = v4[6];
    v4[6] = v29;

    [v4 _backingNode];
    memset(v48, 0, sizeof(v48));
    v31 = v4[5];
    if ([v31 countByEnumeratingWithState:v48 objects:v61 count:16])
    {
      [**(&v48[0] + 1) caction];
      operator new();
    }
  }

  else
  {
    v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:selfCopy->_actions copyItems:1];
    v27 = v4[5];
    v4[5] = v45;
  }

  [(SKNode *)selfCopy xScale];
  [v4 setXScale:?];
  [(SKNode *)selfCopy yScale];
  [v4 setYScale:?];
  [(SKNode *)selfCopy position];
  [v4 setPosition:?];
  [(SKNode *)selfCopy zRotation];
  [v4 setZRotation:?];
  [(SKNode *)selfCopy zPosition];
  [v4 setZPosition:?];
  [(SKNode *)selfCopy speed];
  [v4 setSpeed:?];
  [v4 setPaused:{-[SKNode isPaused](selfCopy, "isPaused")}];
  [v4 setHidden:{-[SKNode isHidden](selfCopy, "isHidden")}];
  [v4 setUserInteractionEnabled:{-[SKNode isUserInteractionEnabled](selfCopy, "isUserInteractionEnabled")}];
  [v4 setFocusBehavior:{-[SKNode focusBehavior](selfCopy, "focusBehavior")}];
  [(SKNode *)selfCopy alpha];
  [v4 setAlpha:?];
  physicsBody = [(SKNode *)selfCopy physicsBody];
  v33 = [physicsBody copy];
  [v4 setPhysicsBody:v33];

  name = [(SKNode *)selfCopy name];
  [v4 setName:name];

  userData = [(SKNode *)selfCopy userData];
  v36 = [userData mutableCopy];
  [v4 setUserData:v36];

  _info = [(SKNode *)selfCopy _info];
  v38 = [_info mutableCopy];
  [v4 set_info:v38];

  reachConstraints = [(SKNode *)selfCopy reachConstraints];
  v40 = [reachConstraints copy];
  [v4 setReachConstraints:v40];

  constraints = [(SKNode *)selfCopy constraints];
  v42 = [constraints copy];
  [v4 setConstraints:v42];

  [(SKNode *)selfCopy _anchorPoint];
  [v4 set_anchorPoint:?];
  attributeValues = [(SKNode *)selfCopy attributeValues];
  [v4 setAttributeValues:attributeValues];

  return v4;
}

- (void)removeFromParent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_parent);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = objc_loadWeakRetained(&self->_parent);
    v9 = v5;
    if (isKindOfClass)
    {
      [v5 removeChild:self];
    }

    else
    {
      objc_opt_class();
      v6 = objc_opt_isKindOfClass();

      if (v6)
      {
        v9 = objc_loadWeakRetained(&self->_parent);
        [v9 removeChild:self];
      }

      else
      {
        v7 = MEMORY[0x277CBEAD8];
        v9 = objc_loadWeakRetained(&self->_parent);
        [v7 raise:@"Attemped to remove node from invalid parent" format:{@"Attemped to remove node %@ from invalid parent %@", self, v9}];
      }
    }
  }
}

- (void)moveToParent:(SKNode *)parent
{
  v9 = parent;
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained != v9)
  {
    [(SKNode *)self convertPoint:v9 toNode:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    v6 = v5;
    v8 = v7;
    [(SKNode *)self removeFromParent];
    [(SKNode *)self setPosition:v6, v8];
    [(SKNode *)v9 addChild:self];
  }
}

- (SKScene)scene
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  skcNode = self->_skcNode;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __15__SKNode_scene__block_invoke;
  v5[3] = &unk_27830FDA8;
  v5[4] = &v6;
  SKCNode::walkUp(skcNode, v5, 1);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __15__SKNode_scene__block_invoke(uint64_t a1, id *lpsrc, _BYTE *a3)
{
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), lpsrc[1]);
      *a3 = 1;
    }
  }
}

- (SKNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = WeakRetained;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGPath)outline
{
  (*(*self->_skcNode + 136))(&v4);
  if (v4)
  {
    v2 = *(v4 + 4);
    if (!v2)
    {
      PKPath::createPath(v4);
      v2 = *(v4 + 4);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

- (BOOL)inParentHierarchy:(SKNode *)parent
{
  v4 = parent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    p_isa = &WeakRetained->super.super.isa;
    v7 = WeakRetained != 0;
    if (WeakRetained != v4 && WeakRetained != 0)
    {
      do
      {
        v9 = p_isa;
        p_isa = objc_loadWeakRetained(p_isa + 3);

        v7 = p_isa != 0;
      }

      while (p_isa != v4 && p_isa != 0);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addChild:(SKNode *)node
{
  v4 = node;
  [(SKNode *)self insertChild:v4 atIndex:[(NSMutableArray *)self->_children count]];
}

- (void)insertChild:(SKNode *)node atIndex:(NSInteger)index
{
  v6 = node;
  p_isa = &v6->super.super.isa;
  if (self->_children)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x277CBEAD8] raise:@"Attemped to add nil node" format:{@"Attemped to add nil node to parent: %@", self}];
    goto LABEL_21;
  }

  v9 = objc_opt_new();
  children = self->_children;
  self->_children = v9;

  if (!p_isa)
  {
    goto LABEL_6;
  }

LABEL_3:
  WeakRetained = objc_loadWeakRetained(p_isa + 3);

  if (WeakRetained)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attemped to add a SKNode which already has a parent: %@", p_isa}];
  }

  else
  {
    [p_isa setParent:self];
    [(SKNode *)self willChangeValueForKey:@"children"];
    SKCNode::insertChildAtIndex(self->_skcNode, [p_isa _backingNode], index);
    [(NSMutableArray *)self->_children insertObject:p_isa atIndex:index];
    scene = [(SKNode *)self scene];
    if (scene)
    {
      physicsBody = [p_isa physicsBody];

      if (physicsBody)
      {
        physicsWorld = [scene physicsWorld];
        physicsBody2 = [p_isa physicsBody];
        [physicsWorld addBody:physicsBody2];

        _backingNode = [p_isa _backingNode];
        (*(*_backingNode + 200))(_backingNode);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = p_isa;
        physicsWorld2 = [scene physicsWorld];
        field = [v16 field];
        [physicsWorld2 addField:field];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [p_isa _connectToScene:scene];
      }

      constraints = [p_isa constraints];
      v20 = constraints;
      if (constraints && [constraints count])
      {
        [scene _registerConstraintsForNode:p_isa];
      }

      if ([p_isa hasChildren])
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __30__SKNode_insertChild_atIndex___block_invoke;
        v21[3] = &unk_27830FEB0;
        v22 = scene;
        [p_isa enumerateChildNodesWithName:@".//SKNode" usingBlock:v21];
      }
    }

    [(SKNode *)self didChangeValueForKey:@"children"];
  }

LABEL_21:
}

void __30__SKNode_insertChild_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 physicsBody];

  if (v3)
  {
    v4 = [*(a1 + 32) physicsWorld];
    v5 = [v12 physicsBody];
    [v4 addBody:v5];

    v6 = [v12 _backingNode];
    (*(*v6 + 200))(v6);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = [*(a1 + 32) physicsWorld];
    v9 = [v7 field];
    [v8 addField:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 _connectToScene:*(a1 + 32)];
  }

  v10 = [v12 constraints];
  v11 = v10;
  if (v10 && [v10 count])
  {
    [*(a1 + 32) _registerConstraintsForNode:v12];
  }
}

- (CGRect)frame
{
  *v2.i64 = (*(*self->_skcNode + 120))(self->_skcNode, a2);
  v13.columns[0] = v2;
  v13.columns[1] = v3;
  v13.columns[2] = v4;
  v13.columns[3] = v5;
  AABB = SKCBoundingBoxGetAABB(&v13);
  v7 = vdupq_n_s32(0x447A0000u);
  v8 = vdivq_f32(vrndxq_f32(vmulq_f32(AABB, v7)), v7);
  v9 = v8.f32[0];
  v10 = v8.f32[1];
  v11 = v8.f32[2];
  v12 = v8.f32[3];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)removeChildAtIndex:(int64_t)index
{
  [(SKNode *)self willChangeValueForKey:@"children"];
  v6 = [(NSMutableArray *)self->_children objectAtIndex:index];
  scene = [(SKNode *)self scene];
  _removeChild(self, v6, scene);

  [(NSMutableArray *)self->_children removeObjectAtIndex:index];
  [(SKNode *)self didChangeValueForKey:@"children"];
}

- (void)removeChild:(id)child
{
  childCopy = child;
  if (childCopy)
  {
    [(SKNode *)self willChangeValueForKey:@"children"];
    scene = [(SKNode *)self scene];
    _removeChild(self, childCopy, scene);

    [(NSMutableArray *)self->_children removeExactObject:childCopy];
    [(SKNode *)self didChangeValueForKey:@"children"];
  }
}

- (void)removeChildrenInArray:(NSArray *)nodes
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = nodes;
  if (v4 && self->_children)
  {
    v23 = v4;
    [(SKNode *)self willChangeValueForKey:@"children"];
    scene = [(SKNode *)self scene];
    selfCopy = self;
    v7 = v4;
    v8 = scene;
    _pkPhysicsWorld = [(SKScene *)v8 _pkPhysicsWorld];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v7, "count")}];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v7;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          parent = [(SKNode *)v14 parent];
          v16 = parent == selfCopy;

          if (v16)
          {
            [v9 addObject:v14];
            _removeChild(selfCopy, v14, v8);
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    if (([_pkPhysicsWorld hasBodies] & 1) != 0 || (objc_msgSend(_pkPhysicsWorld, "hasFields") & 1) != 0 || -[SKScene _hasConstraints](v8, "_hasConstraints") || (-[SKScene avAudioEnvironmentNode](v8, "avAudioEnvironmentNode"), v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 == 0, v17, !v18))
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v9;
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v20)
      {
        v21 = *v26;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v19);
            }

            _unhookPhysicsAndConstraints(*(*(&v25 + 1) + 8 * j), v8);
          }

          v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v20);
      }
    }

    v4 = v23;
    [(NSMutableArray *)self->_children removeExactObjectsInArray:v10];
    [(SKNode *)selfCopy didChangeValueForKey:@"children"];
  }
}

- (void)removeAllChildren
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_children)
  {
    [(SKNode *)self willChangeValueForKey:@"children"];
    [(NSMutableDictionary *)self->_keyedSubSprites removeAllObjects];
    v3 = [(NSMutableArray *)self->_children copy];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [(SKNode *)self removeChild:*(*(&v8 + 1) + 8 * v7++), v8];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(SKNode *)self didChangeValueForKey:@"children"];
  }
}

- (void)setConstraints:(NSArray *)constraints
{
  v8 = constraints;
  v4 = [(NSArray *)v8 copy];
  v5 = self->_constraints;
  self->_constraints = v4;

  scene = [(SKNode *)self scene];
  if (scene)
  {
    v7 = self->_constraints;
    if (v7 && [(NSArray *)v7 count])
    {
      [scene _registerConstraintsForNode:self];
    }

    else
    {
      [scene _removeConstraintsForNode:self];
    }
  }

  SKCNode::recomputeFlags(self->_skcNode, 1);
}

- (NSArray)constraints
{
  v2 = [(NSArray *)self->_constraints copy];

  return v2;
}

- (void)addChild:(id)child withKey:(id)key
{
  childCopy = child;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [(NSMutableDictionary *)self->_keyedSubSprites objectForKey:keyCopy];
    if (v7)
    {
      [(NSMutableDictionary *)self->_keyedSubSprites removeObjectForKey:keyCopy];
      [(SKNode *)self removeChild:v7];
    }

    if (childCopy)
    {
      [(SKNode *)self addChild:childCopy];
      keyedSubSprites = self->_keyedSubSprites;
      if (!keyedSubSprites)
      {
        v9 = objc_opt_new();
        v10 = self->_keyedSubSprites;
        self->_keyedSubSprites = v9;

        keyedSubSprites = self->_keyedSubSprites;
      }

      [(NSMutableDictionary *)keyedSubSprites setObject:childCopy forKey:keyCopy];
    }
  }
}

- (SKNode)childNodeWithName:(NSString *)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__SKNode_childNodeWithName___block_invoke;
  v5[3] = &unk_27830FF70;
  v5[4] = &v6;
  [(SKNode *)self enumerateChildNodesWithName:name usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)objectForKeyedSubscript:(NSString *)name
{
  v4 = name;
  v10 = 0;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SKNode_objectForKeyedSubscript___block_invoke;
  v8[3] = &unk_27830FEB0;
  v6 = v5;
  v9 = v6;
  [(SKNode *)self _enumerateChildNodesWithName:v4 usingBlock:v8 stopPointer:&v10];

  return v6;
}

- (void)_enumerateChildNodesWithName:(id)name usingBlock:(id)block stopPointer:(BOOL *)pointer
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  if (!*pointer)
  {
    pointerCopy = pointer;
    selfCopy = self;
    [nameCopy componentsSeparatedByString:@"/"];
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v27 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v11)
    {
      v12 = *v25;
      v13 = 1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if ([(NSString *)v15 length])
          {
            if ([(NSString *)v15 isEqualToString:@"."])
            {
              LODWORD(v22) = 0;
              v23[0] = 0;
              std::vector<Token>::push_back[abi:ne200100](&v28, &v22);
            }

            else
            {
              if ([(NSString *)v15 isEqualToString:@".."])
              {
                LODWORD(v22) = 2;
                v23[0] = 0;
              }

              else
              {
                Token::Token(&v22, v15);
              }

              std::vector<Token>::push_back[abi:ne200100](&v28, &v22);
            }
          }

          else if (v13)
          {
            while (1)
            {
              parent = [(SKNode *)selfCopy parent];
              v17 = parent == 0;

              if (v17)
              {
                break;
              }

              parent2 = [(SKNode *)selfCopy parent];

              selfCopy = parent2;
            }
          }

          else
          {
            LODWORD(v22) = 1;
            v23[0] = 0;
            std::vector<Token>::push_back[abi:ne200100](&v28, &v22);
          }

          v13 = 0;
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        v13 = 0;
      }

      while (v11);
    }

    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    memset(v21, 0, sizeof(v21));
    std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v21, v28, v29, (v29 - v28) >> 4);
    [(SKNode *)selfCopy _processSearchTokens:v21 visited:&v22 usingBlock:blockCopy stopPointer:pointerCopy];
    v31 = v21;
    std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v31);
    std::__tree<SKNode * {__strong}>::destroy(&v22, v23[0]);
    v22 = &v28;
    std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v22);
  }
}

- (void)_processSearchTokens:()vector<Token visited:(std:(void *)visited :(id)a5 allocator<Token>> *)a3 usingBlock:(BOOL *)block stopPointer:
{
  v118 = *MEMORY[0x277D85DE8];
  v10 = a5;
  selfCopy = self;
  p_isa = &selfCopy->super.super.isa;
  v111 = &selfCopy->super.super.isa;
  var0 = a3->var0;
  var1 = a3->var1;
  v16 = (a3->var0 + 16);
  v15 = *a3->var0;
  if (v16 == var1)
  {
    if (v15 <= 2)
    {
      if (v15)
      {
        if (v15 != 2)
        {
          goto LABEL_125;
        }

        parent = [(SKNode *)selfCopy parent];

        if (parent)
        {
          parent2 = [v111 parent];
          v26 = v111;
          v111 = parent2;
        }

        if (*block)
        {
          goto LABEL_125;
        }

        v27 = *(visited + 1);
        if (v27)
        {
          v28 = visited + 8;
          do
          {
            v29 = v27[4];
            v30 = v29 >= v111;
            v31 = v29 < v111;
            if (v30)
            {
              v28 = v27;
            }

            v27 = v27[v31];
          }

          while (v27);
          if (v28 != (visited + 8) && v111 >= v28[4])
          {
            goto LABEL_125;
          }
        }
      }

      else
      {
        if (*block)
        {
          goto LABEL_125;
        }

        v65 = *(visited + 1);
        if (v65)
        {
          v66 = visited + 8;
          do
          {
            v67 = v65[4];
            v30 = v67 >= selfCopy;
            v68 = v67 < selfCopy;
            if (v30)
            {
              v66 = v65;
            }

            v65 = v65[v68];
          }

          while (v65);
          if (v66 != (visited + 8) && v66[4] <= selfCopy)
          {
            goto LABEL_125;
          }
        }
      }

      std::__tree<SKNode * {__strong}>::__emplace_unique_key_args<SKNode * {__strong},SKNode * const {__strong}&>(visited, &v111);
      v10[2](v10, v111, block);
      goto LABEL_125;
    }

    if (v15 == 3)
    {
      if (selfCopy->_children)
      {
        v69 = *(var0 + 1);
        v109 = 0;
        v108 = 0;
        v110 = 0;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v70 = p_isa[4];
        v71 = [v70 countByEnumeratingWithState:&v104 objects:v117 count:16];
        if (v71)
        {
          v72 = *v105;
          v73 = (visited + 8);
          do
          {
            for (i = 0; i != v71; ++i)
            {
              if (*v105 != v72)
              {
                objc_enumerationMutation(v70);
              }

              v75 = *(*(&v104 + 1) + 8 * i);
              v112 = v75;
              v76 = *v73;
              if (!*v73)
              {
                goto LABEL_128;
              }

              v77 = (visited + 8);
              do
              {
                v78 = *(v76 + 4);
                v30 = v78 >= v75;
                v79 = v78 < v75;
                if (v30)
                {
                  v77 = v76;
                }

                v76 = *&v76[8 * v79];
              }

              while (v76);
              if (v77 == v73 || v75 < v77[4])
              {
LABEL_128:
                if (SKNodeNameMatches(v69, v75))
                {
                  std::__tree<SKNode * {__strong}>::__emplace_unique_key_args<SKNode * {__strong},SKNode * const {__strong}&>(visited, &v112);
                  std::vector<SKNode * {__strong}>::push_back[abi:ne200100](&v108, &v112);
                }
              }
            }

            v71 = [v70 countByEnumeratingWithState:&v104 objects:v117 count:16];
          }

          while (v71);
        }

        if (!*block)
        {
          v80 = v108;
          do
          {
            if (v80 == v109)
            {
              break;
            }

            v10[2](v10, *v80++, block);
          }

          while (!*block);
        }

        v112 = &v108;
        std::vector<UITouch * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v112);
      }
    }

    else if (v15 == 4 && selfCopy->_children)
    {
      v39 = *(var0 + 1);
      v81 = v10;
      NSClassFromString(v39);
      v109 = 0;
      v108 = 0;
      v110 = 0;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v40 = v111[4];
      v41 = [v40 countByEnumeratingWithState:&v100 objects:v116 count:16];
      if (v41)
      {
        v42 = *v101;
        v43 = (visited + 8);
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v101 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v100 + 1) + 8 * j);
            v112 = v45;
            v46 = *v43;
            if (!*v43)
            {
              goto LABEL_66;
            }

            v47 = (visited + 8);
            do
            {
              v48 = *(v46 + 4);
              v30 = v48 >= v45;
              v49 = v48 < v45;
              if (v30)
              {
                v47 = v46;
              }

              v46 = *&v46[8 * v49];
            }

            while (v46);
            if (v47 == v43 || v45 < v47[4])
            {
LABEL_66:
              if (SKNodeNameMatches(v39, v45) || (objc_opt_isKindOfClass() & 1) != 0)
              {
                std::__tree<SKNode * {__strong}>::__emplace_unique_key_args<SKNode * {__strong},SKNode * const {__strong}&>(visited, &v112);
                std::vector<SKNode * {__strong}>::push_back[abi:ne200100](&v108, &v112);
              }
            }
          }

          v41 = [v40 countByEnumeratingWithState:&v100 objects:v116 count:16];
        }

        while (v41);
      }

      v10 = v81;
      if (!*block)
      {
        v50 = v108;
        do
        {
          if (v50 == v109)
          {
            break;
          }

          v81[2](v81, *v50++, block);
        }

        while (!*block);
      }

      v112 = &v108;
      std::vector<UITouch * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v112);
    }
  }

  else
  {
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (v15 == 3)
        {
          if (selfCopy->_children)
          {
            v57 = *(var0 + 1);
            v58 = a3->var1;
            v110 = 0;
            v108 = 0;
            v109 = 0;
            std::vector<Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<Token const*>,std::__wrap_iter<Token const*>>(&v108, v16, v58, (v58 - v16) >> 4);
            v90 = 0u;
            v91 = 0u;
            v89 = 0u;
            v88 = 0u;
            v59 = v111[4];
            v60 = [v59 countByEnumeratingWithState:&v88 objects:v114 count:16];
            if (v60)
            {
              v61 = *v89;
              do
              {
                for (k = 0; k != v60; ++k)
                {
                  if (*v89 != v61)
                  {
                    objc_enumerationMutation(v59);
                  }

                  if (!*block)
                  {
                    v63 = *(*(&v88 + 1) + 8 * k);
                    if (SKNodeNameMatches(v57, v63))
                    {
                      memset(v87, 0, sizeof(v87));
                      std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v87, v108, v109, (v109 - v108) >> 4);
                      [v63 _processSearchTokens:v87 visited:visited usingBlock:v10 stopPointer:block];
                      v112 = v87;
                      std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
                    }
                  }
                }

                v60 = [v59 countByEnumeratingWithState:&v88 objects:v114 count:16];
              }

              while (v60);
            }

            v112 = &v108;
            std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
          }
        }

        else if (v15 == 4 && selfCopy->_children)
        {
          v17 = *(var0 + 1);
          NSClassFromString(v17);
          v18 = a3->var1;
          v110 = 0;
          v108 = 0;
          v109 = 0;
          std::vector<Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<Token const*>,std::__wrap_iter<Token const*>>(&v108, v16, v18, (v18 - v16) >> 4);
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v19 = v111[4];
          v20 = [v19 countByEnumeratingWithState:&v83 objects:v113 count:16];
          if (v20)
          {
            v21 = *v84;
            do
            {
              for (m = 0; m != v20; ++m)
              {
                if (*v84 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                if (!*block)
                {
                  v23 = *(*(&v83 + 1) + 8 * m);
                  if (SKNodeNameMatches(v17, v23) || (objc_opt_isKindOfClass() & 1) != 0)
                  {
                    memset(v82, 0, sizeof(v82));
                    std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v82, v108, v109, (v109 - v108) >> 4);
                    [v23 _processSearchTokens:v82 visited:visited usingBlock:v10 stopPointer:block];
                    v112 = v82;
                    std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
                  }
                }
              }

              v20 = [v19 countByEnumeratingWithState:&v83 objects:v113 count:16];
            }

            while (v20);
          }

          v112 = &v108;
          std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
        }

        goto LABEL_125;
      }

      parent3 = [(SKNode *)selfCopy parent];

      if (parent3)
      {
        parent4 = [v111 parent];
        v53 = v111;
        v111 = parent4;
      }

      v54 = a3->var1;
      v110 = 0;
      v108 = 0;
      v109 = 0;
      std::vector<Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<Token const*>,std::__wrap_iter<Token const*>>(&v108, v16, v54, (v54 - v16) >> 4);
      v55 = v111;
      memset(v98, 0, sizeof(v98));
      std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v98, v108, v109, (v109 - v108) >> 4);
      v56 = v98;
      [v55 _processSearchTokens:v98 visited:visited usingBlock:v10 stopPointer:block];
LABEL_91:
      v112 = v56;
      std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
      v112 = &v108;
      std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
      goto LABEL_125;
    }

    if (!v15)
    {
      v109 = 0;
      v108 = 0;
      v110 = 0;
      std::vector<Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<Token const*>,std::__wrap_iter<Token const*>>(&v108, v16, var1, (var1 - v16) >> 4);
      v64 = v111;
      memset(v99, 0, sizeof(v99));
      std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v99, v108, v109, (v109 - v108) >> 4);
      v56 = v99;
      [v64 _processSearchTokens:v99 visited:visited usingBlock:v10 stopPointer:block];
      goto LABEL_91;
    }

    if (v15 == 1)
    {
      if (!*block)
      {
        v109 = 0;
        v108 = 0;
        v110 = 0;
        std::vector<Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<Token const*>,std::__wrap_iter<Token const*>>(&v108, v16, var1, (var1 - v16) >> 4);
        v32 = v111;
        memset(v97, 0, sizeof(v97));
        std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v97, v108, v109, (v109 - v108) >> 4);
        [v32 _processSearchTokens:v97 visited:visited usingBlock:v10 stopPointer:block];
        v112 = v97;
        std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
        v112 = &v108;
        std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v112);
        p_isa = v111;
      }

      v33 = p_isa[4];
      if (v33)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v34 = v33;
        v35 = [v34 countByEnumeratingWithState:&v93 objects:v115 count:16];
        if (v35)
        {
          v36 = *v94;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v94 != v36)
              {
                objc_enumerationMutation(v34);
              }

              if (!*block)
              {
                v38 = *(*(&v93 + 1) + 8 * n);
                memset(v92, 0, sizeof(v92));
                std::vector<Token>::__init_with_size[abi:ne200100]<Token*,Token*>(v92, a3->var0, a3->var1, (a3->var1 - a3->var0) >> 4);
                [v38 _processSearchTokens:v92 visited:visited usingBlock:v10 stopPointer:block];
                v108 = v92;
                std::vector<Token>::__destroy_vector::operator()[abi:ne200100](&v108);
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v93 objects:v115 count:16];
          }

          while (v35);
        }
      }
    }
  }

LABEL_125:
}

- (NSArray)children
{
  children = self->_children;
  if (children)
  {
    array = [(NSMutableArray *)children copy];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)_descendants
{
  array = [MEMORY[0x277CBEB18] array];
  [(SKNode *)self _descendantsToMutableArray:array];

  return array;
}

- (void)_descendantsToMutableArray:(id)array
{
  v15 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [arrayCopy addObject:{v9, v10}];
        [v9 _descendantsToMutableArray:arrayCopy];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_descendantsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  array = [MEMORY[0x277CBEB18] array];
  [(SKNode *)self _descendantsWithPredicate:predicateCopy toMutableArray:array];

  return array;
}

- (void)_descendantsWithPredicate:(id)predicate toMutableArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  arrayCopy = array;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_children;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (predicateCopy[2](predicateCopy, v12))
        {
          [arrayCopy addObject:{v12, v13}];
        }

        [v12 _descendantsWithPredicate:predicateCopy toMutableArray:{arrayCopy, v13}];
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)runAction:(SKAction *)action
{
  v4 = action;
  if (v4)
  {
    v6 = v4;
    v5 = [(SKAction *)v4 copy];
    [(SKNode *)self _runAction:v5];

    v4 = v6;
  }
}

- (void)_runAction:(id)action
{
  actionCopy = action;
  actions = self->_actions;
  v9 = actionCopy;
  if (!actions)
  {
    v6 = objc_opt_new();
    v7 = self->_actions;
    self->_actions = v6;

    actions = self->_actions;
    actionCopy = v9;
  }

  [(NSMutableArray *)actions addObject:actionCopy];
  caction = [v9 caction];
  (*(*caction + 40))(caction, *(self->_skcNode + 42));
  operator new();
}

- (void)runAction:(SKAction *)action completion:(void *)block
{
  v11 = action;
  v6 = block;
  if (v11)
  {
    v7 = [(SKAction *)v11 copy];
    v8 = MEMORY[0x21CF0AB10](v6);
    caction = [v7 caction];
    v10 = *(caction + 80);
    *(caction + 80) = v8;

    [(SKNode *)self _runAction:v7];
  }
}

- (void)setSpeed:(CGFloat)speed
{
  v3 = speed;
  skcNode = self->_skcNode;
  skcNode[42] = v3;
  SKCNode::recomputeFlags(skcNode, 1);
}

- (void)setAlpha:(CGFloat)alpha
{
  skcNode = self->_skcNode;
  v4 = alpha;
  v5 = v4;
  SKCNode::setAlpha(skcNode, &v5);
}

- (void)runAction:(SKAction *)action withKey:(NSString *)key
{
  v11 = action;
  v6 = key;
  if (v6)
  {
    [(SKNode *)self removeActionForKey:v6];
    if (v11)
    {
      v7 = [(SKAction *)v11 copy];
      keyedActions = self->_keyedActions;
      if (!keyedActions)
      {
        v9 = objc_opt_new();
        v10 = self->_keyedActions;
        self->_keyedActions = v9;

        keyedActions = self->_keyedActions;
      }

      [(NSMutableDictionary *)keyedActions setObject:v7 forKey:v6];
      [(SKNode *)self _runAction:v7];
    }
  }
}

- (SKAction)actionForKey:(NSString *)key
{
  v4 = key;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_keyedActions objectForKey:v4];
    if (([(NSMutableArray *)self->_actions containsObject:v5]& 1) != 0)
    {
      goto LABEL_5;
    }

    [(NSMutableDictionary *)self->_keyedActions removeObjectForKey:v4];
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)removeActionForKey:(NSString *)key
{
  v4 = key;
  if (v4)
  {
    v7 = v4;
    v5 = [(NSMutableDictionary *)self->_keyedActions objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      SKCNode::removeAction(self->_skcNode, [v5 caction]);
      [(NSMutableDictionary *)self->_keyedActions removeObjectForKey:v7];
    }

    v4 = v7;
  }
}

- (void)removeAllActions
{
  v14 = *MEMORY[0x277D85DE8];
  actions = self->_actions;
  if (actions)
  {
    v4 = [(NSMutableArray *)actions copy];
    [(NSMutableDictionary *)self->_keyedActions removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          SKCNode::removeAction(self->_skcNode, [*(*(&v9 + 1) + 8 * i) caction]);
        }

        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)containingView
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parent = [(SKNode *)v3 parent];

      v3 = parent;
      if (!parent)
      {
        goto LABEL_8;
      }
    }

    parent = [(SKNode *)v3 view];
  }

  else
  {
    parent = 0;
  }

LABEL_8:

  return parent;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  name = [(SKNode *)self name];
  [(SKNode *)self position];
  v6 = NSStringFromCGPoint(v15);
  [(SKNode *)self xScale];
  v8 = v7;
  [(SKNode *)self yScale];
  v10 = v9;
  [(SKNode *)self calculateAccumulatedFrame];
  v11 = NSStringFromCGRect(v16);
  v12 = [v3 stringWithFormat:@"<%@> name:'%@' position:%@ scale:{%.2f, %.2f} accumulatedFrame:%@", v4, name, v6, v8, v10, v11];

  return v12;
}

- (void)setPhysicsBody:(SKPhysicsBody *)physicsBody
{
  v9 = physicsBody;
  if (*(self->_skcNode + 29) != v9)
  {
    scene = [(SKNode *)self scene];
    v6 = *(self->_skcNode + 29);
    if (v6)
    {
      [v6 setRepresentedObject:0];
      if (scene)
      {
        physicsWorld = [scene physicsWorld];
        [physicsWorld removeBody:*(self->_skcNode + 29)];
      }
    }

    objc_storeStrong(self->_skcNode + 29, physicsBody);
    if (v9)
    {
      [(SKPhysicsBody *)v9 setRepresentedObject:self];
      [(SKPhysicsBody *)v9 setPostStepBlock:&__block_literal_global_5];
      *(self->_skcNode + 15) = SKCNode::getScale(self->_skcNode);
      (*(*self->_skcNode + 200))(self->_skcNode);
      if (scene)
      {
        physicsWorld2 = [scene physicsWorld];
        [physicsWorld2 addBody:v9];
      }
    }

    SKCNode::recomputeFlags(self->_skcNode, 1);
  }
}

- (CGPoint)position
{
  v2 = vcvtq_f64_f32(SKCNode::getTranslation(self->_skcNode).n128_u64[0]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  *&position.x = position.x;
  y = position.y;
  SKCNode::setTranslation(self->_skcNode, position, y);
}

- (CGRect)calculateAccumulatedFrame
{
  v12.columns[0] = SKCNode::getAccumulatedBoundingBox(self->_skcNode);
  v12.columns[1] = v2;
  v12.columns[2] = v3;
  v12.columns[3] = v4;
  AABB = SKCBoundingBoxGetAABB(&v12);
  v6 = vdupq_n_s32(0x447A0000u);
  v7 = vdivq_f32(vrndxq_f32(vmulq_f32(AABB, v6)), v6);
  v8 = v7.f32[0];
  v9 = v7.f32[1];
  v10 = v7.f32[2];
  v11 = v7.f32[3];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setXRotation:(double)rotation
{
  Rotation = SKCNode::getRotation(self->_skcNode);
  rotationCopy = rotation;
  Rotation.n128_f32[0] = rotationCopy;
  skcNode = self->_skcNode;

  SKCNode::setRotation(skcNode, Rotation);
}

- (void)setYRotation:(double)rotation
{
  Rotation = SKCNode::getRotation(self->_skcNode);
  rotationCopy = rotation;
  Rotation.n128_f32[1] = rotationCopy;
  skcNode = self->_skcNode;

  SKCNode::setRotation(skcNode, Rotation);
}

- (void)setXScale:(CGFloat)xScale
{
  [(SKNode *)self willChangeValueForKey:@"size"];
  Scale = SKCNode::getScale(self->_skcNode);
  v6 = xScale;
  Scale.n128_f32[0] = v6;
  SKCNode::setScale(self->_skcNode, Scale);

  [(SKNode *)self didChangeValueForKey:@"size"];
}

- (void)setYScale:(CGFloat)yScale
{
  [(SKNode *)self willChangeValueForKey:@"size"];
  Scale = SKCNode::getScale(self->_skcNode);
  v6 = yScale;
  Scale.n128_f32[1] = v6;
  SKCNode::setScale(self->_skcNode, Scale);

  [(SKNode *)self didChangeValueForKey:@"size"];
}

- (void)setScale:(CGFloat)scale
{
  [(SKNode *)self setXScale:?];

  [(SKNode *)self setYScale:scale];
}

- (void)setPaused:(BOOL)paused
{
  v38 = *MEMORY[0x277D85DE8];
  skcNode = self->_skcNode;
  if (skcNode[172] != paused)
  {
    v5 = paused;
    (*(*skcNode + 160))(skcNode, paused);
    v6 = skCurrentTime();
    v7 = [(NSMutableArray *)self->_actions copy];
    v8 = self->_children;
    if (*(self->_skcNode + 172) == 1)
    {
      v33 = 0uLL;
      v34 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v10)
      {
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            if (([v13 finished] & 1) == 0)
            {
              SKCAction::wasPausedWithTargetAtTime([v13 caction], self->_skcNode, v6);
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v29 = 0uLL;
      v30 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v15)
      {
        v16 = *v28;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v27 + 1) + 8 * j);
            if (([v18 finished] & 1) == 0)
            {
              SKCAction::willResumeWithTargetAtTime([v18 caction], self->_skcNode, v6);
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v15);
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v8;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v20)
    {
      v21 = *v24;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v23 + 1) + 8 * k) setPaused:{v5, v23}];
        }

        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v20);
    }
  }
}

- (BOOL)containsPoint:(CGPoint)p
{
  y = p.y;
  x = p.x;
  [(SKNode *)self calculateAccumulatedFrame];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (BOOL)containsPoint:(CGPoint)point withRadius:(double)radius
{
  y = point.y;
  x = point.x;
  [(SKNode *)self calculateAccumulatedFrame];
  *&v9 = v9;
  *&v10 = v10;
  v11 = x;
  v12 = vabds_f32(v11, *&v9);
  v13 = *&v10 * 0.5;
  if (v13 + radius < v12)
  {
    return 0;
  }

  v14 = v7;
  v15 = v8;
  v16 = y;
  v17 = vabds_f32(v16, v14);
  v18 = v15 * 0.5;
  if (v18 + radius < v17)
  {
    return 0;
  }

  return v12 <= v13 || v17 <= v18 || radius * radius >= (((v17 - v13) * (v17 - v13)) + ((v12 - v18) * (v12 - v18)));
}

- (id)nodeAtPoint:(CGPoint)point recursive:(BOOL)recursive
{
  selfCopy = self;
  v5.f32[0] = point.x;
  y = point.y;
  v5.f32[1] = y;
  v5.i32[2] = 0;
  v5.i32[3] = 1.0;
  v7 = SKCNode::nodeAtPoint(self->_skcNode, v5);
  if (v7)
  {
    selfCopy = *(v7 + 8);
  }

  v8 = selfCopy;

  return v8;
}

- (SKNode)nodeAtPoint:(CGPoint)p
{
  selfCopy = self;
  v4.f32[0] = p.x;
  y = p.y;
  v4.f32[1] = y;
  v4.i32[2] = 0;
  v4.i32[3] = 1.0;
  v6 = SKCNode::nodeAtPoint(self->_skcNode, v4);
  if (v6)
  {
    selfCopy = *(v6 + 8);
  }

  v7 = selfCopy;

  return v7;
}

- (NSArray)nodesAtPoint:(CGPoint)p
{
  v9 = &v9;
  v10 = &v9;
  skcNode = self->_skcNode;
  v4.f32[0] = p.x;
  y = p.y;
  v4.f32[1] = y;
  v11 = 0;
  v4.i32[2] = 0;
  v4.i32[3] = 1.0;
  SKCNode::sortedNodesAtPoint(skcNode, v4);
  array = [MEMORY[0x277CBEB18] array];
  for (i = v10; i != &v9; i = i[1])
  {
    [array addObject:*(i[2] + 8)];
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(&v9);

  return array;
}

- (CGPoint)convertPointFromParent:(CGPoint)parent
{
  x = parent.x;
  v11 = x;
  y = parent.y;
  v12 = y;
  *v5.i64 = (*(*self->_skcNode + 112))(self->_skcNode, a2);
  v9 = vcvtq_f64_f32(vadd_f32(v8, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v5, v11), v6, v12), 0, v7)));
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (CGPoint)convertPointToParent:(CGPoint)parent
{
  x = parent.x;
  v11 = x;
  y = parent.y;
  v12 = y;
  *v5.i64 = (*(*self->_skcNode + 104))(self->_skcNode, a2);
  v9 = vcvtq_f64_f32(vadd_f32(v8, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v5, v11), v6, v12), 0, v7)));
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromNode:(SKNode *)node
{
  y = point.y;
  x = point.x;
  v7 = node;
  v8 = v7;
  if (v7 && v7 != self)
  {
    skcNode = self->_skcNode;
    _backingNode = [(SKNode *)v7 _backingNode];
    v11 = y;
    v12.f32[0] = x;
    v12.f32[1] = v11;
    v12.i32[2] = 0;
    v12.i32[3] = 1.0;
    v13 = SKCNode::convertPointFromNode(skcNode, _backingNode, v12);
    x = *&v13;
    y = *(&v13 + 1);
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toNode:(SKNode *)node
{
  y = point.y;
  x = point.x;
  v7 = node;
  v8 = v7;
  if (v7 && v7 != self)
  {
    skcNode = self->_skcNode;
    _backingNode = [(SKNode *)v7 _backingNode];
    v11 = y;
    v12.f32[0] = x;
    v12.f32[1] = v11;
    v12.i32[2] = 0;
    v12.i32[3] = 1.0;
    v13 = SKCNode::convertPointToNode(skcNode, _backingNode, v12);
    x = *&v13;
    y = *(&v13 + 1);
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGSize)size
{
  v2 = vcvtq_f64_f32(vmul_f32(*(self->_skcNode + 336), *&vabsq_f32(SKCNode::getScale(self->_skcNode))));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (void)dealloc
{
  skcNode = self->_skcNode;
  if (skcNode)
  {
    (*(*skcNode + 88))(skcNode, a2);
  }

  [(NSMutableArray *)self->_children removeAllObjects];
  v4.receiver = self;
  v4.super_class = SKNode;
  [(SKNode *)&v4 dealloc];
}

- (double)globalBoundingVerts
{
  *v1.i64 = SKCNode::getWorldBoundingBox(*(self + 16));
  v6.columns[0] = v1;
  v6.columns[1] = v2;
  v6.columns[2] = v3;
  v6.columns[3] = v4;
  return SKCBoundingBoxGetVerts(&v6);
}

- (double)globalAccumulatedBoundingVerts
{
  *v1.i64 = SKCNode::getWorldAccumulatedBoundingBox(*(self + 16));
  v6.columns[0] = v1;
  v6.columns[1] = v2;
  v6.columns[2] = v3;
  v6.columns[3] = v4;
  return SKCBoundingBoxGetVerts(&v6);
}

- (NSDictionary)attributeValues
{
  attributeValues = self->_attributeValues;
  if (!attributeValues)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_attributeValues;
    self->_attributeValues = dictionary;

    attributeValues = self->_attributeValues;
  }

  v6 = [(NSMutableDictionary *)attributeValues copy];

  return v6;
}

- (void)setAttributeValues:(NSDictionary *)attributeValues
{
  v4 = attributeValues;
  v10 = v4;
  if (!self->_attributeValues)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = self->_attributeValues;
    self->_attributeValues = dictionary;

    v4 = v10;
  }

  v7 = [(NSDictionary *)v4 mutableCopy];
  v8 = self->_attributeValues;
  self->_attributeValues = v7;

  skcNode = self->_skcNode;
  *(skcNode + 16) = 1;
  SKCNode::setFlags(skcNode, 2, 1);
}

- (SKAttributeValue)valueForAttributeNamed:(NSString *)key
{
  v4 = key;
  attributeValues = self->_attributeValues;
  if (!attributeValues)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = self->_attributeValues;
    self->_attributeValues = dictionary;

    attributeValues = self->_attributeValues;
  }

  v8 = [(NSMutableDictionary *)attributeValues objectForKey:v4];

  return v8;
}

- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key
{
  v13 = value;
  v6 = key;
  v7 = v13;
  v8 = v6;
  attributeValues = self->_attributeValues;
  if (!attributeValues)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = self->_attributeValues;
    self->_attributeValues = dictionary;

    attributeValues = self->_attributeValues;
    v7 = v13;
  }

  [(NSMutableDictionary *)attributeValues setObject:v7 forKey:v8];
  skcNode = self->_skcNode;
  *(skcNode + 16) = 1;
  SKCNode::setFlags(skcNode, 64, 1);
}

- (void)setNeedsFocusUpdate
{
  v3 = [NSClassFromString(&cfstr_Uifocussystem.isa) focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [NSClassFromString(&cfstr_Uifocussystem.isa) focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (NSArray)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)_isEffectivelyHidden
{
  parent = [(SKNode *)self parent];
  if (([parent _isEffectivelyHidden] & 1) != 0 || -[SKNode isHidden](self, "isHidden"))
  {
    v4 = 1;
  }

  else
  {
    [(SKNode *)self alpha];
    v4 = v5 <= 0.00000011920929;
  }

  return v4;
}

- (BOOL)_isEligibleForFocus
{
  if ([(SKNode *)self isUserInteractionEnabled])
  {
    v3 = ![(SKNode *)self _isEffectivelyHidden];
  }

  else
  {
    v3 = 0;
  }

  if ([(SKNode *)self canBecomeFocused])
  {
    v4 = self->_focusBehavior == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = SKGetLinkedOnOrAfter(720896);
  v6 = (v5 ^ 1 | v4) & v3;
  if (((v5 ^ 1 | v4) & 1) == 0 && ((v3 ^ 1) & 1) == 0)
  {
    v6 = self->_focusBehavior != 0;
  }

  return v6 & 1;
}

- (CGPoint)convertPoint:(CGPoint)cgpoint toCoordinateSpace:(id)space
{
  y = cgpoint.y;
  x = cgpoint.x;
  spaceCopy = space;
  if (spaceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKNode *)self convertPoint:spaceCopy toNode:x, y];
      x = v8;
      y = v9;
    }

    else
    {
      scene = [(SKNode *)self scene];
      view = [(SKScene *)scene view];
      v12 = view;
      if (scene && view)
      {
        [(SKNode *)self convertPoint:scene toNode:x, y];
        [(SKView *)v12 convertPoint:spaceCopy toCoordinateSpace:CGPointConvertFromSceneToView(scene, v12, v17).n128_f64[0]];
        x = v13;
        y = v14;
      }
    }
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)cgpoint fromCoordinateSpace:(id)space
{
  y = cgpoint.y;
  x = cgpoint.x;
  spaceCopy = space;
  if (spaceCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKNode *)self convertPoint:spaceCopy fromNode:x, y];
      x = v8;
      y = v9;
    }

    else
    {
      scene = [(SKNode *)self scene];
      view = [(SKScene *)scene view];
      v12 = view;
      if (scene && view)
      {
        [(SKView *)view convertPoint:spaceCopy fromCoordinateSpace:x, y];
        [(SKNode *)self convertPoint:scene fromNode:CGPointConvertFromViewToScene(v12, scene, v17).n128_f64[0]];
        x = v13;
        y = v14;
      }
    }
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [(SKNode *)self convertPoint:spaceCopy toCoordinateSpace:MinX, CGRectGetMinY(v26)];
  v12 = v11;
  v14 = v13;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [(SKNode *)self convertPoint:spaceCopy toCoordinateSpace:MaxX, CGRectGetMaxY(v28)];
  v17 = v16;
  v19 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v14;
  }

  else
  {
    v20 = v19;
  }

  v21 = v12;
  v22 = v20;
  v23 = vabdd_f64(v12, v17);
  v24 = vabdd_f64(v14, v19);
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [(SKNode *)self convertPoint:spaceCopy fromCoordinateSpace:MinX, CGRectGetMinY(v26)];
  v12 = v11;
  v14 = v13;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [(SKNode *)self convertPoint:spaceCopy fromCoordinateSpace:MaxX, CGRectGetMaxY(v28)];
  v17 = v16;
  v19 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v14;
  }

  else
  {
    v20 = v19;
  }

  v21 = v12;
  v22 = v20;
  v23 = vabdd_f64(v12, v17);
  v24 = vabdd_f64(v14, v19);
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)d onObject:(id)object outOptions:(id *)options
{
  dCopy = d;
  objectCopy = object;
  if ([dCopy isEqualToString:@"com.apple.SpriteKit.SKNode"])
  {
    children = [objectCopy children];

    if (children)
    {
      children = [objectCopy children];
    }
  }

  else
  {
    children = 0;
  }

  return children;
}

+ (id)debugHierarchyPropertyDescriptions
{
  v35[18] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"alpha");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf");
  v33 = Mutable;
  v35[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"constraints");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v5, @"propertyFormat", @"objectInfo");
  v32 = v5;
  v35[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"frame");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v6, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v31 = v6;
  v35[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"hidden");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v30 = v7;
  v35[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"name");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  if (*MEMORY[0x277CC2130])
  {
    CFDictionaryAddValue(v8, @"propertyFormat", *MEMORY[0x277CC2130]);
  }

  v29 = v8;
  v35[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"paused");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v9, @"propertyFormat", @"b");
  v28 = v9;
  v35[5] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"physicsBody");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v10, @"propertyFormat", @"objectInfo");
  v27 = v10;
  v35[6] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v11, @"propertyName", @"position");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v11, @"propertyFormat", @"CGf, CGf");
  v26 = v11;
  v35[7] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v12, @"propertyName", @"reachConstraints");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v12, @"propertyFormat", @"objectInfo");
  v25 = v12;
  v35[8] = v12;
  v13 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v13, @"propertyName", @"speed");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v13, @"propertyFormat", @"CGf");
  v35[9] = v13;
  v14 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v14, @"propertyName", @"userData");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v14, @"propertyFormat", @"objectInfo");
  v35[10] = v14;
  v15 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v15, @"propertyName", @"userInteractionEnabled");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v15, @"propertyFormat", @"b");
  v35[11] = v15;
  v16 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v16, @"propertyName", @"xScale");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v16, @"propertyFormat", @"CGf");
  v35[12] = v16;
  v17 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v17, @"propertyName", @"yScale");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v17, @"propertyFormat", @"CGf");
  v35[13] = v17;
  v18 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v18, @"propertyName", @"zPosition");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v18, @"propertyFormat", @"CGf");
  v35[14] = v18;
  v19 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v19, @"propertyName", @"zRotation");
  CFDictionaryAddValue(v19, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v19, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v19, @"propertyFormat", @"CGf");
  v35[15] = v19;
  v20 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v20, @"propertyName", @"anchorPoint");
  CFDictionaryAddValue(v20, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v20, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v20, @"propertyFormat", @"CGf, CGf");
  v35[16] = v20;
  v21 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v21, @"propertyName", @"untransformedSize");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v21, @"propertyFormat", @"CGf, CGf");
  valuePtr = 8;
  v22 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v21, @"visibility", v22);
  CFRelease(v22);
  v35[17] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:18];

  return v23;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"anchorPoint"])
  {
    [objectCopy _anchorPoint];
    v41 = v10;
    v42 = v11;
    v12 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = CFNumberCreate(0, kCFNumberCGFloatType, &v41 + v13);
      v14 = 0;
      v12[v13] = v16;
      v13 = 1;
    }

    while ((v15 & 1) != 0);
LABEL_8:
    error = CFArrayCreate(0, v12, 2, MEMORY[0x277CBF128]);
    CFRelease(*v12);
    CFRelease(v12[1]);
    free(v12);
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"untransformedSize"])
  {
    [objectCopy _untransformedSize];
    v41 = v17;
    v42 = v18;
    v12 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = CFNumberCreate(0, kCFNumberCGFloatType, &v41 + v19);
      v20 = 0;
      v12[v19] = v22;
      v19 = 1;
    }

    while ((v21 & 1) != 0);
    goto LABEL_8;
  }

  v39 = objectCopy;
  v23 = nameCopy;
  if (![v23 length])
  {
    goto LABEL_20;
  }

  NSSelectorFromString(v23);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v23 length] < 2)
    {
      uppercaseString = [v23 uppercaseString];
    }

    else
    {
      v25 = [v23 substringToIndex:1];
      uppercaseString2 = [v25 uppercaseString];
      v27 = [v23 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v27];
    }

    v29 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v29);
    if (objc_opt_respondsToSelector())
    {
      v24 = v29;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      goto LABEL_12;
    }

LABEL_20:
    if (error)
    {
      v30 = v39;
      v31 = v23;
      if (v30)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v30];
      }

      else
      {
        v32 = &stru_282E190D8;
      }

      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = &stru_282E190D8;
      }

      v34 = v33;
      v40[0] = @"propertyName";
      v40[1] = @"objectDescription";
      v41 = v34;
      v42 = v32;
      v40[2] = @"errorDescription";
      v43 = &stru_282E190D8;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:v40 count:3];
      v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v35];

      v37 = v36;
      *error = v36;

      v24 = 0;
      error = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_29;
  }

  v24 = v23;
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_12:
  error = [v39 valueForKey:v24];
LABEL_29:

LABEL_30:

  return error;
}

- (GKEntity)entity
{
  WeakRetained = objc_loadWeakRetained(&self->_entity);

  return WeakRetained;
}

+ (id)nodeFromCaptureData:(id)data
{
  v13[8] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v12];
  v5 = v12;
  [v4 setRequiresSecureCoding:0];
  v6 = +[SKCaptureUnarchiverDelegate sharedInstance];
  [v4 setDelegate:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v13[6] = objc_opt_class();
  v13[7] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:8];
  [v7 addObjectsFromArray:v8];

  v9 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];
  [v4 finishDecoding];
  v10 = [v9 objectForKey:@"node"];

  return v10;
}

- (id)createFullCaptureData
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"node";
  v8[0] = self;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = +[SKFrameCaptureDelegate sharedInstance];
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 setDelegate:v3];
  [v4 encodeObject:v2 forKey:*MEMORY[0x277CCA308]];
  [v4 finishEncoding];
  encodedData = [v4 encodedData];

  return encodedData;
}

- (id)archiveToFile:(id)file
{
  fileCopy = file;
  v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v6 = [v5 objectAtIndex:0];
  if (!fileCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    fileCopy = [date description];
  }

  pathExtension = [fileCopy pathExtension];
  v9 = [pathExtension length];

  if (!v9)
  {
    v10 = [fileCopy stringByAppendingPathExtension:@"sks"];

    fileCopy = v10;
  }

  v11 = [v6 stringByAppendingPathComponent:fileCopy];
  v17 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v17];
  v13 = v17;
  if (v13 || ([v12 writeToFile:v11 atomically:1] & 1) == 0)
  {
    v14 = @"Failed to archive %@ to %@";
  }

  else
  {
    v14 = @"Archived %@ to %@";
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14, self, v11];
  NSLog(&stru_282E19138.isa, v15);

  return v15;
}

- (void)_debugPrint:(int)print
{
  v17 = *MEMORY[0x277D85DE8];
  if (print < 1)
  {
    v7 = &stru_282E190D8;
  }

  else
  {
    v5 = &stru_282E190D8;
    printCopy = print;
    do
    {
      v7 = [(__CFString *)v5 stringByAppendingString:@"\t"];

      v5 = v7;
      --printCopy;
    }

    while (printCopy);
  }

  NSLog(&cfstr_P_0.isa, v7, self, self);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = [(SKNode *)self children];
  v9 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v12 + 1) + 8 * v11++) _debugPrint:(print + 1)];
      }

      while (v9 != v11);
      v9 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_debugPrint:(int)print mask:(unint64_t)mask
{
  if (print < 1)
  {
    v13 = &stru_282E190D8;
  }

  else
  {
    v7 = 0;
    v8 = &stru_282E190D8;
    printCopy = print;
    do
    {
      if (v7)
      {
        v10 = [(__CFString *)v8 stringByAppendingString:@" "];

        v8 = v10;
      }

      if (((1 << v7) & mask) != 0)
      {
        v11 = @"|";
      }

      else
      {
        v11 = @" ";
      }

      if (printCopy == 1)
      {
        v12 = @"|";
      }

      else
      {
        v12 = v11;
      }

      v20 = [(__CFString *)v8 stringByAppendingString:v12];

      ++v7;
      v13 = v20;
      v8 = v20;
      --printCopy;
    }

    while (printCopy);
  }

  v21 = v13;
  NSLog(&cfstr_P_1.isa, v13, self, self);
  children = [(SKNode *)self children];
  v15 = [children count];
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [children objectAtIndex:v16];
      v18 = v17;
      if (v15 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = 1 << print;
      }

      [v17 _debugPrint:(print + 1) mask:v19 | mask];

      ++v16;
      --v15;
    }

    while (v15);
  }
}

- (void)_getWorldTransform:(float *)transform positionY:(float *)y rotation:(float *)rotation xScale:(float *)scale yScale:(float *)yScale
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  SKCNode::resolveWorldPositionRotationAndScale(self->_skcNode, &v14, &v13, &v12);
  if (transform)
  {
    *transform = v14;
  }

  if (y)
  {
    *y = *(&v14 + 1);
  }

  if (rotation)
  {
    *rotation = *(&v13 + 2);
  }

  if (scale)
  {
    *scale = v12;
  }

  if (yScale)
  {
    *yScale = *(&v12 + 1);
  }
}

- (void)_getBasePhysicsScale:(float *)scale yScale:(float *)yScale
{
  v6 = SKCNode::getBasePhysicsScale(self->_skcNode).n128_u64[0];
  if (scale)
  {
    *scale = v6;
  }

  if (yScale)
  {
    *yScale = *(&v6 + 1);
  }
}

- (id)childrenInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  v39 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = self->_children;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = x + width;
    v10 = y + height;
    v11 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [v13 convertPointFromParent:{x, y, *&x, *&y, v34}];
        v15 = v14;
        v17 = v16;
        [v13 convertPointFromParent:{v9, v10}];
        v19 = v18;
        v21 = v20;
        [v13 _anchorPoint];
        v23 = v22;
        v25 = v24;
        [v13 _size];
        v41.size.width = v26;
        v41.size.height = v27;
        v28 = v19 - v15;
        v29 = v21 - v17;
        v41.origin.x = -(v26 * v23);
        v41.origin.y = -(v27 * v25);
        v42.origin.x = v15;
        v42.origin.y = v17;
        v42.size.width = v28;
        v42.size.height = v29;
        if (CGRectIntersectsRect(v41, v42))
        {
          [v6 addObject:v13];
        }

        v30 = [v13 childrenInRect:{v15, v17, v28, v29}];
        [v6 addObjectsFromArray:v30];
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  return v6;
}

- (CGRect)_untransformedBounds
{
  *v2.i64 = SKCNode::getUntransformedBoundingBox(self->_skcNode);
  v13.columns[0] = v2;
  v13.columns[1] = v3;
  v13.columns[2] = v4;
  v13.columns[3] = v5;
  AABB = SKCBoundingBoxGetAABB(&v13);
  v7 = vdupq_n_s32(0x447A0000u);
  v8 = vdivq_f32(vrndxq_f32(vmulq_f32(AABB, v7)), v7);
  v9 = v8.f32[0];
  v10 = v8.f32[1];
  v11 = v8.f32[2];
  v12 = v8.f32[3];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGSize)_untransformedSize
{
  *v2.i64 = SKCNode::getUntransformedBoundingBox(self->_skcNode);
  v11.columns[0] = v2;
  v11.columns[1] = v3;
  v11.columns[2] = v4;
  v11.columns[3] = v5;
  AABB = SKCBoundingBoxGetAABB(&v11);
  v7 = vdupq_n_s32(0x447A0000u);
  v8 = vrndxq_f32(vmulq_f32(AABB, v7));
  v9 = vcvtq_f64_f32(vdiv_f32(*&vextq_s8(v8, v8, 8uLL), *v7.f32));
  v10 = v9.f64[1];
  result.width = v9.f64[0];
  result.height = v10;
  return result;
}

- (CGPoint)_anchorPoint
{
  v2 = vcvtq_f64_f32(*(self->_skcNode + 352));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)set_anchorPoint:(CGPoint)point
{
  skcNode = self->_skcNode;
  *&v4 = point.x;
  *&v5 = point.y;
  v6 = __PAIR64__(v5, v4);
  SKCNode::setAnchor(skcNode, &v6);
}

- (CGSize)_size
{
  v2 = vcvtq_f64_f32(*(self->_skcNode + 336));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (BOOL)intersectsNode:(id)node useAlphaTest:(BOOL)test
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v6 = SKCNode::intersectsNode(-[SKNode _backingNode](self, "_backingNode"), [nodeCopy _backingNode]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allIntersectionsWithNode:(id)node useAlphaTest:(BOOL)test
{
  testCopy = test;
  v35 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  children = [(SKNode *)self children];
  v18 = [children arrayByAddingObject:self];

  children2 = [nodeCopy children];
  v24 = [children2 arrayByAddingObject:nodeCopy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v18;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v23 = *v30;
    do
    {
      v9 = 0;
      v22 = v8;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = v24;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          array = 0;
          v14 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              if ([v10 intersectsNode:v16 useAlphaTest:testCopy])
              {
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                }

                [array addObject:v16];
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v12);

          v8 = v22;
          if (array)
          {
            [dictionary setObject:array forKey:v10];
          }
        }

        else
        {

          array = 0;
        }

        ++v9;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (id)_subnodeFromIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  if (pathCopy && (v6 = [pathCopy length], v6 >= 1))
  {
    v7 = 0;
    do
    {
      children = [(SKNode *)selfCopy children];
      v9 = [children objectAtIndexedSubscript:{objc_msgSend(pathCopy, "indexAtPosition:", v7)}];
      ++v7;

      selfCopy = v9;
    }

    while (v6 != v7);
  }

  else
  {
    v9 = selfCopy;
  }

  return v9;
}

- (BOOL)_pathFromPhysicsBodyToPoints:(SKNode *)self outSize:(SEL)size
{
  result = 0;
  if (v2)
  {
    v6 = v3;
    if (v3)
    {
      v7 = v2;
      physicsBody = [(SKNode *)self physicsBody];
      volume = [physicsBody volume];

      if (volume)
      {
        v10 = *(volume + 16) - *(volume + 8);
        *v6 = v10 >> 3;
        *v7 = malloc_type_malloc(v10, 0x100004000313F17uLL);
        v11 = *(volume + 8);
        if (*(volume + 16) != v11)
        {
          v12 = 0;
          do
          {
            *(*v7 + v12) = *(v11 + 8 * v12);
            ++v12;
            v11 = *(volume + 8);
          }

          while (v12 < (*(volume + 16) - v11) >> 3);
        }

        PKPath::~PKPath(volume);
        MEMORY[0x21CF0A160]();
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (NSArray)_allActions
{
  actions = self->_actions;
  allValues = [(NSMutableDictionary *)self->_keyedActions allValues];
  v4 = [(NSMutableArray *)actions arrayByAddingObjectsFromArray:allValues];

  return v4;
}

- (id)_copyImageData
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[SKView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  v5 = v4;
  if (v4)
  {
    v6 = [(SKView *)v4 textureFromNode:self];
    _copyImageData = [v6 _copyImageData];
  }

  else
  {
    _copyImageData = 0;
  }

  objc_autoreleasePoolPop(v3);
  return _copyImageData;
}

- (CGRect)_convertFrameToView:(id)view
{
  v3 = CGRectConvertFrameFromNodeToView(self, view);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)createDebugHierarchyVisualRepresentation
{
  keys[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  scene = [(SKNode *)selfCopy scene];
  if (!scene || (-[SKNode scene](selfCopy, "scene"), v4 = objc_claimAutoreleasedReturnValue(), [v4 view], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, scene, !v5))
  {
    v8 = selfCopy;
LABEL_7:
    Mutable = 0;
    goto LABEL_49;
  }

  scene2 = [(SKNode *)selfCopy scene];
  view = [scene2 view];

  v45 = [[SKNodeVisualRepresentationArchiver alloc] initRequiringSecureCoding:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    if (v7 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_opt_class();
    if (v10 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_opt_class();
    if (v11 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_opt_class();
    if (v12 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_opt_class();
    if (v14 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    if (v15 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_opt_class();
    if (v16 == objc_opt_class())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_opt_class();
    if (v17 != objc_opt_class())
    {
LABEL_31:
      v18 = MEMORY[0x277CCAAB0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v18 setClassName:v20 forClass:objc_opt_class()];
    }
  }

LABEL_32:
  [v45 encodeObject:selfCopy forKey:@"node"];
  [v45 finishEncoding];
  v21 = [SKNodeVisualRepresentationUnarchiver alloc];
  encodedData = [v45 encodedData];
  v46 = 0;
  v23 = [(SKNodeVisualRepresentationUnarchiver *)v21 initForReadingFromData:encodedData error:&v46];
  v42 = v46;

  [v23 setRequiresSecureCoding:0];
  v24 = [v23 decodeObjectOfClass:objc_opt_class() forKey:@"node"];
  [v23 finishDecoding];
  [v24 removeAllChildren];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v24 setPosition:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v42}];
    [v24 setXScale:1.0];
    [v24 setYScale:1.0];
    [v24 setZRotation:0.0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tileSet = [(SKNode *)selfCopy tileSet];
    [v24 setTileSet:tileSet];
  }

  v8 = v24;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [view frame];
  v29 = isKindOfClass ^ 1;
  if (v27 < 1024.0 || v28 < 1024.0)
  {
    if (v27 >= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v27;
    }
  }

  else
  {
    v30 = 1024;
  }

  v48[0] = @"doNotRenderChildNodes";
  Mutable = [MEMORY[0x277CCABB0] numberWithBool:{v29 & 1, v42}];
  v48[1] = @"textureMaxRenderSize";
  v49[0] = Mutable;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
  v49[1] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v33 = [view textureFromNode:v8 withOptions:v32];

  if (v33)
  {
    cGImage = [v33 CGImage];
    if (cGImage)
    {
      identifier = [*MEMORY[0x277CE1E10] identifier];
      valuePtr = 1065353216;
      Mutable = CFDataCreateMutable(0, 0);
      v36 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);
      v37 = *MEMORY[0x277CBECE8];
      v38 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      v39 = *MEMORY[0x277CD2D48];
      values = v38;
      keys[0] = v39;
      v40 = CFDictionaryCreate(v37, keys, &values, 1, 0, 0);
      CGImageDestinationAddImage(v36, cGImage, v40);
      CGImageDestinationFinalize(v36);
      CFRelease(v40);
      CFRelease(v38);
      CFRelease(v36);
    }

    else
    {
      Mutable = 0;
    }

    CGImageRelease(cGImage);
  }

  if (!v33)
  {
    goto LABEL_7;
  }

LABEL_49:

  return Mutable;
}

- (void)setParent:(id)parent
{
  obj = parent;
  if ([(SKNode *)obj inParentHierarchy:self])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Setting this node as parent would create a loop: %@", self}];
  }

  if (obj == self)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"A Node can't parent itself: %@", self}];
  }

  v4 = objc_storeWeak(&self->_parent, obj);

  if (obj)
  {
    skcNode = obj->_skcNode;
  }

  else
  {
    skcNode = 0;
  }

  *(self->_skcNode + 10) = skcNode;
}

@end