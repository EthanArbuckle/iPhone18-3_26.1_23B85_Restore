@interface _MKDynamicTileOverlayRenderer
- ($4479F518DFD59EF68F6FA14DAF968345)_keyToTilePath:(SEL)a3;
- (BOOL)overlay:(id)a3 canDrawKey:(id *)a4 withData:(id)a5;
- (_MKDynamicTileOverlayRenderer)initWithOverlay:(id)a3;
- (id)customTileProviderForOverlay:(id)a3;
- (void)overlay:(id)a3 didEnterKey:(id *)a4 withFallback:(BOOL)a5;
- (void)overlay:(id)a3 didExitKey:(id *)a4;
- (void)overlay:(id)a3 drawKey:(id *)a4 withData:(id)a5 inIOSurface:(__IOSurface *)a6 withTimestamp:(double)a7;
- (void)overlay:(id)a3 drawKey:(id *)a4 withData:(id)a5 inIOSurface:(__IOSurface *)a6 withTimestamp:(double)a7 withTileScale:(float)a8;
- (void)overlay:(id)a3 drawKey:(id *)a4 withData:(id)a5 inTexture:(id)a6 withTimestamp:(double)a7 withTileScale:(float)a8;
- (void)overlay:(id)a3 onVisibleTiles:(id)a4;
- (void)setAlpha:(double)a3;
- (void)setDesiredDisplayRate:(unint64_t)a3;
- (void)setForceContinuousLayout:(BOOL)a3;
- (void)setUseNativeDisplayRate:(BOOL)a3;
- (void)setUsesTileScale:(BOOL)a3;
@end

@implementation _MKDynamicTileOverlayRenderer

- (id)customTileProviderForOverlay:(id)a3
{
  customDataProvider = self->_customDataProvider;
  if (!customDataProvider)
  {
    v5 = [(MKOverlayRenderer *)self overlay];
    v6 = [v5 minimumZ];

    v7 = [(MKOverlayRenderer *)self overlay];
    v8 = [v7 maximumZ];

    if (v6 >= 0xFFFFFFFFLL)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0xFFFFFFFFLL)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v11 = objc_alloc(MEMORY[0x1E69DF410]);
    v12 = [(MKOverlayRenderer *)self overlay];
    v13 = [v12 _providerID];
    v14 = [(MKOverlayRenderer *)self overlay];
    v15 = [v11 initWithProviderID:v13 tileSize:512 minimumZ:v9 & ~(v9 >> 63) maximumZ:v10 & ~(v10 >> 63) textureDimension:{objc_msgSend(v14, "textureDimension")}];
    v16 = self->_customDataProvider;
    self->_customDataProvider = v15;

    [(MKOverlayRenderer *)self alpha];
    [(VKCustomTileOverlayProviderData *)self->_customDataProvider setAlpha:?];
    [(VKCustomTileOverlayProviderData *)self->_customDataProvider setDesiredDisplayRate:[(_MKDynamicTileOverlayRenderer *)self desiredDisplayRate]];
    [(VKCustomTileOverlayProviderData *)self->_customDataProvider setUsesTileScale:[(_MKDynamicTileOverlayRenderer *)self usesTileScale]];
    customDataProvider = self->_customDataProvider;
  }

  return customDataProvider;
}

- (void)overlay:(id)a3 onVisibleTiles:(id)a4
{
  v5 = a4;
  v6 = [v5 bytes];
  v7 = [v5 length];
  v8 = v7 >> 4;
  v9 = malloc_type_malloc(32 * (v7 >> 4), 0x1000040E0EAB150uLL);
  v10 = v9;
  if (v7 >= 0x10)
  {
    v11 = v9;
    v12 = v8;
    do
    {
      [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:v6];
      *v11 = v13;
      v11[1] = v14;
      v11 += 2;
      v6 += 16;
      --v12;
    }

    while (v12);
  }

  [(_MKDynamicTileOverlayRenderer *)self onVisibleTiles:v10 count:v8];
  free(v10);
}

- (void)overlay:(id)a3 didEnterKey:(id *)a4 withFallback:(BOOL)a5
{
  v5 = a5;
  v8 = 0u;
  v9 = 0u;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:a4];
  v7[0] = v8;
  v7[1] = v9;
  [(_MKDynamicTileOverlayRenderer *)self didEnterTile:v7 withFallback:v5];
}

- (void)overlay:(id)a3 didExitKey:(id *)a4
{
  v6 = 0u;
  v7 = 0u;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:a4];
  v5[0] = v6;
  v5[1] = v7;
  [(_MKDynamicTileOverlayRenderer *)self didExitTile:v5];
}

- (BOOL)overlay:(id)a3 canDrawKey:(id *)a4 withData:(id)a5
{
  v10 = 0u;
  v11 = 0u;
  v7 = a5;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:a4];
  v9[0] = v10;
  v9[1] = v11;
  LOBYTE(a4) = [(_MKDynamicTileOverlayRenderer *)self canDrawKey:v9 withTile:v7];

  return a4;
}

- (void)overlay:(id)a3 drawKey:(id *)a4 withData:(id)a5 inIOSurface:(__IOSurface *)a6 withTimestamp:(double)a7 withTileScale:(float)a8
{
  v15 = 0u;
  v16 = 0u;
  v13 = a5;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:a4];
  v14[0] = v15;
  v14[1] = v16;
  [(_MKDynamicTileOverlayRenderer *)self drawTileAtPath:v14 withTile:v13 inIOSurface:a6 withTimestamp:a7 withTileScale:COERCE_DOUBLE(__PAIR64__(DWORD1(v16), LODWORD(a8)))];
}

- (void)overlay:(id)a3 drawKey:(id *)a4 withData:(id)a5 inTexture:(id)a6 withTimestamp:(double)a7 withTileScale:(float)a8
{
  v16 = 0u;
  v17 = 0u;
  v13 = a6;
  v14 = a5;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:a4];
  v15[0] = v16;
  v15[1] = v17;
  [(_MKDynamicTileOverlayRenderer *)self drawTileAtPath:v15 withTile:v14 inTexture:v13 withTimestamp:a7 withTileScale:COERCE_DOUBLE(__PAIR64__(DWORD1(v17), LODWORD(a8)))];
}

- (void)overlay:(id)a3 drawKey:(id *)a4 withData:(id)a5 inIOSurface:(__IOSurface *)a6 withTimestamp:(double)a7
{
  v13 = 0u;
  v14 = 0u;
  v11 = a5;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:a4];
  v12[0] = v13;
  v12[1] = v14;
  [(_MKDynamicTileOverlayRenderer *)self drawTileAtPath:v12 withTile:v11 inIOSurface:a6 withTimestamp:a7];
}

- (void)setForceContinuousLayout:(BOOL)a3
{
  self->_forceContinuousLayout = a3;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setForceContinuousLayout:?];
  }
}

- (void)setUseNativeDisplayRate:(BOOL)a3
{
  self->_useNativeDisplayRate = a3;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setForceNativeDisplayRate:?];
  }
}

- (void)setDesiredDisplayRate:(unint64_t)a3
{
  self->_desiredDisplayRate = a3;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setDesiredDisplayRate:?];
  }
}

- (void)setUsesTileScale:(BOOL)a3
{
  self->_usesTileScale = a3;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setUsesTileScale:?];
  }
}

- (void)setAlpha:(double)a3
{
  v8.receiver = self;
  v8.super_class = _MKDynamicTileOverlayRenderer;
  [(MKOverlayRenderer *)&v8 setAlpha:?];
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider alpha];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42___MKDynamicTileOverlayRenderer_setAlpha___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = self;
    v7[5] = v6;
    *&v7[6] = a3;
    [(MKOverlayRenderer *)self _animateIfNecessaryForKey:@"alpha" withStepHandler:v7];
  }
}

- (_MKDynamicTileOverlayRenderer)initWithOverlay:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = _MKDynamicTileOverlayRenderer;
    v5 = [(MKOverlayRenderer *)&v12 initWithOverlay:v4];

    self = v5;
    v6 = self;
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a _MKDynamicTileOverlay but got %@", v4];

    v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
    [v10 raise];

    v6 = 0;
  }

  return v6;
}

- ($4479F518DFD59EF68F6FA14DAF968345)_keyToTilePath:(SEL)a3
{
  *&v5 = *&a4->var0;
  *(&v5 + 1) = HIDWORD(*&a4->var0);
  *&retstr->var0 = v5;
  retstr->var2 = a4->var2;
  result = [(MKOverlayRenderer *)self contentScaleFactor];
  retstr->var3 = v7;
  return result;
}

@end