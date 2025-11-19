@interface _MKMaskingPolygonOverlayRenderer
- (BOOL)_canPossiblyDrawMapRect:(id)a3 zoomScale:(double)a4;
- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation _MKMaskingPolygonOverlayRenderer

- (BOOL)_canPossiblyDrawMapRect:(id)a3 zoomScale:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v7 = a3.var0.var1;
  v8 = a3.var0.var0;
  v10 = [(_MKMaskingPolygonOverlayRenderer *)self style];
  if (v10 != 1)
  {
    v12.receiver = self;
    v12.super_class = _MKMaskingPolygonOverlayRenderer;
    LOBYTE(v10) = [(MKOverlayRenderer *)&v12 _canPossiblyDrawMapRect:v8 zoomScale:v7, var0, var1, a4];
  }

  return v10;
}

- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v7 = a3.var0.var1;
  v8 = a3.var0.var0;
  v10 = [(_MKMaskingPolygonOverlayRenderer *)self style];
  if (v10 != 1)
  {
    v12.receiver = self;
    v12.super_class = _MKMaskingPolygonOverlayRenderer;
    LOBYTE(v10) = [(MKOverlayRenderer *)&v12 canDrawMapRect:v8 zoomScale:v7, var0, var1, a4];
  }

  return v10;
}

- (id)vectorDataForOverlay:(id)a3
{
  if ([(_MKMaskingPolygonOverlayRenderer *)self _canProvideVectorGeometry])
  {
    v4 = [(_MKMaskingPolygonOverlayRenderer *)self _vectorGeometry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_vectorGeometry
{
  v23 = *MEMORY[0x1E69E9840];
  vectorData = self->_vectorData;
  if (!vectorData)
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = [(MKOverlayRenderer *)self overlay];
    v6 = [v5 polygons];
    v7 = [v4 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(MKOverlayRenderer *)self overlay];
    v9 = [v8 polygons];

    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [objc_alloc(MEMORY[0x1E69DF4C8]) initWithMapPoints:objc_msgSend(*(*(&v18 + 1) + 8 * i) count:{"points"), objc_msgSend(*(*(&v18 + 1) + 8 * i), "pointCount")}];
          [v7 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(VKVectorOverlayMaskingPolygonGroup *)self->_vectorData setStyle:a3 == 1];
  }
}

@end