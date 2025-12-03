@interface WKUIRemoteView
- (NSString)description;
- (WKUIRemoteView)initWithFrame:(CGRect)frame pid:(int)pid contextID:(unsigned int)d;
@end

@implementation WKUIRemoteView

- (WKUIRemoteView)initWithFrame:(CGRect)frame pid:(int)pid contextID:(unsigned int)d
{
  v6.receiver = self;
  v6.super_class = WKUIRemoteView;
  return [(_UIRemoteView *)&v6 initWithFrame:*&pid pid:*&d contextID:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WKUIRemoteView;
  v3 = [(WKUIRemoteView *)&v7 description];
  layer = [(WKUIRemoteView *)self layer];
  return WebKit::RemoteLayerTreeNode::appendLayerDescription(v3, layer, v5);
}

@end