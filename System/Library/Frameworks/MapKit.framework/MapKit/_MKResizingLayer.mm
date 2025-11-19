@interface _MKResizingLayer
- (NSArray)sizeToBoundsLayers;
- (void)setBounds:(CGRect)a3;
- (void)setContentsScale:(double)a3;
- (void)setMask:(id)a3;
- (void)sizeSublayerToBounds:(id)a3;
@end

@implementation _MKResizingLayer

- (void)setContentsScale:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _MKResizingLayer;
  [(_MKResizingLayer *)&v15 setContentsScale:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(_MKResizingLayer *)self sublayers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setContentsScale:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(_MKResizingLayer *)self mask];
  [v10 setContentsScale:a3];
}

- (void)setMask:(id)a3
{
  v17.receiver = self;
  v17.super_class = _MKResizingLayer;
  v4 = a3;
  [(_MKResizingLayer *)&v17 setMask:v4];
  [(_MKResizingLayer *)self contentsScale:v17.receiver];
  v6 = v5;
  v7 = [(_MKResizingLayer *)self mask];
  [v7 setContentsScale:v6];

  LODWORD(v7) = [(NSMutableArray *)self->_sizedLayers containsObject:v4];
  if (v7)
  {
    [(_MKResizingLayer *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(_MKResizingLayer *)self mask];
    [v16 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v15 = a3.size.height;
    v13 = a3.size.width;
    v11 = a3.origin.y;
    v9 = a3.origin.x;
  }

  v28.receiver = self;
  v28.super_class = _MKResizingLayer;
  [(_MKResizingLayer *)&v28 setBounds:x, y, width, height];
  v16 = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
  if ((v16 & 1) == 0)
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

  if ((v16 & 1) == 0)
  {
    v23 = +[MKThreadContext currentContext];
    [v23 _CA_setDisableActions:0];
  }
}

- (void)sizeSublayerToBounds:(id)a3
{
  sizedLayers = self->_sizedLayers;
  if (sizedLayers)
  {

    [(NSMutableArray *)sizedLayers addObject:a3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:a3];
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