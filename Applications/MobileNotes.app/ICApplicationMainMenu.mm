@interface ICApplicationMainMenu
+ (void)buildMenuWithBuilder:(id)a3;
- (ICApplicationMainMenu)init;
@end

@implementation ICApplicationMainMenu

+ (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  sub_100377420(a3);

  swift_unknownObjectRelease();
}

- (ICApplicationMainMenu)init
{
  v3.receiver = self;
  v3.super_class = ICApplicationMainMenu;
  return [(ICApplicationMainMenu *)&v3 init];
}

@end