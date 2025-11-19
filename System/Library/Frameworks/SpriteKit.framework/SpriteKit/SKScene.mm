@interface SKScene
+ (SKScene)sceneWithContentsOfFile:(id)a3;
+ (SKScene)sceneWithContentsOfFile:(id)a3 size:(CGSize)a4;
+ (SKScene)sceneWithSize:(CGSize)size;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (AVAudioEngine)audioEngine;
- (BOOL)isEqualToNode:(id)a3;
- (CGPoint)anchorPoint;
- (CGPoint)convertPointFromParent:(CGPoint)a3;
- (CGPoint)convertPointFromView:(CGPoint)point;
- (CGPoint)convertPointToParent:(CGPoint)a3;
- (CGPoint)convertPointToView:(CGPoint)point;
- (CGPoint)position;
- (CGPoint)visibleRectCenter;
- (CGRect)frame;
- (CGRect)visibleRect;
- (CGSize)size;
- (CGSize)visibleRectSize;
- (SKCameraNode)camera;
- (SKNode)listener;
- (SKScene)initWithCoder:(id)a3;
- (SKScene)initWithSize:(CGSize)size;
- (SKView)view;
- (UIColor)backgroundColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)delegate;
- (id)description;
- (uint64_t)_update:;
- (void)_didMakeBackingNode;
- (void)_didMoveToView:(id)a3;
- (void)_update:;
- (void)_update:(double)a3;
- (void)_willMoveFromView:(id)a3;
- (void)checkAudioEngine;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleAVAudioEngineInterruption:(id)a3;
- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setPaused:(BOOL)a3;
- (void)setSize:(CGSize)size;
@end

@implementation SKScene

- (id)copyWithZone:(_NSZone *)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:0 error:&v15];
  v4 = v15;
  v14 = v4;
  v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v14];
  v6 = v14;

  [v5 setRequiresSecureCoding:0];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v7 addObjectsFromArray:v8];

  v9 = *MEMORY[0x277CCA308];
  v13 = v6;
  v10 = [v5 decodeTopLevelObjectOfClasses:v7 forKey:v9 error:&v13];
  v11 = v13;

  return v10;
}

- (SKScene)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v25.receiver = self;
  v25.super_class = SKScene;
  v5 = [(SKEffectNode *)&v25 init];
  v6 = v5;
  if (v5)
  {
    [(SKEffectNode *)v5 setShouldEnableEffects:0];
    v6->_lastUpdate = -1.0;
    v6->_pausedTime = 0.0;
    v7 = [MEMORY[0x277CBEB18] array];
    allChildenWithConstraints = v6->_allChildenWithConstraints;
    v6->_allChildenWithConstraints = v7;

    v9 = objc_alloc_init(MEMORY[0x277D3D170]);
    [v9 setVelocityThreshold:0.1];
    [(SKScene *)v6 set_pkPhysicsWorld:v9];
    objc_storeStrong(&v6->_physicsWorld, v9);
    LODWORD(v10) = 1041865114;
    LODWORD(v11) = 1.0;
    LODWORD(v12) = 1041865114;
    LODWORD(v13) = 1041865114;
    v14 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v10, v12, v13, v11}];
    [(SKScene *)v6 setBackgroundColor:v14];

    objc_storeWeak(&v6->_view, 0);
    v6->_bounds.origin.x = 0.0;
    v6->_bounds.origin.y = 0.0;
    v6->_bounds.size.width = width;
    v6->_bounds.size.height = height;
    v15 = v6->_bounds.size;
    v6->_visibleRect.origin = v6->_bounds.origin;
    v6->_visibleRect.size = v15;
    v16 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    touchMap = v6->_touchMap;
    v6->_touchMap = v16;

    [(SKScene *)v6 setSize:width, height];
    [(SKScene *)v6 setAnchorPoint:0.0, 0.0];
    [(SKNode *)v6 setUserInteractionEnabled:1];
    [(SKScene *)v6 set_usesExplicitRender:0];
    [(SKScene *)v6 set_usesExplicitUpdate:0];
    v18 = [SKPhysicsBody bodyWithCircleOfRadius:1.0];
    scenePinBody = v6->_scenePinBody;
    v6->_scenePinBody = v18;

    [(SKPhysicsBody *)v6->_scenePinBody setDynamic:0];
    [(SKPhysicsBody *)v6->_scenePinBody setCategoryBitMask:0];
    [v9 addBody:v6->_scenePinBody];
    skcSceneNode = v6->_skcSceneNode;
    *&v21 = width;
    *&v22 = height;
    v24 = __PAIR64__(v22, v21);
    SKCNode::setSize(skcSceneNode, &v24);
    [(SKScene *)v6 sceneDidLoad];
  }

  return v6;
}

- (SKScene)initWithCoder:(id)a3
{
  v73[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  v70.receiver = v5;
  v70.super_class = SKScene;
  v63 = v4;
  v6 = [(SKEffectNode *)&v70 initWithCoder:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6 == v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = MEMORY[0x277CBEB98];
    v73[0] = objc_opt_class();
    v73[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_scenePinBody"];
    scenePinBody = v7->_scenePinBody;
    v7->_scenePinBody = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Scene_bounds"];
    [v14 CGRectValue];
    v7->_bounds.origin.x = v15;
    v7->_bounds.origin.y = v16;
    v7->_bounds.size.width = v17;
    v7->_bounds.size.height = v18;

    v19 = MEMORY[0x277D75348];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundColorR"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundColorG"];
    [v23 doubleValue];
    v25 = v24;
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundColorB"];
    [v26 doubleValue];
    v28 = v27;
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundColorA"];
    [v29 doubleValue];
    v30 = v22;
    *&v31 = v25;
    *&v32 = v28;
    *&v34 = v33;
    *&v33 = v30;
    v35 = [v19 colorWithComponentRGBA:{v33, v31, v32, v34}];
    [(SKScene *)v7 setBackgroundColor:v35];

    [(SKScene *)v7 setSize:v7->_bounds.size.width, v7->_bounds.size.height];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_anchorPoint"];
    [v36 CGPointValue];
    [(SKScene *)v7 setAnchorPoint:?];

    v37 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    touchMap = v7->_touchMap;
    v7->_touchMap = v37;

    v39 = [MEMORY[0x277CBEB18] array];
    allChildenWithConstraints = v7->_allChildenWithConstraints;
    v7->_allChildenWithConstraints = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_visibleRect"];
    [v41 CGRectValue];
    v7->_visibleRect.origin.x = v42;
    v7->_visibleRect.origin.y = v43;
    v7->_visibleRect.size.width = v44;
    v7->_visibleRect.size.height = v45;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scaleMode"];
    -[SKScene setScaleMode:](v7, "setScaleMode:", [v46 intValue]);

    v47 = MEMORY[0x277CBEB98];
    v72[0] = objc_opt_class();
    v72[1] = objc_opt_class();
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    v49 = [v47 setWithArray:v48];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"_physicsWorld"];
    physicsWorld = v7->_physicsWorld;
    v7->_physicsWorld = v50;

    [(SKScene *)v7 set_pkPhysicsWorld:v7->_physicsWorld];
    [(SKNode *)v7 setUserInteractionEnabled:1];
    [(SKScene *)v7 set_usesExplicitRender:0];
    [(SKScene *)v7 set_usesExplicitUpdate:0];
    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_camera"];
    [(SKScene *)v7 setCamera:v52];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = [(SKPhysicsWorld *)v7->_physicsWorld bodies];
    v54 = [v53 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v54)
    {
      v55 = *v67;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v67 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v57 = *(*(&v66 + 1) + 8 * i);
          v58 = [(SKPhysicsBody *)v57 node];
          v59 = [v58 scene];
          if (v59 == v5)
          {
          }

          else
          {
            v60 = v57 == v7->_scenePinBody;

            if (!v60)
            {
              [(SKPhysicsWorld *)v7->_physicsWorld removeBody:v57];
            }
          }
        }

        v54 = [v53 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v54);
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __25__SKScene_initWithCoder___block_invoke;
    v64[3] = &unk_27830FEB0;
    v61 = v7;
    v65 = v61;
    [(SKNode *)v61 enumerateChildNodesWithName:@".//SKFieldNode" usingBlock:v64];
    [(SKNode *)v61 enumerateChildNodesWithName:@".//SKReferenceNode" usingBlock:&__block_literal_global_4];
    [(SKScene *)v61 sceneDidLoad];
  }

  return v7;
}

void __25__SKScene_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 296);
    v4 = [v5 field];
    [v3 addField:v4];
  }
}

void __25__SKScene_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 resolveReferenceNode];
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  [(AVAudioEngine *)self->_audioEngine reset];
  [(AVAudioEngine *)self->_audioEngine stop];
  audioEngine = self->_audioEngine;
  self->_audioEngine = 0;

  [(SKNode *)self _descendants];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v4 = v10 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeAllActions];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SKScene;
  [(SKNode *)&v8 dealloc];
}

- (UIColor)backgroundColor
{
  LODWORD(v2) = HIDWORD(*(self->super.super._skcNode + 38));
  LODWORD(v3) = *(self->super.super._skcNode + 39);
  LODWORD(v4) = HIDWORD(*(self->super.super._skcNode + 19));
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{*(self->super.super._skcNode + 38), v2, v3, v4}];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v4 = backgroundColor;
  [(UIColor *)v4 componentRGBA];
  skcNode = self->super.super._skcNode;
  DWORD1(v7) = v6;
  *(&v7 + 1) = __PAIR64__(v9, v8);
  v10 = v7;
  (*(*skcNode + 184))(skcNode, &v10);
}

- (CGPoint)convertPointFromParent:(CGPoint)a3
{
  v3.f32[0] = a3.x;
  y = a3.y;
  v3.f32[1] = y;
  v3.i32[2] = 0;
  v3.i32[3] = 1.0;
  v5 = vcvtq_f64_f32(*&vmlsq_f32(v3, *(self->super.super._skcNode + 21), *(self->super.super._skcNode + 22)));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

- (CGPoint)convertPointToParent:(CGPoint)a3
{
  v3.f32[0] = a3.x;
  y = a3.y;
  v3.f32[1] = y;
  v3.i32[2] = 0;
  v3.i32[3] = 1.0;
  v5 = vcvtq_f64_f32(*&vmlaq_f32(v3, *(self->super.super._skcNode + 21), *(self->super.super._skcNode + 22)));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

- (SKNode)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

- (void)handleAVAudioEngineInterruption:(id)a3
{
  v6 = [(AVAudioEngine *)self->_audioEngine mainMixerNode];
  audioEngine = self->_audioEngine;
  v5 = [(SKScene *)self avAudioEnvironmentNode];
  [(AVAudioEngine *)audioEngine connect:v5 to:v6 format:0];

  [(SKScene *)self checkAudioEngine];
}

- (AVAudioEngine)audioEngine
{
  audioEngine = self->_audioEngine;
  if (!audioEngine)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8388]);
    v5 = self->_audioEngine;
    self->_audioEngine = v4;

    v6 = [(AVAudioEngine *)self->_audioEngine mainMixerNode];
    v7 = objc_opt_new();
    [(SKScene *)self frame];
    v9 = v8;
    v10 = [v7 distanceAttenuationParameters];
    v11 = v9 * 0.150000006;
    *&v11 = v9 * 0.150000006;
    [v10 setReferenceDistance:v11];

    [(SKScene *)self frame];
    v13 = v12;
    v14 = [v7 distanceAttenuationParameters];
    *&v15 = v13;
    [v14 setMaximumDistance:v15];

    [v7 setListenerPosition:{0.0, 0.0, 0.0}];
    [(AVAudioEngine *)self->_audioEngine attachNode:v7];
    [(AVAudioEngine *)self->_audioEngine connect:v7 to:v6 format:0];
    [(SKScene *)self setAvAudioEnvironmentNode:v7];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:self selector:sel_handleAVAudioEngineInterruption_ name:*MEMORY[0x277CB8008] object:self->_audioEngine];

    [(SKScene *)self checkAudioEngine];
    audioEngine = self->_audioEngine;
  }

  return audioEngine;
}

- (CGPoint)anchorPoint
{
  v2 = vcvtq_f64_f32(*(self->super.super._skcNode + 352));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
  y = anchorPoint.y;
  x = anchorPoint.x;
  skcNode = self->super.super._skcNode;
  *&v5 = anchorPoint.x;
  *&v6 = anchorPoint.y;
  v12 = __PAIR64__(v6, v5);
  SKCNode::setAnchor(skcNode, &v12);
  size = self->_bounds.size;
  v8.f64[0] = x;
  v8.f64[1] = y;
  v9 = vmulq_f64(size, vnegq_f64(v8));
  self->_bounds.origin = v9;
  *&size.width = v9.x;
  *&v9.x = v9.y;
  SKCNode::setTranslation(self->super.super._skcNode, size, *&v9.x);
  [(SKScene *)self setVisibleRect:self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height];
}

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKScene;
  [(SKEffectNode *)&v3 _didMakeBackingNode];
  self->_skcSceneNode = [(SKNode *)self _backingNode];
}

- (CGPoint)position
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SKScene;
  [(SKEffectNode *)&v16 encodeWithCoder:v4];
  [v4 encodeObject:self->_scenePinBody forKey:@"_scenePinBody"];
  v15 = *(self->_skcSceneNode + 19);
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:{*&v15, v15}];
  [v4 encodeObject:v5 forKey:@"_backgroundColorR"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v15 + 1)];
  [v4 encodeObject:v6 forKey:@"_backgroundColorG"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v15 + 2)];
  [v4 encodeObject:v7 forKey:@"_backgroundColorB"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v15 + 3)];
  [v4 encodeObject:v8 forKey:@"_backgroundColorA"];

  v9 = [MEMORY[0x277CCAE60] valueWithCGRect:{0.0, 0.0, self->_bounds.size.width, self->_bounds.size.height}];
  [v4 encodeObject:v9 forKey:@"Scene_bounds"];

  v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_visibleRect.origin.x, self->_visibleRect.origin.y, self->_visibleRect.size.width, self->_visibleRect.size.height}];
  [v4 encodeObject:v10 forKey:@"_visibleRect"];

  v11 = [(SKScene *)self camera];
  [v4 encodeObject:v11 forKey:@"_camera"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKScene scaleMode](self, "scaleMode")}];
  [v4 encodeObject:v12 forKey:@"_scaleMode"];

  [v4 encodeObject:self->_physicsWorld forKey:@"_physicsWorld"];
  v13 = MEMORY[0x277CCAE60];
  [(SKScene *)self anchorPoint];
  v14 = [v13 valueWithCGPoint:?];
  [v4 encodeObject:v14 forKey:@"_anchorPoint"];
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v43.receiver = self;
      v43.super_class = SKScene;
      if (!-[SKEffectNode isEqualToNode:](&v43, sel_isEqualToNode_, v5) || (-[SKScene backgroundColor](self, "backgroundColor"), v6 = objc_claimAutoreleasedReturnValue(), [v6 green], v8 = v7, -[SKScene backgroundColor](v5, "backgroundColor"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "green"), v10 = v8, *&v11 = v11, v12 = COERCE_UNSIGNED_INT(v10 - *&v11) & 0x60000000, v9, v6, v12) || (-[SKScene backgroundColor](self, "backgroundColor"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "red"), v15 = v14, -[SKScene backgroundColor](v5, "backgroundColor"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "red"), v17 = v15, *&v18 = v18, v19 = COERCE_UNSIGNED_INT(v17 - *&v18) & 0x60000000, v16, v13, v19) || (-[SKScene backgroundColor](self, "backgroundColor"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "blue"), v22 = v21, -[SKScene backgroundColor](v5, "backgroundColor"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "blue"), v24 = v22, *&v25 = v25, v26 = COERCE_UNSIGNED_INT(v24 - *&v25) & 0x60000000, v23, v20, v26) || (-[SKScene backgroundColor](self, "backgroundColor"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "alpha"), v29 = v28, -[SKScene backgroundColor](v5, "backgroundColor"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "alpha"), v31 = v29, *&v32 = v32, v33 = COERCE_UNSIGNED_INT(v31 - *&v32) & 0x60000000, v30, v27, v33) || !CGRectEqualToRect(self->_bounds, v5->_bounds) || !CGRectEqualToRect(self->_visibleRect, v5->_visibleRect) || (v34 = -[SKScene scaleMode](self, "scaleMode"), v34 != -[SKScene scaleMode](v5, "scaleMode")))
      {
        v41 = 0;
      }

      else
      {
        [(SKScene *)self anchorPoint];
        v36 = v35;
        v38 = v37;
        [(SKScene *)v5 anchorPoint];
        v41 = v38 == v40 && v36 == v39;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  return v41;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SKNode *)self name];
  [(SKScene *)self frame];
  v5 = NSStringFromCGRect(v11);
  [(SKScene *)self anchorPoint];
  v6 = NSStringFromCGPoint(v10);
  v7 = [v3 stringWithFormat:@"<SKScene> name:'%@' frame:%@ anchor:%@", v4, v5, v6];

  return v7;
}

- (CGPoint)convertPointFromView:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v12.x = x;
  v12.y = y;
  v7 = CGPointConvertFromViewToScene(WeakRetained, self, v12).n128_u64[0];
  v9 = v8;

  v10 = *&v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertPointToView:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v12.x = x;
  v12.y = y;
  v7 = CGPointConvertFromSceneToView(self, WeakRetained, v12).n128_u64[0];
  v9 = v8;

  v10 = *&v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)visibleRectSize
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v6 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v7 = CGRectGetHeight(v11);
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGPoint)visibleRectCenter
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (CGSize)size
{
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SKScene *)self size];
  v7 = v6;
  v9 = v8;
  self->_bounds.size.width = width;
  self->_bounds.size.height = height;
  [(SKScene *)self anchorPoint];
  self->_bounds.origin.x = -(v10 * width);
  v11 = self->_bounds.size.height;
  [(SKScene *)self anchorPoint];
  self->_bounds.origin.y = -(v12 * v11);
  skcNode = self->super.super._skcNode;
  *&v14 = width;
  *&v12 = height;
  v19 = __PAIR64__(LODWORD(v12), v14);
  SKCNode::setSize(skcNode, &v19);
  v15 = self->super.super._skcNode;
  [(SKScene *)self anchorPoint];
  *&height = -(v16 * self->_bounds.size.width);
  [(SKScene *)self anchorPoint];
  v18.n128_f64[0] = -(v17 * self->_bounds.size.height);
  *&v17 = v18.n128_f64[0];
  v18.n128_u32[0] = LODWORD(height);
  SKCNode::setTranslation(v15, v18, *&v17);
  [(SKScene *)self setVisibleRect:self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height];
  [(SKScene *)self didChangeSize:v7, v9];
}

- (CGRect)frame
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (SKScene)sceneWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [objc_alloc(objc_opt_class()) initWithSize:{size.width, size.height}];
  if (width < 0.0 || height < 0.0)
  {
    v6 = MEMORY[0x277CBEAD8];
    v10.width = width;
    v10.height = height;
    v7 = NSStringFromCGSize(v10);
    [v6 raise:@"Invalid size specified" format:{@"Invalid size specified: %@", v7}];
  }

  return v5;
}

+ (SKScene)sceneWithContentsOfFile:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  if (![v4 length])
  {
    v5 = [v3 stringByAppendingPathExtension:@"sks"];

    v3 = v5;
  }

  if ([v3 isAbsolutePath])
  {
    v6 = v3;
  }

  else
  {
    v7 = SKGetResourceBundle();
    v6 = [v7 pathForResource:v3 ofType:0];
  }

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  if (v8)
  {
    v13 = 0;
    v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v13];
    v10 = v13;
    [v9 setRequiresSecureCoding:0];
    v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"scene"];
    if (!v11)
    {
      v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"root"];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (SKScene)sceneWithContentsOfFile:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [SKScene sceneWithContentsOfFile:a3];
  if (width <= 0.0 || height <= 0.0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v12.width = width;
    v12.height = height;
    v8 = NSStringFromCGSize(v12);
    [v7 raise:@"Invalid size specified" format:{@"Invalid size specified: %@", v8}];
  }

  *(v6 + 208) = 0;
  *(v6 + 216) = 0;
  *(v6 + 224) = width;
  *(v6 + 232) = height;
  v9 = *(v6 + 224);
  *(v6 + 160) = *(v6 + 208);
  *(v6 + 176) = v9;
  [v6 setSize:{width, height}];

  return v6;
}

- (void)checkAudioEngine
{
  audioEngine = self->_audioEngine;
  if (audioEngine)
  {
    v4 = [(AVAudioEngine *)audioEngine isRunning];
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  v6 = objc_loadWeakRetained(&self->_view);
  v7 = objc_opt_respondsToSelector();

  v8 = [(SKNode *)self isPaused];
  if (v7)
  {
    if (v8)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_10;
    }

    v10 = objc_loadWeakRetained(&self->_view);
    v9 = [v10 isPaused] ^ 1;
  }

  else
  {
    v9 = !v8;
  }

LABEL_10:
  if (v4 != v9)
  {
    v11 = self->_audioEngine;
    v12 = v9 ^ 1;
    if (!v11)
    {
      v12 = 1;
    }

    if (v12)
    {

      [(AVAudioEngine *)v11 pause];
    }

    else
    {
      v13 = 0;
      [(AVAudioEngine *)v11 startAndReturnError:&v13];
    }
  }
}

- (void)_didMoveToView:(id)a3
{
  v4 = a3;
  self->_lastUpdate = skCurrentTime();
  objc_storeWeak(&self->_view, v4);
  [(SKScene *)self checkAudioEngine];
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__SKScene__didMoveToView___block_invoke;
    v5[3] = &unk_27830FEB0;
    v5[4] = self;
    [(SKNode *)self enumerateChildNodesWithName:@".//SKAudioNode" usingBlock:v5];
  }

  [(SKScene *)self didMoveToView:v4];
}

void __26__SKScene__didMoveToView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 _connectToScene:*(a1 + 32)];
  }
}

- (void)_update:(double)a3
{
  v406 = *MEMORY[0x277D85DE8];
  if ((*(self->_skcSceneNode + 172) & 1) == 0)
  {
    v4 = CACurrentMediaTime();
    _perfBeginClientUpdate(v4);
    v371 = self;
    v5 = [(SKScene *)self view];
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    v6 = [(SKScene *)v371 delegate];
    if (v6 && ([(SKScene *)v371 delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
    {
      v9 = [(SKScene *)v371 delegate];
      [v9 update:v371 forScene:a3];

      v10 = v371;
    }

    else
    {
      v10 = v371;
      [(SKScene *)v371 update:a3];
    }

    v11 = [(SKScene *)v10 view];
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    if (v371->_lastUpdate < 0.0)
    {
      v371->_lastUpdate = a3;
    }

    v12 = CACurrentMediaTime();
    _perfBeginActions(v12);
    v13 = [(SKScene *)v371 view];
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    if (SKCNode::matchesAnyFlags(v371->_skcSceneNode, 32, 32))
    {
      v399.receiver = v371;
      v399.super_class = SKScene;
      [(SKNode *)&v399 _update:a3];
    }

    else
    {
      v14 = [(SKScene *)v371 view];
      kdebug_trace();
    }

    v15 = [(SKScene *)v371 view];
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    v16 = CACurrentMediaTime();
    _perfEndActions(v16);
    SKCRendererRemoveCompletedSoundSources();
    if (a3 - *(&v371->super.super.super.super.isa + v367) <= 0.00000011920929)
    {
      v17 = 0.0166666675;
    }

    else
    {
      v17 = a3 - *(&v371->super.super.super.super.isa + v367);
    }

    WeakRetained = objc_loadWeakRetained(&v371->_delegate);
    if (WeakRetained && (v19 = objc_loadWeakRetained(&v371->_delegate), v20 = objc_opt_respondsToSelector(), v19, WeakRetained, (v20 & 1) != 0))
    {
      v21 = objc_loadWeakRetained(&v371->_delegate);
      [v21 didEvaluateActionsForScene:v371];
    }

    else
    {
      [(SKScene *)v371 didEvaluateActions];
    }

    if (![(SKNode *)v371 isPaused])
    {
      if (SKCNode::matchesAnyFlags(v371->_skcSceneNode, 8, 8))
      {
        v22 = CACurrentMediaTime();
        _perfBeginPhysics(v22);
        v23 = [(SKScene *)v371 view];
        if (sk_debug_get_optional())
        {
          kdebug_trace();
        }

        v397 = 0u;
        v398 = 0u;
        v395 = 0u;
        v396 = 0u;
        obj = [(SKPhysicsWorld *)v371->_physicsWorld bodies];
        v374 = [obj countByEnumeratingWithState:&v395 objects:v405 count:16];
        if (v374)
        {
          v372 = *v396;
          do
          {
            for (i = 0; i != v374; i = i + 1)
            {
              if (*v396 != v372)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v395 + 1) + 8 * i);
              v25 = [v24 representedObject];
              if (v25)
              {
                v376 = v25;
                v26 = [v25 _backingNode];
                v388 = 0uLL;
                SKCNode::resolveWorldPositionRotationAndScale(v26, &v388, 0, 0);
                (*(*v26 + 200))(v26);
                v27 = [v376 parent];
                v28 = [v27 physicsBody];
                if (!v28)
                {
                  v28 = v371->_scenePinBody;
                }

                v393 = 0u;
                v394 = 0u;
                v391 = 0u;
                v392 = 0u;
                v29 = [v24 _joints];
                v30 = [v29 countByEnumeratingWithState:&v391 objects:v404 count:16];
                if (v30)
                {
                  v31 = *v392;
                  while (2)
                  {
                    for (j = 0; j != v30; j = j + 1)
                    {
                      if (*v392 != v31)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v33 = *(*(&v391 + 1) + 8 * j);
                      v34 = [v33 _implicit];
                      if (v27)
                      {
                        v35 = v34;
                      }

                      else
                      {
                        v35 = 0;
                      }

                      if (v35 == 1)
                      {
                        v36 = [v33 bodyA];
                        v37 = v36;
                        if (v36 == v28)
                        {

LABEL_53:
                          v30 = v33;
                          goto LABEL_54;
                        }

                        v38 = [v33 bodyB];
                        v39 = v38 == v28;

                        if (v39)
                        {
                          goto LABEL_53;
                        }
                      }
                    }

                    v30 = [v29 countByEnumeratingWithState:&v391 objects:v404 count:16];
                    if (v30)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_54:

                if (![v24 pinned])
                {
                  if (v30)
                  {
                    [(SKPhysicsWorld *)v371->_physicsWorld removeJoint:v30];
                  }

                  goto LABEL_70;
                }

                if ([v24 allowsRotation])
                {
                  if (!v30)
                  {
                    goto LABEL_59;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    [(SKPhysicsWorld *)v371->_physicsWorld removeJoint:v30];

LABEL_59:
                    if (v28)
                    {
                      v40 = [SKPhysicsJointPin jointWithBodyA:v28 bodyB:v24 anchor:*&v388, *(&v388 + 1)];
                      [v40 setFrictionTorque:0.0];
                      [v40 set_implicit:1];
                      [(SKPhysicsWorld *)v371->_physicsWorld addJoint:v40];
                      goto LABEL_68;
                    }

                    goto LABEL_69;
                  }
                }

                else
                {
                  if (v30)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      goto LABEL_70;
                    }

                    [(SKPhysicsWorld *)v371->_physicsWorld removeJoint:v30];
                  }

                  if (v28)
                  {
                    v40 = [SKPhysicsJointFixed jointWithBodyA:v28 bodyB:v24 anchor:*&v388, *(&v388 + 1)];
                    [v40 set_implicit:1];
                    [(SKPhysicsWorld *)v371->_physicsWorld addJoint:v40];
LABEL_68:
                  }

LABEL_69:
                  v30 = 0;
                }

LABEL_70:

                v25 = v376;
              }
            }

            v374 = [obj countByEnumeratingWithState:&v395 objects:v405 count:16];
          }

          while (v374);
        }

        MEMORY[0x21CF0A090](&v388, [(PKPhysicsWorld *)v371->__pkPhysicsWorld aether]);
        v403[0] = &unk_282E16DF8;
        v403[3] = v403;
        v41 = __p;
        v42 = v390;
        if (__p != v390)
        {
          do
          {
            std::function<void ()(PKCField *)>::operator()(v403, *v41++);
          }

          while (v41 != v42);
        }

        std::__function::__value_func<void ()(PKCField *)>::~__value_func[abi:ne200100](v403);
        v43 = v17;
        [(SKPhysicsWorld *)v371->_physicsWorld stepWithTime:8 velocityIterations:3 positionIterations:fminf(v43, 1.0)];
        v44 = [(SKScene *)v371 view];
        if (sk_debug_get_optional())
        {
          kdebug_trace();
        }

        v45 = CACurrentMediaTime();
        _perfEndPhysics(v45);
        if (__p)
        {
          v390 = __p;
          operator delete(__p);
        }

        v400 = &v388;
        std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v400);
      }

      else
      {
        v46 = [(SKScene *)v371 view];
        kdebug_trace();
      }
    }

    v47 = objc_loadWeakRetained(&v371->_delegate);
    if (v47 && (v48 = objc_loadWeakRetained(&v371->_delegate), v49 = objc_opt_respondsToSelector(), v48, v47, (v49 & 1) != 0))
    {
      v50 = objc_loadWeakRetained(&v371->_delegate);
      [v50 didSimulatePhysicsForScene:v371];
    }

    else
    {
      [(SKScene *)v371 didSimulatePhysics];
    }

    v51 = CACurrentMediaTime();
    _perfBeginConstraints(v51);
    v52 = [(SKScene *)v371 view];
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    v386 = 0u;
    v387 = 0u;
    v384 = 0u;
    v385 = 0u;
    obja = v371->_allChildenWithConstraints;
    v53 = [(NSMutableArray *)obja countByEnumeratingWithState:&v384 objects:v402 count:16];
    if (v53)
    {
      v373 = *v385;
      do
      {
        v54 = 0;
        v375 = v53;
        do
        {
          if (*v385 != v373)
          {
            objc_enumerationMutation(obja);
          }

          v55 = *(*(&v384 + 1) + 8 * v54);
          v56 = [v55 constraints];
          v377 = v54;
          v57 = v56 == 0;

          if (!v57)
          {
            v382 = 0u;
            v383 = 0u;
            v380 = 0u;
            v381 = 0u;
            v58 = [v55 constraints];
            v59 = [v58 countByEnumeratingWithState:&v380 objects:v401 count:16];
            if (!v59)
            {
              goto LABEL_197;
            }

            v60 = *v381;
            v379 = v58;
            while (1)
            {
              v61 = 0;
              do
              {
                if (*v381 != v60)
                {
                  objc_enumerationMutation(v379);
                }

                v62 = *(*(&v380 + 1) + 8 * v61);
                if ([v62 enabled])
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v63 = v62;
                    v64 = [v63 referenceNode];
                    v65 = v64 == 0;

                    if (!v65)
                    {
                      [v55 position];
                      v67 = v66;
                      v69 = v68;
                      v70 = [v63 referenceNode];
                      v71 = [v55 parent];
                      [v70 convertPoint:v71 fromNode:{v67, v69}];
                      v73 = v72;
                      v75 = v74;

                      v76 = [v63 referenceNode];
                      v77 = [v55 parent];
                      [v76 convertPoint:v77 fromNode:{v67 + 1.0, v69 + 0.0}];
                      v79 = v78;
                      v81 = v80;

                      [v55 zRotation];
                      v83 = v82;
                      v84 = atan2(-(v79 - v73), v81 - v75);
                      v85 = [v63 zRotationRange];
                      [v85 lowerLimit];
                      v87 = v86;
                      v88 = [v63 zRotationRange];
                      [v88 upperLimit];
                      v89 = v83 + v84;
                      v92 = v91;
                      if (v89 <= v92)
                      {
                        v92 = v83 + v84;
                      }

                      v90 = v87;
                      if (v92 >= v90)
                      {
                        v93 = v92;
                      }

                      else
                      {
                        v93 = v87;
                      }

LABEL_106:

                      v94 = __sincos_stret(v93);
                      v95 = [v63 referenceNode];
                      v96 = [v55 parent];
                      [v95 convertPoint:v96 toNode:{v73 + v94.__cosval, v75 + v94.__sinval}];
                      v98 = v97;
                      v100 = v99;

                      [v55 position];
                      v102 = v101;
                      [v55 position];
                      [v55 setZRotation:{(atan2(-(v98 - v102), v100 - v103) + 1.57079633)}];
                      goto LABEL_174;
                    }

                    [v55 zRotation];
                    v177 = v176;
                    v178 = [v63 zRotationRange];
                    [v178 lowerLimit];
                    v180 = v179;
                    v181 = [v63 zRotationRange];
                    [v181 upperLimit];
                    v182 = v177;
                    v185 = v184;
                    if (v182 <= v185)
                    {
                      v185 = v177;
                    }

                    v183 = v180;
                    if (v185 < v183)
                    {
                      v185 = v180;
                    }

                    goto LABEL_172;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v104 = v62;
                    v105 = [v104 referenceNode];
                    v106 = v105 == 0;

                    if (v106)
                    {
                      [v55 position];
                      v231 = v230;
                      v178 = [v104 xRange];
                      [v178 lowerLimit];
                      v233 = v232;
                      v181 = [v104 xRange];
                      [v181 upperLimit];
                      v234 = v231;
                      v237 = v236;
                      if (v234 <= v237)
                      {
                        v237 = v231;
                      }

                      v235 = v233;
                      if (v237 >= v235)
                      {
                        v238 = v237;
                      }

                      else
                      {
                        v238 = v233;
                      }

                      [v55 position];
                      v240 = v239;
                      v241 = [v104 yRange];
                      [v241 lowerLimit];
                      v243 = v242;
                      v244 = [v104 yRange];
                      [v244 upperLimit];
                      v245 = v240;
                      v248 = v247;
                      if (v245 <= v248)
                      {
                        v248 = v240;
                      }

                      v246 = v243;
                      if (v248 < v246)
                      {
                        v248 = v243;
                      }

                      [v55 setPosition:{v238, v248}];

                      goto LABEL_173;
                    }

                    [v55 position];
                    v108 = v107;
                    v110 = v109;
                    v111 = [v104 referenceNode];
                    v112 = [v55 parent];
                    [v111 convertPoint:v112 fromNode:{v108, v110}];
                    v114 = v113;
                    v116 = v115;

                    v117 = [v104 xRange];
                    [v117 lowerLimit];
                    v119 = v118;
                    v120 = [v104 xRange];
                    [v120 upperLimit];
                    v121 = v114;
                    v124 = v123;
                    if (v121 <= v124)
                    {
                      v124 = v114;
                    }

                    v122 = v119;
                    if (v124 >= v122)
                    {
                      v125 = v124;
                    }

                    else
                    {
                      v125 = v119;
                    }

                    v126 = [v104 yRange];
                    [v126 lowerLimit];
                    v128 = v127;
                    v129 = [v104 yRange];
                    [v129 upperLimit];
                    v130 = v116;
                    v133 = v132;
                    if (v130 <= v133)
                    {
                      v133 = v116;
                    }

                    v131 = v128;
                    if (v133 >= v131)
                    {
                      v134 = v133;
                    }

                    else
                    {
                      v134 = v128;
                    }

                    v135 = [v104 referenceNode];
                    v136 = [v55 parent];
                    [v135 convertPoint:v136 toNode:{v125, v134}];
                    v138 = v137;
                    v140 = v139;

                    [v55 setPosition:{v138, v140}];
LABEL_174:

                    goto LABEL_175;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v63 = v62;
                    v141 = [v63 referenceNode];
                    v142 = v141 == 0;

                    if (!v142)
                    {
                      [v63 point];
                      v144 = v143;
                      v146 = v145;
                      v147 = [v63 node];
                      v148 = v147 == 0;

                      if (!v148)
                      {
                        v149 = [v55 parent];
                        v150 = [v63 node];
                        [v149 convertPoint:v150 fromNode:{v144, v146}];
                        v144 = v151;
                        v146 = v152;
                      }

                      [v55 position];
                      v154 = v153;
                      v156 = v155;
                      v157 = [v63 referenceNode];
                      v158 = [v55 parent];
                      [v157 convertPoint:v158 fromNode:{v144, v146}];
                      v160 = v159;
                      v162 = v161;

                      v163 = [v63 referenceNode];
                      v164 = [v55 parent];
                      [v163 convertPoint:v164 fromNode:{v154, v156}];
                      v73 = v165;
                      v75 = v166;

                      v167 = atan2(-(v160 - v73), v162 - v75);
                      [v55 zRotation];
                      v169 = v168;
                      v85 = [v63 offset];
                      [v85 lowerLimit];
                      v171 = v170;
                      v88 = [v63 offset];
                      [v88 upperLimit];
                      v172 = v169;
                      v175 = v167 + 1.57079633 + v174;
                      if (v172 <= v175)
                      {
                        v175 = v169;
                      }

                      v173 = v167 + 1.57079633 + v171;
                      if (v175 >= v173)
                      {
                        v93 = v175;
                      }

                      else
                      {
                        v93 = v167 + 1.57079633 + v171;
                      }

                      goto LABEL_106;
                    }

                    [v63 point];
                    v273 = v272;
                    v275 = v274;
                    v276 = [v63 node];
                    v277 = v276 == 0;

                    if (!v277)
                    {
                      v278 = [v55 parent];
                      v279 = [v63 node];
                      [v278 convertPoint:v279 fromNode:{v273, v275}];
                      v273 = v280;
                      v275 = v281;
                    }

                    [v55 position];
                    v284 = atan2(-(v273 - v282), v275 - v283);
                    [v55 zRotation];
                    v286 = v285;
                    v178 = [v63 offset];
                    [v178 lowerLimit];
                    v288 = v287;
                    v181 = [v63 offset];
                    [v181 upperLimit];
                    v289 = v286;
                    v185 = v284 + 1.57079633 + v291;
                    if (v289 <= v185)
                    {
                      v185 = v286;
                    }

                    v290 = v284 + 1.57079633 + v288;
                    if (v185 < v290)
                    {
                      v185 = v284 + 1.57079633 + v288;
                    }

LABEL_172:
                    [v55 setZRotation:v185];
                    goto LABEL_173;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v186 = v62;
                    v187 = [v186 referenceNode];
                    v188 = v187 == 0;

                    if (v188)
                    {
                      [v186 point];
                      v316 = v315;
                      v318 = v317;
                      v319 = [v186 node];
                      v320 = v319 == 0;

                      if (!v320)
                      {
                        v321 = [v55 parent];
                        v322 = [v186 node];
                        [v321 convertPoint:v322 fromNode:{v316, v318}];
                        v316 = v323;
                        v318 = v324;
                      }

                      [v55 position];
                      v326 = v325;
                      v328 = v327;
                      v329 = [v186 distanceRange];
                      [v329 lowerLimit];
                      v331 = v330;
                      v332 = [v186 distanceRange];
                      [v332 upperLimit];
                      v334 = v333;

                      v335 = v318;
                      v336 = v316;
                      v337 = v326;
                      v338 = v328;
                      v339 = v336 - v337;
                      v340 = v335 - v338;
                      v341 = sqrtf((v340 * v340) + (v339 * v339));
                      if (v341 > 0.0)
                      {
                        v342 = fmax(v331, 0.0);
                        v343 = v334;
                        if (v341 <= v343)
                        {
                          v343 = v341;
                        }

                        if (v343 >= v342)
                        {
                          v342 = v343;
                        }

                        [v55 setPosition:{(((v339 * (1.0 / v341)) * (v341 - v342)) + v337), (((v340 * (1.0 / v341)) * (v341 - v342)) + v338)}];
                      }
                    }

                    else
                    {
                      [v186 point];
                      v190 = v189;
                      v192 = v191;
                      v193 = [v186 node];
                      v194 = v193 == 0;

                      if (!v194)
                      {
                        v195 = [v55 parent];
                        v196 = [v186 node];
                        [v195 convertPoint:v196 fromNode:{v190, v192}];
                        v190 = v197;
                        v192 = v198;
                      }

                      [v55 position];
                      v200 = v199;
                      v202 = v201;
                      v203 = [v186 referenceNode];
                      v204 = [v55 parent];
                      [v203 convertPoint:v204 fromNode:{v190, v192}];
                      v206 = v205;
                      v208 = v207;

                      v209 = [v186 referenceNode];
                      v210 = [v55 parent];
                      [v209 convertPoint:v210 fromNode:{v200, v202}];
                      v212 = v211;
                      v214 = v213;

                      v215 = [v186 distanceRange];
                      [v215 lowerLimit];
                      v217 = v216;
                      v218 = [v186 distanceRange];
                      [v218 upperLimit];
                      v219 = v206;
                      v220 = v208;
                      v221 = v212;
                      v222 = v214;
                      v223 = v219 - v221;
                      v224 = v220 - v222;
                      v225 = sqrtf((v224 * v224) + (v223 * v223));
                      v226 = fmax(v217, 0.0);
                      v228 = v227;
                      if (v225 <= v228)
                      {
                        v228 = v225;
                      }

                      if (v228 >= v226)
                      {
                        v229 = v228;
                      }

                      else
                      {
                        v229 = v226;
                      }

                      v178 = [v186 referenceNode];
                      v181 = [v55 parent];
                      [v178 convertPoint:v181 toNode:{(((v223 * (1.0 / v225)) * (v225 - v229)) + v221), (((v224 * (1.0 / v225)) * (v225 - v229)) + v222)}];
                      [v55 setPosition:?];
LABEL_173:
                    }

                    goto LABEL_174;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v249 = v62;
                    [v55 size];
                    v251 = v250;
                    v253 = v252;
                    v254 = [v249 widthRange];
                    [v254 lowerLimit];
                    v256 = v255;
                    v257 = [v249 widthRange];
                    [v257 upperLimit];
                    v258 = v251;
                    v261 = v260;
                    if (v258 <= v261)
                    {
                      v261 = v251;
                    }

                    v259 = v256;
                    if (v261 >= v259)
                    {
                      v262 = v261;
                    }

                    else
                    {
                      v262 = v256;
                    }

                    v263 = [v249 heightRange];
                    [v263 lowerLimit];
                    v265 = v264;
                    v266 = [v249 heightRange];
                    [v266 upperLimit];
                    v267 = v253;
                    v270 = v269;
                    if (v267 <= v270)
                    {
                      v270 = v253;
                    }

                    v268 = v265;
                    if (v270 >= v268)
                    {
                      v271 = v270;
                    }

                    else
                    {
                      v271 = v265;
                    }

                    [v55 setSize:{v262, v271}];
                    goto LABEL_174;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v292 = v62;
                    [v55 xScale];
                    v294 = v293;
                    [v55 yScale];
                    v296 = v295;
                    v297 = [v292 xRange];
                    [v297 lowerLimit];
                    v299 = v298;
                    v300 = [v292 xRange];
                    [v300 upperLimit];
                    v301 = v294;
                    v304 = v303;
                    if (v301 <= v304)
                    {
                      v304 = v294;
                    }

                    v302 = v299;
                    if (v304 >= v302)
                    {
                      v305 = v304;
                    }

                    else
                    {
                      v305 = v299;
                    }

                    v306 = [v292 yRange];
                    [v306 lowerLimit];
                    v308 = v307;
                    v309 = [v292 yRange];
                    [v309 upperLimit];
                    v311 = v310;

                    [v55 setXScale:v305];
                    v312 = v296;
                    v314 = v311;
                    if (v312 > v314)
                    {
                      v312 = v311;
                    }

                    v313 = v308;
                    if (v312 < v313)
                    {
                      v312 = v308;
                    }

                    [v55 setYScale:v312];
                    goto LABEL_174;
                  }
                }

LABEL_175:
                ++v61;
              }

              while (v59 != v61);
              v58 = v379;
              v344 = [v379 countByEnumeratingWithState:&v380 objects:v401 count:16];
              v59 = v344;
              if (!v344)
              {
LABEL_197:

                break;
              }
            }
          }

          v54 = v377 + 1;
        }

        while (v377 + 1 != v375);
        v53 = [(NSMutableArray *)obja countByEnumeratingWithState:&v384 objects:v402 count:16];
      }

      while (v53);
    }

    v345 = [(SKScene *)v371 view];
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    v346 = CACurrentMediaTime();
    _perfEndConstraints(v346);
    v347 = objc_loadWeakRetained(&v371->_delegate);
    if (v347 && (v348 = objc_loadWeakRetained(&v371->_delegate), v349 = objc_opt_respondsToSelector(), v348, v347, (v349 & 1) != 0))
    {
      v350 = objc_loadWeakRetained(&v371->_delegate);
      [v350 didApplyConstraintsForScene:v371];
    }

    else
    {
      [(SKScene *)v371 didApplyConstraints];
    }

    v351 = objc_loadWeakRetained(&v371->_delegate);
    if (v351 && (v352 = objc_loadWeakRetained(&v371->_delegate), v353 = objc_opt_respondsToSelector(), v352, v351, (v353 & 1) != 0))
    {
      v354 = objc_loadWeakRetained(&v371->_delegate);
      [v354 didFinishUpdateForScene:v371];
    }

    else
    {
      [(SKScene *)v371 didFinishUpdate];
    }

    v355 = CACurrentMediaTime();
    _perfEndClientUpdate(v355);
    v356 = v371;
    if (v371->_audioEngine)
    {
      v357 = objc_loadWeakRetained(&v371->_listener);
      v358 = v357;
      if (v357)
      {
        [v357 convertPoint:v371 toNode:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      }

      else
      {
        [(SKScene *)v371 frame];
        MidX = CGRectGetMidX(v407);
        [(SKScene *)v371 frame];
        [0 convertPoint:v371 toNode:{MidX, CGRectGetMidY(v408)}];
      }

      v362 = v359;
      v363 = v360;
      v364 = [(SKScene *)v371 avAudioEnvironmentNode];
      *&v365 = v363;
      *&v366 = v362;
      [v364 setListenerPosition:{v366, v365, 0.0}];

      v356 = v371;
    }

    *(&v356->super.super.super.super.isa + v367) = a3;
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  if ([(SKNode *)self isPaused]!= a3)
  {
    v5 = skCurrentTime();
    v6 = 152;
    if (!v3)
    {
      v6 = 144;
      v5 = v5 - self->_pausedTime + self->_lastUpdate;
    }

    *(&self->super.super.super.super.isa + v6) = v5;
  }

  v7.receiver = self;
  v7.super_class = SKScene;
  [(SKNode *)&v7 setPaused:v3];
  [(SKScene *)self checkAudioEngine];
}

- (SKView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (id)debugHierarchyPropertyDescriptions
{
  v18[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"audioEngine");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"objectInfo");
  v18[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"backgroundColor");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v5, @"propertyFormat", @"color");
  v18[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"camera");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v6, @"propertyFormat", @"objectInfo");
  v18[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"delegate");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v7, @"propertyFormat", @"objectInfo");
  v18[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"listener");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v8, @"propertyFormat", @"objectInfo");
  v18[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"physicsWorld");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v9, @"propertyFormat", @"objectInfo");
  v18[5] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"size");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v10, @"propertyFormat", @"CGf, CGf");
  v18[6] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v11, @"propertyName", @"scaleMode");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"SKSceneScaleMode");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v11, @"propertyFormat", @"integer");
  v18[7] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v12, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v12, @"propertyFormat", @"color");
  valuePtr = 8;
  v13 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v12, @"visibility", v13);
  CFRelease(v13);
  valuePtr = 1;
  v14 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v12, @"propertyOptions", v14);
  CFRelease(v14);
  v18[8] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:9];

  return v15;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v70[3] = *MEMORY[0x277D85DE8];
  v67 = a3;
  v68 = a4;
  if ([v67 isEqualToString:@"backgroundColor"])
  {
    v8 = [v68 backgroundColor];
    v9 = [v8 CGColor];
    if (v9)
    {
      theDict = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      ColorSpace = CGColorGetColorSpace(v9);
      v11 = CGColorSpaceCopyName(ColorSpace);
      NumberOfComponents = CGColorGetNumberOfComponents(v9);
      v13 = NumberOfComponents << 32;
      v14 = NumberOfComponents;
      if (NumberOfComponents << 32)
      {
        Mutable = CFStringCreateMutable(0, 0);
        space = v8;
        v16 = ColorSpace;
        v17 = v11;
        v18 = v14 - 1;
        if (v14 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v14;
        }

        do
        {
          CFStringAppend(Mutable, @"CGf");
          if (v18)
          {
            CFStringAppend(Mutable, @", ");
          }

          --v18;
          --v19;
        }

        while (v19);
        v11 = v17;
        ColorSpace = v16;
        v8 = space;
      }

      else
      {
        Mutable = &stru_282E190D8;
      }

      Components = CGColorGetComponents(v9);
      v34 = malloc_type_malloc(v13 >> 29, 0x6004044C4A2DFuLL);
      v35 = v34;
      if (v13)
      {
        if (v14 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v14;
        }

        v37 = v34;
        do
        {
          *v37++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
          --v36;
        }

        while (v36);
      }

      v38 = CFArrayCreate(0, v35, v14, MEMORY[0x277CBF128]);
      if (v13)
      {
        if (v14 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v14;
        }

        v40 = v35;
        do
        {
          CFRelease(*v40++);
          --v39;
        }

        while (v39);
      }

      free(v35);
      CGColorSpaceGetModel(ColorSpace);
      if (v38)
      {
        CFDictionaryAddValue(theDict, @"componentValues", v38);
      }

      if (Mutable)
      {
        CFDictionaryAddValue(theDict, @"componentValuesFormat", Mutable);
      }

      if (v11)
      {
        CFDictionaryAddValue(theDict, @"colorSpaceName", v11);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      theDict = 0;
    }

    v23 = theDict;
    goto LABEL_99;
  }

  if (![v67 isEqualToString:@"visualRepresentation"])
  {
    v30 = v68;
    v31 = v67;
    if ([(NSString *)v31 length])
    {
      NSSelectorFromString(v31);
      if (objc_opt_respondsToSelector())
      {
        v32 = v31;
        if (v32)
        {
LABEL_25:
          v23 = [v30 valueForKey:v32];
LABEL_71:

          goto LABEL_99;
        }
      }

      else
      {
        if ([(NSString *)v31 length]< 2)
        {
          v44 = [(NSString *)v31 uppercaseString];
        }

        else
        {
          v41 = [(NSString *)v31 substringToIndex:1];
          v42 = [v41 uppercaseString];
          v43 = [(NSString *)v31 substringFromIndex:1];
          v44 = [v42 stringByAppendingString:v43];
        }

        v45 = [@"is" stringByAppendingString:v44];
        NSSelectorFromString(v45);
        if (objc_opt_respondsToSelector())
        {
          v32 = v45;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          goto LABEL_25;
        }
      }
    }

    if (a6)
    {
      v46 = v30;
      v47 = v31;
      if (v46)
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v46];
      }

      else
      {
        v48 = &stru_282E190D8;
      }

      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = &stru_282E190D8;
      }

      v50 = v49;
      v69[0] = @"propertyName";
      v69[1] = @"objectDescription";
      v70[0] = v50;
      v70[1] = v48;
      v69[2] = @"errorDescription";
      v70[2] = &stru_282E190D8;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
      v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v51];

      v53 = v52;
      *a6 = v52;
    }

    v32 = 0;
    v23 = 0;
    goto LABEL_71;
  }

  v20 = [v68 createDebugHierarchyVisualRepresentation];
  if (objc_opt_respondsToSelector())
  {
    v21 = [v68 createDebugHierarchyVisualRepresentation];
    v22 = [v21 CGColor];
    if (v22)
    {
      v23 = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      spacea = CGColorGetColorSpace(v22);
      theDicta = CGColorSpaceCopyName(spacea);
      v24 = CGColorGetNumberOfComponents(v22);
      v25 = v24 << 32;
      v26 = v24;
      if (v24 << 32)
      {
        v27 = CFStringCreateMutable(0, 0);
        v28 = v26 - 1;
        if (v26 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v26;
        }

        do
        {
          CFStringAppend(v27, @"CGf");
          if (v28)
          {
            CFStringAppend(v27, @", ");
          }

          --v28;
          --v29;
        }

        while (v29);
      }

      else
      {
        v27 = &stru_282E190D8;
      }

      v54 = CGColorGetComponents(v22);
      v55 = malloc_type_malloc(v25 >> 29, 0x6004044C4A2DFuLL);
      v56 = v55;
      if (v25)
      {
        if (v26 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v26;
        }

        v58 = v55;
        do
        {
          *v58++ = CFNumberCreate(0, kCFNumberCGFloatType, v54++);
          --v57;
        }

        while (v57);
      }

      v59 = CFArrayCreate(0, v56, v26, MEMORY[0x277CBF128]);
      if (v25)
      {
        if (v26 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v26;
        }

        v61 = v56;
        do
        {
          CFRelease(*v61++);
          --v60;
        }

        while (v60);
      }

      free(v56);
      CGColorSpaceGetModel(spacea);
      if (v59)
      {
        CFDictionaryAddValue(v23, @"componentValues", v59);
      }

      if (v27)
      {
        CFDictionaryAddValue(v23, @"componentValuesFormat", v27);
      }

      if (theDicta)
      {
        CFDictionaryAddValue(v23, @"colorSpaceName", theDicta);
      }

      if (v59)
      {
        CFRelease(v59);
      }

      if (theDicta)
      {
        CFRelease(theDicta);
      }

      if (v27)
      {
        CFRelease(v27);
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_99:

  return v23;
}

- (SKCameraNode)camera
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_willMoveFromView:(id)a3
{
  v4 = a3;
  [(SKScene *)self willMoveFromView:?];
  objc_storeWeak(&self->_view, 0);
  [(SKScene *)self checkAudioEngine];
}

- (void)_update:
{
  v0 = fieldRepresentedObject();
  v1 = v0;
  if (v0)
  {
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    SKCNode::resolveWorldPositionRotationAndScale([v0 _backingNode], &v6, &v5, &v4);
    v2 = [v1 field];
    [v2 setPosition:*&v6];
    LODWORD(v3) = DWORD2(v5);
    [v2 setRotation:v3];
    [v2 setScale:*&v4];
  }
}

- (uint64_t)_update:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end