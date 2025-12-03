@interface _MKDynamicTileOverlayRenderer
- ($4479F518DFD59EF68F6FA14DAF968345)_keyToTilePath:(SEL)path;
- (BOOL)overlay:(id)overlay canDrawKey:(id *)key withData:(id)data;
- (_MKDynamicTileOverlayRenderer)initWithOverlay:(id)overlay;
- (id)customTileProviderForOverlay:(id)overlay;
- (void)overlay:(id)overlay didEnterKey:(id *)key withFallback:(BOOL)fallback;
- (void)overlay:(id)overlay didExitKey:(id *)key;
- (void)overlay:(id)overlay drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp;
- (void)overlay:(id)overlay drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp withTileScale:(float)scale;
- (void)overlay:(id)overlay drawKey:(id *)key withData:(id)data inTexture:(id)texture withTimestamp:(double)timestamp withTileScale:(float)scale;
- (void)overlay:(id)overlay onVisibleTiles:(id)tiles;
- (void)setAlpha:(double)alpha;
- (void)setDesiredDisplayRate:(unint64_t)rate;
- (void)setForceContinuousLayout:(BOOL)layout;
- (void)setUseNativeDisplayRate:(BOOL)rate;
- (void)setUsesTileScale:(BOOL)scale;
@end

@implementation _MKDynamicTileOverlayRenderer

- (id)customTileProviderForOverlay:(id)overlay
{
  customDataProvider = self->_customDataProvider;
  if (!customDataProvider)
  {
    overlay = [(MKOverlayRenderer *)self overlay];
    minimumZ = [overlay minimumZ];

    overlay2 = [(MKOverlayRenderer *)self overlay];
    maximumZ = [overlay2 maximumZ];

    if (minimumZ >= 0xFFFFFFFFLL)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = minimumZ;
    }

    if (maximumZ >= 0xFFFFFFFFLL)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = maximumZ;
    }

    v11 = objc_alloc(MEMORY[0x1E69DF410]);
    overlay3 = [(MKOverlayRenderer *)self overlay];
    _providerID = [overlay3 _providerID];
    overlay4 = [(MKOverlayRenderer *)self overlay];
    v15 = [v11 initWithProviderID:_providerID tileSize:512 minimumZ:v9 & ~(v9 >> 63) maximumZ:v10 & ~(v10 >> 63) textureDimension:{objc_msgSend(overlay4, "textureDimension")}];
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

- (void)overlay:(id)overlay onVisibleTiles:(id)tiles
{
  tilesCopy = tiles;
  bytes = [tilesCopy bytes];
  v7 = [tilesCopy length];
  v8 = v7 >> 4;
  v9 = malloc_type_malloc(32 * (v7 >> 4), 0x1000040E0EAB150uLL);
  v10 = v9;
  if (v7 >= 0x10)
  {
    v11 = v9;
    v12 = v8;
    do
    {
      [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:bytes];
      *v11 = v13;
      v11[1] = v14;
      v11 += 2;
      bytes += 16;
      --v12;
    }

    while (v12);
  }

  [(_MKDynamicTileOverlayRenderer *)self onVisibleTiles:v10 count:v8];
  free(v10);
}

- (void)overlay:(id)overlay didEnterKey:(id *)key withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v8 = 0u;
  v9 = 0u;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:key];
  v7[0] = v8;
  v7[1] = v9;
  [(_MKDynamicTileOverlayRenderer *)self didEnterTile:v7 withFallback:fallbackCopy];
}

- (void)overlay:(id)overlay didExitKey:(id *)key
{
  v6 = 0u;
  v7 = 0u;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:key];
  v5[0] = v6;
  v5[1] = v7;
  [(_MKDynamicTileOverlayRenderer *)self didExitTile:v5];
}

- (BOOL)overlay:(id)overlay canDrawKey:(id *)key withData:(id)data
{
  v10 = 0u;
  v11 = 0u;
  dataCopy = data;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:key];
  v9[0] = v10;
  v9[1] = v11;
  LOBYTE(key) = [(_MKDynamicTileOverlayRenderer *)self canDrawKey:v9 withTile:dataCopy];

  return key;
}

- (void)overlay:(id)overlay drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp withTileScale:(float)scale
{
  v15 = 0u;
  v16 = 0u;
  dataCopy = data;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:key];
  v14[0] = v15;
  v14[1] = v16;
  [(_MKDynamicTileOverlayRenderer *)self drawTileAtPath:v14 withTile:dataCopy inIOSurface:surface withTimestamp:timestamp withTileScale:COERCE_DOUBLE(__PAIR64__(DWORD1(v16), LODWORD(scale)))];
}

- (void)overlay:(id)overlay drawKey:(id *)key withData:(id)data inTexture:(id)texture withTimestamp:(double)timestamp withTileScale:(float)scale
{
  v16 = 0u;
  v17 = 0u;
  textureCopy = texture;
  dataCopy = data;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:key];
  v15[0] = v16;
  v15[1] = v17;
  [(_MKDynamicTileOverlayRenderer *)self drawTileAtPath:v15 withTile:dataCopy inTexture:textureCopy withTimestamp:timestamp withTileScale:COERCE_DOUBLE(__PAIR64__(DWORD1(v17), LODWORD(scale)))];
}

- (void)overlay:(id)overlay drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp
{
  v13 = 0u;
  v14 = 0u;
  dataCopy = data;
  [(_MKDynamicTileOverlayRenderer *)self _keyToTilePath:key];
  v12[0] = v13;
  v12[1] = v14;
  [(_MKDynamicTileOverlayRenderer *)self drawTileAtPath:v12 withTile:dataCopy inIOSurface:surface withTimestamp:timestamp];
}

- (void)setForceContinuousLayout:(BOOL)layout
{
  self->_forceContinuousLayout = layout;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setForceContinuousLayout:?];
  }
}

- (void)setUseNativeDisplayRate:(BOOL)rate
{
  self->_useNativeDisplayRate = rate;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setForceNativeDisplayRate:?];
  }
}

- (void)setDesiredDisplayRate:(unint64_t)rate
{
  self->_desiredDisplayRate = rate;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setDesiredDisplayRate:?];
  }
}

- (void)setUsesTileScale:(BOOL)scale
{
  self->_usesTileScale = scale;
  customDataProvider = self->_customDataProvider;
  if (customDataProvider)
  {
    [(VKCustomTileOverlayProviderData *)customDataProvider setUsesTileScale:?];
  }
}

- (void)setAlpha:(double)alpha
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
    *&v7[6] = alpha;
    [(MKOverlayRenderer *)self _animateIfNecessaryForKey:@"alpha" withStepHandler:v7];
  }
}

- (_MKDynamicTileOverlayRenderer)initWithOverlay:(id)overlay
{
  overlayCopy = overlay;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = _MKDynamicTileOverlayRenderer;
    v5 = [(MKOverlayRenderer *)&v12 initWithOverlay:overlayCopy];

    self = v5;
    selfCopy = self;
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    overlayCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a _MKDynamicTileOverlay but got %@", overlayCopy];

    v10 = [v7 exceptionWithName:v8 reason:overlayCopy userInfo:0];
    [v10 raise];

    selfCopy = 0;
  }

  return selfCopy;
}

- ($4479F518DFD59EF68F6FA14DAF968345)_keyToTilePath:(SEL)path
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