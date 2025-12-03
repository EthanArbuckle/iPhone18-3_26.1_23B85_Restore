@interface ICMathNotesWindowSceneDelegate
- (ICMathNotesWindowSceneDelegate)init;
- (void)ic_setupWithScene:(id)scene options:(id)options;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation ICMathNotesWindowSceneDelegate

- (void)ic_setupWithScene:(id)scene options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  selfCopy = self;
  sub_1004966DC(sceneCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1004961BC(foregroundCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1004964CC(backgroundCopy);
}

- (ICMathNotesWindowSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MathNotesSceneDelegate();
  return [(ICMathNotesWindowSceneDelegate *)&v3 init];
}

@end