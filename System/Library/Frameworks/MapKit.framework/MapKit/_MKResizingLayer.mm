@interface _MKResizingLayer
- (NSArray)sizeToBoundsLayers;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsScale:(double)scale;
- (void)setMask:(id)mask;
- (void)sizeSublayerToBounds:(id)bounds;
@end

@implementation _MKResizingLayer

- (void)setContentsScale:(double)scale
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _MKResizingLayer;
  [(_MKResizingLayer *)&v15 setContentsScale:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sublayers = [(_MKResizingLayer *)self sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v11 + 1) + 8 * v9++) setContentsScale:scale];
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  mask = [(_MKResizingLayer *)self mask];
  [mask setContentsScale:scale];
}

- (void)setMask:(id)mask
{
  v17.receiver = self;
  v17.super_class = _MKResizingLayer;
  maskCopy = mask;
  [(_MKResizingLayer *)&v17 setMask:maskCopy];
  [(_MKResizingLayer *)self contentsScale:v17.receiver];
  v6 = v5;
  mask = [(_MKResizingLayer *)self mask];
  [mask setContentsScale:v6];

  LODWORD(mask) = [(NSMutableArray *)self->_sizedLayers containsObject:maskCopy];
  if (mask)
  {
    [(_MKResizingLayer *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    mask2 = [(_MKResizingLayer *)self mask];
    [mask2 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  if (self->_needsLayoutOnBoundsChange)
  {
    [(_MKResizingLayer *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v15 = bounds.size.height;
    v13 = bounds.size.width;
    v11 = bounds.origin.y;
    v9 = bounds.origin.x;
  }

  v28.receiver = self;
  v28.super_class = _MKResizingLayer;
  [(_MKResizingLayer *)&v28 setBounds:x, y, width, height];
  _mapkit_shouldAdoptImplicitAnimationParameters = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
  if ((_mapkit_shouldAdoptImplicitAnimationParameters & 1) == 0)
  {
    v17 = +[MKThreadContext currentContext];
    [v17 _CA_setDisableActions:1];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_sizedLayers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * v22++) setFrame:{x, y, width, height, v24}];
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v20);
  }

  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectEqualToRect(v31, v32))
  {
    [(_MKResizingLayer *)self layoutSublayers];
  }

  if ((_mapkit_shouldAdoptImplicitAnimationParameters & 1) == 0)
  {
    v23 = +[MKThreadContext currentContext];
    [v23 _CA_setDisableActions:0];
  }
}

- (void)sizeSublayerToBounds:(id)bounds
{
  sizedLayers = self->_sizedLayers;
  if (sizedLayers)
  {

    [(NSMutableArray *)sizedLayers addObject:bounds];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:bounds];
    v6 = self->_sizedLayers;
    self->_sizedLayers = v5;
  }
}

- (NSArray)sizeToBoundsLayers
{
  v2 = [(NSMutableArray *)self->_sizedLayers copy];

  return v2;
}

@end