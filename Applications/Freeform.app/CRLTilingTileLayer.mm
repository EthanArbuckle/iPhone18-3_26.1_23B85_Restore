@interface CRLTilingTileLayer
- (void)drawInContext:(CGContext *)a3;
- (void)setNeedsDisplayInRectIgnoringBackground:(CGRect)a3;
- (void)updateFrameWithTileSize:(CGSize)a3 tilesWide:(unint64_t)a4 tilesHigh:(unint64_t)a5;
@end

@implementation CRLTilingTileLayer

- (void)drawInContext:(CGContext *)a3
{
  v5 = +[NSThread currentThread];
  v6 = [v5 threadDictionary];
  [(CRLTilingTileLayer *)self position];
  v7 = [NSValue valueWithCGPoint:?];
  [v6 setValue:v7 forKey:@"CRLTilingTileLayerPositionTLSKey"];

  v8 = [(CRLTilingTileLayer *)self superlayer];
  [v8 i_drawTile:self inContext:a3];

  v10 = +[NSThread currentThread];
  v9 = [v10 threadDictionary];
  [v9 removeObjectForKey:@"CRLTilingTileLayerPositionTLSKey"];
}

- (void)updateFrameWithTileSize:(CGSize)a3 tilesWide:(unint64_t)a4 tilesHigh:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(CRLTilingTileLayer *)self superlayer];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v44 = v16;
  v45 = v15;

  index = self->_index;
  v18 = index / a4;
  v19 = index % a4;
  v20 = v14 + height * (index / a4);
  [(CRLTilingTileLayer *)self position];
  if (v12 + width * (index % a4) != v22 || v20 != v21)
  {
    [(CRLTilingTileLayer *)self setPosition:v12 + width * (index % a4), v20];
  }

  if (v19 == a4 - 1 || (v24 = sub_10011ECB4(), v18 == a5 - 1))
  {
    v47.origin.x = v12 + width * (index % a4);
    v47.origin.y = v14 + height * (index / a4);
    v47.size.width = width;
    v47.size.height = height;
    v50.origin.x = v12;
    v50.origin.y = v14;
    v50.size.height = v44;
    v50.size.width = v45;
    CGRectIntersection(v47, v50);
    v28 = sub_10011ECB4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v32 = v26;
    v34 = v27;
    v28 = v24;
    v30 = v25;
  }

  [(CRLTilingTileLayer *)self bounds:*&v44];
  v51.origin.x = v35;
  v51.origin.y = v36;
  v51.size.width = v37;
  v51.size.height = v38;
  v48.origin.x = v28;
  v48.origin.y = v30;
  v48.size.width = v32;
  v48.size.height = v34;
  if (!CGRectEqualToRect(v48, v51))
  {
    [(CRLTilingTileLayer *)self bounds];
    v52.origin.x = CGRectZero.origin.x;
    v52.origin.y = CGRectZero.origin.y;
    v52.size.width = CGRectZero.size.width;
    v52.size.height = CGRectZero.size.height;
    v39 = CGRectEqualToRect(v49, v52);
    [(CRLTilingTileLayer *)self setBounds:v28, v30, v32, v34];
    if (v39)
    {
      [(CRLTilingTileLayer *)self setNeedsDisplay];
    }

    else
    {
      v40 = [(CRLTilingTileLayer *)self superlayer];
      [v40 setNeedsDisplay];
    }
  }

  v41 = v19 == 0;
  if (v19)
  {
    v42 = 2;
  }

  else
  {
    v42 = 3;
  }

  if (v19 == a4 - 1)
  {
    v41 = v42;
  }

  if (index < a4)
  {
    v41 |= 4u;
  }

  if (v18 == a5 - 1)
  {
    v43 = v41 | 8;
  }

  else
  {
    v43 = v41;
  }

  if ([(CRLTilingTileLayer *)self edgeAntialiasingMask]!= v43)
  {

    [(CRLTilingTileLayer *)self setEdgeAntialiasingMask:v43];
  }
}

- (void)setNeedsDisplayInRectIgnoringBackground:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = CRLTilingTileLayer;
  [(CRLTilingTileLayer *)&v3 setNeedsDisplayInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end