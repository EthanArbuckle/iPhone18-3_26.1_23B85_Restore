@interface MusicModelMenu
+ (MusicModelMenu)menuWithJSMenu:(id)a3;
@end

@implementation MusicModelMenu

+ (MusicModelMenu)menuWithJSMenu:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __33__MusicModelMenu_menuWithJSMenu___block_invoke;
  v9[3] = &unk_CEF690;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithIdentifiers:0 block:v9];

  return v7;
}

@end