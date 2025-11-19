@interface MKMapViewUseModernControls
@end

@implementation MKMapViewUseModernControls

uint64_t ___MKMapViewUseModernControls_block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(2824);
  if (result)
  {
    result = GEOConfigGetBOOL();
  }

  _MKMapViewUseModernControls_useModernConntrols = result;
  return result;
}

@end