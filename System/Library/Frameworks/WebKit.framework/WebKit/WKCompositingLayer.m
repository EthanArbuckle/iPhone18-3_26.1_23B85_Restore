@interface WKCompositingLayer
- (id)description;
@end

@implementation WKCompositingLayer

- (id)description
{
  v6.receiver = self;
  v6.super_class = WKCompositingLayer;
  v3 = [(WKCompositingLayer *)&v6 description];
  return WebKit::RemoteLayerTreeNode::appendLayerDescription(v3, &self->super.super.isa, v4);
}

@end