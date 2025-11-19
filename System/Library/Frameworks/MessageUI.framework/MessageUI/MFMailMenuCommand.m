@interface MFMailMenuCommand
+ (id)shortcutWithCommand:(id)a3 menu:(int64_t)a4;
+ (id)shortcutWithCommand:(id)a3 menu:(int64_t)a4 position:(id)a5;
+ (id)shortcutWithInput:(id)a3 flags:(int64_t)a4 repeatable:(BOOL)a5 menu:(int64_t)a6 action:(SEL)a7;
+ (id)shortcutWithInput:(id)a3 flags:(int64_t)a4 repeatable:(BOOL)a5 menu:(int64_t)a6 action:(SEL)a7 title:(id)a8 systemImageName:(id)a9 plist:(id)a10;
+ (id)shortcutWithInput:(id)a3 flags:(int64_t)a4 repeatable:(BOOL)a5 menu:(int64_t)a6 action:(SEL)a7 title:(id)a8 systemImageName:(id)a9 plist:(id)a10 position:(id)a11;
- (MFMailMenuCommand)initWithCommand:(id)a3 menu:(int64_t)a4 position:(id)a5;
@end

@implementation MFMailMenuCommand

+ (id)shortcutWithCommand:(id)a3 menu:(int64_t)a4
{
  v5 = a3;
  v6 = [[MFMailMenuCommand alloc] initWithCommand:v5 menu:a4 position:&unk_1F3D16170];

  return v6;
}

+ (id)shortcutWithCommand:(id)a3 menu:(int64_t)a4 position:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [[MFMailMenuCommand alloc] initWithCommand:v7 menu:a4 position:v8];

  return v9;
}

+ (id)shortcutWithInput:(id)a3 flags:(int64_t)a4 repeatable:(BOOL)a5 menu:(int64_t)a6 action:(SEL)a7
{
  v7 = [a1 shortcutWithInput:a3 flags:a4 repeatable:a5 menu:a6 action:a7 title:0 systemImageName:0 plist:0];

  return v7;
}

+ (id)shortcutWithInput:(id)a3 flags:(int64_t)a4 repeatable:(BOOL)a5 menu:(int64_t)a6 action:(SEL)a7 title:(id)a8 systemImageName:(id)a9 plist:(id)a10
{
  v10 = [a1 shortcutWithInput:a3 flags:a4 repeatable:a5 menu:a6 action:a7 title:a8 systemImageName:a9 plist:a10 position:&unk_1F3D16170];

  return v10;
}

+ (id)shortcutWithInput:(id)a3 flags:(int64_t)a4 repeatable:(BOOL)a5 menu:(int64_t)a6 action:(SEL)a7 title:(id)a8 systemImageName:(id)a9 plist:(id)a10 position:(id)a11
{
  v14 = a5;
  v16 = a3;
  v17 = a8;
  v18 = a10;
  v19 = a11;
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:a9];
  v21 = [MEMORY[0x1E69DCBA0] commandWithTitle:v17 image:v20 action:a7 input:v16 modifierFlags:a4 propertyList:v18];
  v22 = v21;
  if (v14)
  {
    v23 = [v21 repeatBehavior];
  }

  else
  {
    v23 = 2;
  }

  [v22 setRepeatBehavior:v23];
  v24 = [MFMailMenuCommand shortcutWithCommand:v22 menu:a6 position:v19];

  return v24;
}

- (MFMailMenuCommand)initWithCommand:(id)a3 menu:(int64_t)a4 position:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MFMailMenuCommand;
  v11 = [(MFMailMenuCommand *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_command, a3);
    v12->_menu = a4;
    objc_storeStrong(&v12->_position, a5);
  }

  return v12;
}

@end