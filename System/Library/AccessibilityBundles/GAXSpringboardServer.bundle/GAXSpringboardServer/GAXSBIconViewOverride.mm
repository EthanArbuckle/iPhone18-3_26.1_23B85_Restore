@interface GAXSBIconViewOverride
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation GAXSBIconViewOverride

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = +[GAXSpringboard sharedInstance];
  if ([v8 isActive])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXSBIconViewOverride;
    v9 = [(GAXSBIconViewOverride *)&v11 contextMenuInteraction:v7 configurationForMenuAtLocation:x, y];
  }

  return v9;
}

@end