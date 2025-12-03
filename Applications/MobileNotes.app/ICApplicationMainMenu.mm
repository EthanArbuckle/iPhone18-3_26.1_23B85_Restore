@interface ICApplicationMainMenu
+ (void)buildMenuWithBuilder:(id)builder;
- (ICApplicationMainMenu)init;
@end

@implementation ICApplicationMainMenu

+ (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  sub_100377420(builder);

  swift_unknownObjectRelease();
}

- (ICApplicationMainMenu)init
{
  v3.receiver = self;
  v3.super_class = ICApplicationMainMenu;
  return [(ICApplicationMainMenu *)&v3 init];
}

@end