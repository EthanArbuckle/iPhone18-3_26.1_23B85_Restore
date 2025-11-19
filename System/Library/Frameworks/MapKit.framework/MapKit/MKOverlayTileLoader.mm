@interface MKOverlayTileLoader
@end

@implementation MKOverlayTileLoader

uint64_t ___MKOverlayTileLoader_block_invoke()
{
  v0 = VKRasterTileOverlayTileLoader();
  v1 = _MKOverlayTileLoader::_loader;
  _MKOverlayTileLoader::_loader = v0;

  v2 = _MKOverlayTileLoader::_loader;
  v3 = objc_opt_class();

  return [v2 registerTileLoader:v3];
}

@end