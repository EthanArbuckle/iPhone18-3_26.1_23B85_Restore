@interface GAXSBIconViewOverride
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation GAXSBIconViewOverride

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  v8 = +[GAXSpringboard sharedInstance];
  if ([v8 isActive])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXSBIconViewOverride;
    v9 = [(GAXSBIconViewOverride *)&v11 contextMenuInteraction:interactionCopy configurationForMenuAtLocation:x, y];
  }

  return v9;
}

@end