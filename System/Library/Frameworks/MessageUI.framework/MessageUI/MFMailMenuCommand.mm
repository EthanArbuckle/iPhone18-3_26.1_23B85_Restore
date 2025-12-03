@interface MFMailMenuCommand
+ (id)shortcutWithCommand:(id)command menu:(int64_t)menu;
+ (id)shortcutWithCommand:(id)command menu:(int64_t)menu position:(id)position;
+ (id)shortcutWithInput:(id)input flags:(int64_t)flags repeatable:(BOOL)repeatable menu:(int64_t)menu action:(SEL)action;
+ (id)shortcutWithInput:(id)input flags:(int64_t)flags repeatable:(BOOL)repeatable menu:(int64_t)menu action:(SEL)action title:(id)title systemImageName:(id)name plist:(id)self0;
+ (id)shortcutWithInput:(id)input flags:(int64_t)flags repeatable:(BOOL)repeatable menu:(int64_t)menu action:(SEL)action title:(id)title systemImageName:(id)name plist:(id)self0 position:(id)self1;
- (MFMailMenuCommand)initWithCommand:(id)command menu:(int64_t)menu position:(id)position;
@end

@implementation MFMailMenuCommand

+ (id)shortcutWithCommand:(id)command menu:(int64_t)menu
{
  commandCopy = command;
  v6 = [[MFMailMenuCommand alloc] initWithCommand:commandCopy menu:menu position:&unk_1F3D16170];

  return v6;
}

+ (id)shortcutWithCommand:(id)command menu:(int64_t)menu position:(id)position
{
  commandCopy = command;
  positionCopy = position;
  v9 = [[MFMailMenuCommand alloc] initWithCommand:commandCopy menu:menu position:positionCopy];

  return v9;
}

+ (id)shortcutWithInput:(id)input flags:(int64_t)flags repeatable:(BOOL)repeatable menu:(int64_t)menu action:(SEL)action
{
  v7 = [self shortcutWithInput:input flags:flags repeatable:repeatable menu:menu action:action title:0 systemImageName:0 plist:0];

  return v7;
}

+ (id)shortcutWithInput:(id)input flags:(int64_t)flags repeatable:(BOOL)repeatable menu:(int64_t)menu action:(SEL)action title:(id)title systemImageName:(id)name plist:(id)self0
{
  v10 = [self shortcutWithInput:input flags:flags repeatable:repeatable menu:menu action:action title:title systemImageName:name plist:plist position:&unk_1F3D16170];

  return v10;
}

+ (id)shortcutWithInput:(id)input flags:(int64_t)flags repeatable:(BOOL)repeatable menu:(int64_t)menu action:(SEL)action title:(id)title systemImageName:(id)name plist:(id)self0 position:(id)self1
{
  repeatableCopy = repeatable;
  inputCopy = input;
  titleCopy = title;
  plistCopy = plist;
  positionCopy = position;
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:name];
  v21 = [MEMORY[0x1E69DCBA0] commandWithTitle:titleCopy image:v20 action:action input:inputCopy modifierFlags:flags propertyList:plistCopy];
  v22 = v21;
  if (repeatableCopy)
  {
    repeatBehavior = [v21 repeatBehavior];
  }

  else
  {
    repeatBehavior = 2;
  }

  [v22 setRepeatBehavior:repeatBehavior];
  v24 = [MFMailMenuCommand shortcutWithCommand:v22 menu:menu position:positionCopy];

  return v24;
}

- (MFMailMenuCommand)initWithCommand:(id)command menu:(int64_t)menu position:(id)position
{
  commandCopy = command;
  positionCopy = position;
  v14.receiver = self;
  v14.super_class = MFMailMenuCommand;
  v11 = [(MFMailMenuCommand *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_command, command);
    v12->_menu = menu;
    objc_storeStrong(&v12->_position, position);
  }

  return v12;
}

@end