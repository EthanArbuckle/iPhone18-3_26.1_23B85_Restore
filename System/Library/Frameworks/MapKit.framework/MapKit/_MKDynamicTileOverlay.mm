@interface _MKDynamicTileOverlay
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (CLLocationCoordinate2D)coordinate;
- (_MKDynamicTileOverlay)init;
- (void)_cancelLoadingTileAtPath:(id *)path;
- (void)dealloc;
- (void)loadTileAtPath:(id *)path result:(id)result;
@end

@implementation _MKDynamicTileOverlay

- (void)_cancelLoadingTileAtPath:(id *)path
{
  v3 = *&path->var2;
  v4[0] = *&path->var0;
  v4[1] = v3;
  [(_MKDynamicTileOverlay *)self cancelLoadingTileAtPath:v4];
}

- (void)loadTileAtPath:(id *)path result:(id)result
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = MKErrorDomain;
  resultCopy = result;
  v8 = [v5 errorWithDomain:v6 code:1 userInfo:0];
  (*(result + 2))(resultCopy, 0, v8);
}

- (CLLocationCoordinate2D)coordinate
{
  v4 = CLLocationCoordinate2DMake(0.0, 0.0);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect
{
  v2 = 268435456.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 268435456.0;
  result.var1.var1 = v5;
  result.var1.var0 = v2;
  result.var0.var1 = v4;
  result.var0.var0 = v3;
  return result;
}

- (void)dealloc
{
  [_MKOverlayTileRequester unregisterDataSource:self->_providerID];
  v3.receiver = self;
  v3.super_class = _MKDynamicTileOverlay;
  [(_MKDynamicTileOverlay *)&v3 dealloc];
}

- (_MKDynamicTileOverlay)init
{
  v5.receiver = self;
  v5.super_class = _MKDynamicTileOverlay;
  v2 = [(_MKDynamicTileOverlay *)&v5 init];
  if (v2)
  {
    v2->_providerID = [_MKOverlayTileRequester registerDataSource:v2];
    *&v2->_minimumZ = xmmword_1A30F71D0;
    v2->_textureDimension = 512;
    v3 = v2;
  }

  return v2;
}

@end