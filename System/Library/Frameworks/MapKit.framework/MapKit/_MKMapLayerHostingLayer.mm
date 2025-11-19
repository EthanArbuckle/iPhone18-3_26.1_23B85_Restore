@interface _MKMapLayerHostingLayer
- (_MKMapLayerHostingView)hostView;
@end

@implementation _MKMapLayerHostingLayer

- (_MKMapLayerHostingView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

@end