@interface WKUIRemoteView
- (NSString)description;
- (WKUIRemoteView)initWithFrame:(CGRect)a3 pid:(int)a4 contextID:(unsigned int)a5;
@end

@implementation WKUIRemoteView

- (WKUIRemoteView)initWithFrame:(CGRect)a3 pid:(int)a4 contextID:(unsigned int)a5
{
  v6.receiver = self;
  v6.super_class = WKUIRemoteView;
  return [(_UIRemoteView *)&v6 initWithFrame:*&a4 pid:*&a5 contextID:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = WKUIRemoteView;
  v3 = [(WKUIRemoteView *)&v7 description];
  v4 = [(WKUIRemoteView *)self layer];
  return WebKit::RemoteLayerTreeNode::appendLayerDescription(v3, v4, v5);
}

@end