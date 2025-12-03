@interface MusicModelMenu
+ (MusicModelMenu)menuWithJSMenu:(id)menu;
@end

@implementation MusicModelMenu

+ (MusicModelMenu)menuWithJSMenu:(id)menu
{
  menuCopy = menu;
  v5 = [self alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __33__MusicModelMenu_menuWithJSMenu___block_invoke;
  v9[3] = &unk_CEF690;
  v10 = menuCopy;
  v6 = menuCopy;
  v7 = [v5 initWithIdentifiers:0 block:v9];

  return v7;
}

@end