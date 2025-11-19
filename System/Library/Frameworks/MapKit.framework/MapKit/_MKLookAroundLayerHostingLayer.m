@interface _MKLookAroundLayerHostingLayer
- (_MKLookAroundLayerHostingView)hostView;
@end

@implementation _MKLookAroundLayerHostingLayer

- (_MKLookAroundLayerHostingView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

@end