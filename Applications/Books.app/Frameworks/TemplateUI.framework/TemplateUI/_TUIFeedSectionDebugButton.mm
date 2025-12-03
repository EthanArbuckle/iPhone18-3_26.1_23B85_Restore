@interface _TUIFeedSectionDebugButton
- (_TUIFeedSectionDebug)debug;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation _TUIFeedSectionDebugButton

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_debug);
  v9 = [WeakRetained contextMenuInteraction:interactionCopy configurationForMenuAtLocation:{x, y}];

  return v9;
}

- (_TUIFeedSectionDebug)debug
{
  WeakRetained = objc_loadWeakRetained(&self->_debug);

  return WeakRetained;
}

@end