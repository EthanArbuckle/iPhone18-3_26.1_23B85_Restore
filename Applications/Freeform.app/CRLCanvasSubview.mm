@interface CRLCanvasSubview
- (CALayerDelegate)layerDelegate;
- (CRLCanvasSubview)initWithFrame:(CGRect)frame;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setSubviews:(id)subviews;
@end

@implementation CRLCanvasSubview

- (CRLCanvasSubview)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CRLCanvasSubview;
  v3 = [(CRLCanvasSubview *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLCanvasSubview *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v4;
}

- (void)setSubviews:(id)subviews
{
  subviewsCopy = subviews;
  subviews = [(CRLCanvasSubview *)self subviews];
  v6 = [subviews isEqualToArray:subviewsCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [NSMutableOrderedSet alloc];
    subviews2 = [(CRLCanvasSubview *)self subviews];
    v9 = [v7 initWithArray:subviews2];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = subviewsCopy;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          if ([v9 containsObject:v15])
          {
            subviews3 = [(CRLCanvasSubview *)self subviews];
            lastObject = [subviews3 lastObject];

            if (v15 != lastObject)
            {
              superview = [v15 superview];

              if (superview == self)
              {
                [(CRLCanvasSubview *)self bringSubviewToFront:v15];
              }

              else
              {
                [v15 removeFromSuperview];
                [(CRLCanvasSubview *)self addSubview:v15];
              }
            }

            [v9 removeObject:v15];
          }

          else
          {
            [(CRLCanvasSubview *)self addSubview:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v24 + 1) + 8 * j) removeFromSuperview];
        }

        v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v21);
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CRLCanvasSubview;
  v5 = [(CRLCanvasSubview *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  layerDelegate = [(CRLCanvasSubview *)self layerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [layerDelegate actionForLayer:layerCopy forKey:keyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  if (+[NSThread isMainThread])
  {
    v5.receiver = self;
    v5.super_class = CRLCanvasSubview;
    [(CRLCanvasSubview *)&v5 layoutSublayersOfLayer:layerCopy];
  }
}

- (CALayerDelegate)layerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layerDelegate);

  return WeakRetained;
}

@end