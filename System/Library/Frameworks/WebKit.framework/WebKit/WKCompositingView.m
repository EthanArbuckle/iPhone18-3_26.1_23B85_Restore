@interface WKCompositingView
- (NSString)description;
@end

@implementation WKCompositingView

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WKCompositingView;
  v3 = [(WKCompositingView *)&v7 description];
  v4 = [(WKCompositingView *)self layer];
  return WebKit::RemoteLayerTreeNode::appendLayerDescription(v3, v4, v5);
}

@end