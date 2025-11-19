@interface ICMathNotesWindowSceneDelegate
- (ICMathNotesWindowSceneDelegate)init;
- (void)ic_setupWithScene:(id)a3 options:(id)a4;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation ICMathNotesWindowSceneDelegate

- (void)ic_setupWithScene:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004966DC(v6);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004961BC(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004964CC(v4);
}

- (ICMathNotesWindowSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MathNotesSceneDelegate();
  return [(ICMathNotesWindowSceneDelegate *)&v3 init];
}

@end