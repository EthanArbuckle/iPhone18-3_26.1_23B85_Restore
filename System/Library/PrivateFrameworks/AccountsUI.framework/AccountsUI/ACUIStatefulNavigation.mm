@interface ACUIStatefulNavigation
+ (BOOL)acui_statefulNavigation:(id)navigation;
+ (void)acui_popLastItemFromStack:(id)stack;
@end

@implementation ACUIStatefulNavigation

+ (BOOL)acui_statefulNavigation:(id)navigation
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](navigation);
  swift_getObjCClassMetadata();
  sub_23DCC3FF0(navigation);
  MEMORY[0x277D82BD8](navigation);
  return sub_23DCC6EC0() & 1;
}

+ (void)acui_popLastItemFromStack:(id)stack
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](stack);
  swift_getObjCClassMetadata();
  sub_23DCC4324(stack);
  MEMORY[0x277D82BD8](stack);
}

@end