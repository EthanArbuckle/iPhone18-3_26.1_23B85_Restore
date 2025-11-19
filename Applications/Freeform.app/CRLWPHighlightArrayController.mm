@interface CRLWPHighlightArrayController
- (CGAffineTransform)transform;
- (CRLWPHighlightArrayController)initWithZOrder:(double)a3 delegate:(id)a4;
- (id)anySuperlayer;
- (id)buildHighlightsForSearchReferences:(id)a3 contentsScaleForLayers:(double)a4 shouldCreateBackground:(BOOL)a5 backgroundColor:(CGColor *)a6;
- (unint64_t)pulseAnimationStyle:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)pulseAnimationDidStopForPulse:(id)a3;
- (void)removeLayersFromSuperlayer;
- (void)reset;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)startAnimating;
- (void)stop;
@end

@implementation CRLWPHighlightArrayController

- (CRLWPHighlightArrayController)initWithZOrder:(double)a3 delegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CRLWPHighlightArrayController;
  v7 = [(CRLWPHighlightArrayController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_zOrder = a3;
    v9 = *&CGAffineTransformIdentity.c;
    *&v8->_transform.a = *&CGAffineTransformIdentity.a;
    *&v8->_transform.c = v9;
    *&v8->_transform.tx = *&CGAffineTransformIdentity.tx;
    v8->_viewScale = 1.0;
    v8->_layerCreationLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v8;
}

- (void)dealloc
{
  [(CRLWPHighlightArrayController *)self disconnect];
  [(CRLWPHighlightArrayController *)self reset];
  v3.receiver = self;
  v3.super_class = CRLWPHighlightArrayController;
  [(CRLWPHighlightArrayController *)&v3 dealloc];
}

- (void)startAnimating
{
  if ([(NSMutableArray *)self->_controllers count]&& self->_shouldPulsate && !self->_pulsating)
  {
    [(NSMutableArray *)self->_controllers makeObjectsPerformSelector:"startAnimating"];
    self->_pulsating = 1;
  }
}

- (void)stop
{
  if (!self->_stopping)
  {
    self->_stopping = 1;
    if ([(NSMutableArray *)self->_controllers count])
    {
      if (self->_shouldPulsate)
      {
        self->_pulsating = 0;
        v3 = [(NSMutableArray *)self->_controllers copy];
        [v3 makeObjectsPerformSelector:"stop"];
      }
    }

    self->_stopping = 0;
  }
}

- (void)pulseAnimationDidStopForPulse:(id)a3
{
  self->_pulsating = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pulseAnimationDidStop:self];
}

- (unint64_t)pulseAnimationStyle:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 pulseAnimationStyle:self];

  return v7;
}

- (void)disconnect
{
  objc_storeWeak(&self->_delegate, 0);
  controllers = self->_controllers;

  [(NSMutableArray *)controllers makeObjectsPerformSelector:"disconnect"];
}

- (void)reset
{
  [(NSMutableArray *)self->_controllers makeObjectsPerformSelector:"reset"];
  controllers = self->_controllers;
  self->_controllers = 0;

  layers = self->_layers;
  self->_layers = 0;
}

- (id)buildHighlightsForSearchReferences:(id)a3 contentsScaleForLayers:(double)a4 shouldCreateBackground:(BOOL)a5 backgroundColor:(CGColor *)a6
{
  v7 = a5;
  v10 = a3;
  v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  os_unfair_lock_lock(&self->_layerCreationLock);
  if (!self->_layers)
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    layers = self->_layers;
    self->_layers = v11;
  }

  os_unfair_lock_unlock(&self->_layerCreationLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (self->_shouldPulsate)
        {
          v18 = [[CRLPulseAnimationController alloc] initWithDelegate:self];
        }

        else
        {
          v18 = objc_alloc_init(CRLHighlightController);
        }

        v19 = v18;
        [(CRLHighlightController *)v18 setShouldCreateBackground:v7];
        [(CRLHighlightController *)v19 setBackgroundColor:a6];
        [v30 addObject:v19];
        if (self->_shouldPulsate)
        {
          [(CRLPulseAnimationController *)v19 setAutohide:self->_autohide];
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v21 = [WeakRetained newPathForSearchReference:v17];

        if (v21)
        {
          if (!CGPathIsEmpty(v21))
          {
            BoundingBox = CGPathGetBoundingBox(v21);
            if (sub_1001207D0(BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height))
            {
              [(CRLHighlightController *)v19 setViewScale:self->_viewScale];
              [(CRLWPHighlightArrayController *)self transform];
              v31[0] = v31[3];
              v31[1] = v31[4];
              v31[2] = v31[5];
              [(CRLHighlightController *)v19 setTransform:v31];
              v22 = objc_loadWeakRetained(&self->_delegate);
              v23 = [v22 imageForSearchReference:v17 forPath:v21 shouldPulsate:self->_shouldPulsate];

              [(CRLHighlightController *)v19 createLayerWithZOrder:self->_zOrder contentsScaleForLayers:a4];
              [(CRLHighlightController *)v19 buildLayersForPath:v21 withImage:v23];
              v24 = [(CRLHighlightController *)v19 layer];
              os_unfair_lock_lock(&self->_layerCreationLock);
              [(NSMutableArray *)self->_layers addObject:v24];
              os_unfair_lock_unlock(&self->_layerCreationLock);
            }
          }

          CGPathRelease(v21);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  os_unfair_lock_lock(&self->_layerCreationLock);
  controllers = self->_controllers;
  if (controllers)
  {
    goto LABEL_21;
  }

  if (![obj count])
  {
    controllers = self->_controllers;
LABEL_21:
    [(NSMutableArray *)controllers addObjectsFromArray:v30];
    goto LABEL_24;
  }

  v26 = [v30 mutableCopy];
  v27 = self->_controllers;
  self->_controllers = v26;

LABEL_24:
  os_unfair_lock_unlock(&self->_layerCreationLock);

  return v30;
}

- (void)removeLayersFromSuperlayer
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_layers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperlayer];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)anySuperlayer
{
  if ([(NSMutableArray *)self->_layers count])
  {
    v3 = [(NSMutableArray *)self->_layers objectAtIndexedSubscript:0];
    v4 = [v3 superlayer];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].tx;
  *&retstr->a = *&self[1].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].a;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

@end