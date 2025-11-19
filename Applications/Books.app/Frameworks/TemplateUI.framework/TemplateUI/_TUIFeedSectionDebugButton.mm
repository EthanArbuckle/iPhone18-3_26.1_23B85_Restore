@interface _TUIFeedSectionDebugButton
- (_TUIFeedSectionDebug)debug;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation _TUIFeedSectionDebugButton

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_debug);
  v9 = [WeakRetained contextMenuInteraction:v7 configurationForMenuAtLocation:{x, y}];

  return v9;
}

- (_TUIFeedSectionDebug)debug
{
  WeakRetained = objc_loadWeakRetained(&self->_debug);

  return WeakRetained;
}

@end