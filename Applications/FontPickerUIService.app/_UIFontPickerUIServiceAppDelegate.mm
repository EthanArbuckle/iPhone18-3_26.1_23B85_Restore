@interface _UIFontPickerUIServiceAppDelegate
- (_TtC19FontPickerUIService33_UIFontPickerUIServiceAppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation _UIFontPickerUIServiceAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1000682C4(sessionCopy);

  return v12;
}

- (_TtC19FontPickerUIService33_UIFontPickerUIServiceAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIFontPickerUIServiceAppDelegate();
  return [(_UIFontPickerUIServiceAppDelegate *)&v3 init];
}

@end