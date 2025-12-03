@interface _MKMaskingPolygonOverlayRenderer
- (BOOL)_canPossiblyDrawMapRect:(id)rect zoomScale:(double)scale;
- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)overlay;
- (void)setStyle:(int64_t)style;
@end

@implementation _MKMaskingPolygonOverlayRenderer

- (BOOL)_canPossiblyDrawMapRect:(id)rect zoomScale:(double)scale
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  style = [(_MKMaskingPolygonOverlayRenderer *)self style];
  if (style != 1)
  {
    v12.receiver = self;
    v12.super_class = _MKMaskingPolygonOverlayRenderer;
    LOBYTE(style) = [(MKOverlayRenderer *)&v12 _canPossiblyDrawMapRect:v8 zoomScale:v7, var0, var1, scale];
  }

  return style;
}

- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  style = [(_MKMaskingPolygonOverlayRenderer *)self style];
  if (style != 1)
  {
    v12.receiver = self;
    v12.super_class = _MKMaskingPolygonOverlayRenderer;
    LOBYTE(style) = [(MKOverlayRenderer *)&v12 canDrawMapRect:v8 zoomScale:v7, var0, var1, scale];
  }

  return style;
}

- (id)vectorDataForOverlay:(id)overlay
{
  if ([(_MKMaskingPolygonOverlayRenderer *)self _canProvideVectorGeometry])
  {
    _vectorGeometry = [(_MKMaskingPolygonOverlayRenderer *)self _vectorGeometry];
  }

  else
  {
    _vectorGeometry = 0;
  }

  return _vectorGeometry;
}

- (id)_vectorGeometry
{
  v23 = *MEMORY[0x1E69E9840];
  vectorData = self->_vectorData;
  if (!vectorData)
  {
    v4 = MEMORY[0x1E695DF70];
    overlay = [(MKOverlayRenderer *)self overlay];
    polygons = [overlay polygons];
    v7 = [v4 arrayWithCapacity:{objc_msgSend(polygons, "count")}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    overlay2 = [(MKOverlayRenderer *)self overlay];
    polygons2 = [overlay2 polygons];

    v10 = [polygons2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(polygons2);
          }

          v14 = [objc_alloc(MEMORY[0x1E69DF4C8]) initWithMapPoints:objc_msgSend(*(*(&v18 + 1) + 8 * i) count:{"points"), objc_msgSend(*(*(&v18 + 1) + 8 * i), "pointCount")}];
          [v7 addObject:v14];
        }

        v11 = [polygons2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [objc_alloc(MEMORY[0x1E69DF4C0]) initWithPolygons:v7];
    v16 = self->_vectorData;
    self->_vectorData = v15;

    [(VKVectorOverlayMaskingPolygonGroup *)self->_vectorData setStyle:[(_MKMaskingPolygonOverlayRenderer *)self style]== 1];
    [(VKVectorOverlayMaskingPolygonGroup *)self->_vectorData setFillMode:1];

    vectorData = self->_vectorData;
  }

  return vectorData;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(VKVectorOverlayMaskingPolygonGroup *)self->_vectorData setStyle:style == 1];
  }
}

@end