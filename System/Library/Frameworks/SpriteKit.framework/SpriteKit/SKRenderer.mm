@interface SKRenderer
+ (SKRenderer)rendererWithDevice:(id)device;
- (BOOL)ignoresSiblingOrder;
- (BOOL)shouldCullNonVisibleNodes;
- (BOOL)showsDrawCount;
- (BOOL)showsFields;
- (BOOL)showsNodeCount;
- (BOOL)showsPhysics;
- (BOOL)showsQuadCount;
- (SKRenderer)initWithSKCRenderer:(void *)renderer;
- (id)_getOptions;
- (void)_initialize;
- (void)_notifyWillRenderContent;
- (void)_update:(double)_update;
- (void)dealloc;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)commandBuffer renderPassDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor;
- (void)renderWithViewport:(CGRect)viewport renderCommandEncoder:(id)renderCommandEncoder renderPassDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor commandQueue:(id)commandQueue;
- (void)setIgnoresSiblingOrder:(BOOL)ignoresSiblingOrder;
- (void)setShouldCullNonVisibleNodes:(BOOL)shouldCullNonVisibleNodes;
- (void)setShowsDrawCount:(BOOL)showsDrawCount;
- (void)setShowsFields:(BOOL)showsFields;
- (void)setShowsNodeCount:(BOOL)showsNodeCount;
- (void)setShowsPhysics:(BOOL)showsPhysics;
- (void)setShowsQuadCount:(BOOL)showsQuadCount;
- (void)updateAtTime:(NSTimeInterval)currentTime;
@end

@implementation SKRenderer

+ (SKRenderer)rendererWithDevice:(id)device
{
  v3 = device;
  v4 = SKGetGlobalMetalDevice();

  if (!v4)
  {
    SKSetGlobalMetalDevice(v3);
  }

  operator new();
}

- (SKRenderer)initWithSKCRenderer:(void *)renderer
{
  v7.receiver = self;
  v7.super_class = SKRenderer;
  v4 = [(SKRenderer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_skcRenderer = renderer;
    [(SKRenderer *)v4 _initialize];
  }

  return v5;
}

- (void)_initialize
{
  [(SKRenderer *)self setScene:0];
  self->_hasRenderedForCurrentUpdate = 0;
  *&self->_needsInitialUpdate = 1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  renderOptions = self->_renderOptions;
  self->_renderOptions = dictionary;

  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.3];
  [(NSMutableDictionary *)self->_renderOptions setObject:v5 forKeyedSubscript:@"debugDrawStats_BGColor"];

  v6 = MEMORY[0x277CBEC38];
  [(NSMutableDictionary *)self->_renderOptions setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"debugDisablePresentationTime"];
  [(NSMutableDictionary *)self->_renderOptions setObject:v6 forKeyedSubscript:@"cullNonVisibleNodes"];
  v7 = MEMORY[0x277CBEC28];
  v8 = self->_renderOptions;

  [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:@"ignoresSiblingOrder"];
}

- (void)dealloc
{
  skcRenderer = self->_skcRenderer;
  if (skcRenderer)
  {
    SKCRenderer::~SKCRenderer(skcRenderer);
    MEMORY[0x21CF0A160]();
    self->_skcRenderer = 0;
  }

  v4.receiver = self;
  v4.super_class = SKRenderer;
  [(SKRenderer *)&v4 dealloc];
}

- (void)renderWithViewport:(CGRect)viewport renderCommandEncoder:(id)renderCommandEncoder renderPassDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor commandQueue:(id)commandQueue
{
  v9 = renderCommandEncoder;
  v10 = renderPassDescriptor;
  v11 = commandQueue;
  SKCRenderer::getBackingContext(self->_skcRenderer, &lpsrc);
  if (!lpsrc)
  {
    v12 = 0;
    goto LABEL_6;
  }

  v12 = __dynamic_cast(lpsrc, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
  if (!v12)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v12)
  {
    jet_context_Metal::override_Metal_render_state();
    v14 = (*(*v12 + 400))(v12, v9, v10);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v15, v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)commandBuffer renderPassDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  v14 = commandBuffer;
  v11 = renderPassDescriptor;
  commandQueue = [v14 commandQueue];
  v13 = [v14 renderCommandEncoderWithDescriptor:v11];
  [v13 setLabel:@"SKRenderer Pass"];
  [(SKRenderer *)self renderWithViewport:v13 renderCommandEncoder:v11 renderPassDescriptor:commandQueue commandQueue:x, y, width, height];
  [v13 endEncoding];
}

- (void)_notifyWillRenderContent
{
  scene = self->_scene;
  if (scene)
  {
    delegate = [(SKScene *)scene delegate];
    if (delegate)
    {
      v11 = delegate;
      delegate2 = [(SKScene *)self->_scene delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        delegate3 = [(SKScene *)self->_scene delegate];
        [delegate3 willRenderContentForScene:self->_scene];
      }
    }
  }

  nextScene = self->_nextScene;
  if (nextScene)
  {
    delegate4 = [(SKScene *)nextScene delegate];
    if (delegate4)
    {
      v13 = delegate4;
      delegate5 = [(SKScene *)self->_nextScene delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate6 = [(SKScene *)self->_nextScene delegate];
        [delegate6 willRenderContentForScene:self->_nextScene];
      }
    }
  }
}

- (void)updateAtTime:(NSTimeInterval)currentTime
{
  if (sk_debug_get_optional())
  {
    kdebug_trace();
  }

  if (currentTime <= 0.0)
  {
    currentTime = CACurrentMediaTime();
  }

  [(SKRenderer *)self _update:currentTime];

  kdebug_trace();
}

- (void)_update:(double)_update
{
  p_scene = &self->_scene;
  if ([(SKScene *)self->_scene scaleMode]== SKSceneScaleModeResizeFill)
  {
    [(SKScene *)self->_scene size];
    if (v7 != self->_renderBounds.size.width || v6 != self->_renderBounds.size.height)
    {
      [(SKScene *)*p_scene setSize:?];
    }
  }

  if ([(SKNode *)*p_scene isPaused])
  {
    p_needsInitialUpdate = &self->_needsInitialUpdate;
    if (!self->_needsInitialUpdate)
    {
      goto LABEL_50;
    }
  }

  v10 = _update - self->_previousTime;
  if (v10 < 0.0)
  {
    return;
  }

  if (v10 <= 1.0)
  {
    currentTime = self->_currentTime;
    self->_currentTime = _update;
    self->_previousTime = currentTime;
    goto LABEL_21;
  }

  scene = self->_scene;
  nextScene = self->_nextScene;
  if (!scene)
  {
    isPaused = 0;
    if (nextScene)
    {
      goto LABEL_13;
    }

LABEL_16:
    isPaused2 = 0;
    goto LABEL_17;
  }

  isPaused = [(SKNode *)self->_scene isPaused];
  [(SKScene *)*p_scene setPaused:1];
  if (!nextScene)
  {
    goto LABEL_16;
  }

LABEL_13:
  isPaused2 = [(SKNode *)self->_nextScene isPaused];
  [(SKScene *)self->_nextScene setPaused:1];
LABEL_17:
  v16 = self->_currentTime;
  self->_currentTime = _update;
  self->_previousTime = v16;
  if (scene)
  {
    [(SKScene *)*p_scene setPaused:0];
    [(SKScene *)*p_scene setPaused:isPaused];
  }

  if (nextScene)
  {
    [(SKScene *)self->_nextScene setPaused:0];
    [(SKScene *)self->_nextScene setPaused:isPaused2];
  }

LABEL_21:
  transition = self->_transition;
  if (transition)
  {
    _backingNode = [(SKTransition *)transition _backingNode];
    *(_backingNode + 584) = *(_backingNode + 584) + v10;
    _backingNode2 = [(SKTransition *)self->_transition _backingNode];
    v20 = *([(SKTransition *)self->_transition _backingNode]+ 584);
    _backingNode2[180] = v20 / *([(SKTransition *)self->_transition _backingNode]+ 580);
    v21 = *([(SKTransition *)self->_transition _backingNode]+ 584);
    if (v21 >= *([(SKTransition *)self->_transition _backingNode]+ 580))
    {
      if (*([(SKTransition *)self->_transition _backingNode]+ 576) == 1)
      {
        [(SKScene *)*p_scene setPaused:0];
      }

      [(SKScene *)self->_scene _willMoveFromView:self];
      objc_storeStrong(p_scene, self->_nextScene);
      v22 = self->_nextScene;
      self->_nextScene = 0;

      self->_disableInput = 0;
      if (*([(SKTransition *)self->_transition _backingNode]+ 577) == 1)
      {
        [(SKScene *)*p_scene setPaused:0];
      }

      v23 = self->_transition;
      self->_transition = 0;

      touchMap = self->_touchMap;
      if (touchMap)
      {
        [(NSMapTable *)touchMap removeAllObjects];
      }

      if (!*p_scene)
      {
        v26 = 0;
        goto LABEL_38;
      }

      SKCNode::setDirty([(SKNode *)*p_scene _backingNode]);
    }
  }

  v25 = *p_scene;
  v26 = v25;
  if (v25 && ![(SKNode *)v25 isPaused])
  {
    if (![(SKScene *)v26 _usesExplicitUpdate])
    {
LABEL_36:
      [(SKScene *)v26 _update:_update];
      self->_hasRenderedForCurrentUpdate = 0;
      goto LABEL_38;
    }

    if ([(SKScene *)v26 _needsUpdate])
    {
      [(SKScene *)v26 set_needsUpdate:0];
      goto LABEL_36;
    }
  }

LABEL_38:
  v27 = self->_nextScene;
  v28 = v27;
  if (v27 && ![(SKNode *)v27 isPaused])
  {
    if (![(SKScene *)v28 _usesExplicitUpdate])
    {
LABEL_43:
      [(SKScene *)v28 _update:_update];
      self->_hasRenderedForCurrentUpdate = 0;
      goto LABEL_44;
    }

    if ([(SKScene *)v28 _needsUpdate])
    {
      [(SKScene *)v28 set_needsUpdate:0];
      goto LABEL_43;
    }
  }

LABEL_44:

  p_needsInitialUpdate = &self->_needsInitialUpdate;
  if (self->_needsInitialUpdate)
  {
    v29 = self->_transition;
    if (v29)
    {
      if (*([(SKTransition *)v29 _backingNode]+ 576) == 1)
      {
        [(SKScene *)*p_scene setPaused:1];
      }

      if (*([(SKTransition *)self->_transition _backingNode]+ 577) == 1)
      {
        [(SKScene *)self->_nextScene setPaused:1];
      }
    }
  }

LABEL_50:
  *p_needsInitialUpdate = 0;
}

- (id)_getOptions
{
  v2 = [(NSMutableDictionary *)self->_renderOptions mutableCopy];
  v3 = sk_get_debug_options();
  [v2 addEntriesFromDictionary:v3];

  return v2;
}

- (void)setShouldCullNonVisibleNodes:(BOOL)shouldCullNonVisibleNodes
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:shouldCullNonVisibleNodes];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)shouldCullNonVisibleNodes
{
  v2 = [(NSMutableDictionary *)self->_renderOptions objectForKeyedSubscript:@"cullNonVisibleNodes"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoresSiblingOrder:(BOOL)ignoresSiblingOrder
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:ignoresSiblingOrder];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)ignoresSiblingOrder
{
  v2 = [(NSMutableDictionary *)self->_renderOptions objectForKeyedSubscript:@"ignoresSiblingOrder"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setShowsPhysics:(BOOL)showsPhysics
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsPhysics];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsPhysics
{
  v2 = [(NSMutableDictionary *)self->_renderOptions valueForKey:@"debugDrawPhysics"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setShowsFields:(BOOL)showsFields
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsFields];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsFields
{
  v2 = [(NSMutableDictionary *)self->_renderOptions objectForKeyedSubscript:@"debugDrawPhysicsFields"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setShowsQuadCount:(BOOL)showsQuadCount
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsQuadCount];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsQuadCount
{
  v2 = [(NSMutableDictionary *)self->_renderOptions objectForKeyedSubscript:@"debugDrawStats_QuadCount"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setShowsNodeCount:(BOOL)showsNodeCount
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsNodeCount];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsNodeCount
{
  v2 = [(NSMutableDictionary *)self->_renderOptions objectForKeyedSubscript:@"debugDrawStats_NodeCount"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setShowsDrawCount:(BOOL)showsDrawCount
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsDrawCount];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsDrawCount
{
  v2 = [(NSMutableDictionary *)self->_renderOptions objectForKeyedSubscript:@"debugDrawStats_DrawCount"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end