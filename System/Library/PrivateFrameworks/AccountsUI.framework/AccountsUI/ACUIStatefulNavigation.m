@interface ACUIStatefulNavigation
+ (BOOL)acui_statefulNavigation:(id)a3;
+ (void)acui_popLastItemFromStack:(id)a3;
@end

@implementation ACUIStatefulNavigation

+ (BOOL)acui_statefulNavigation:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  sub_23DCC3FF0(a3);
  MEMORY[0x277D82BD8](a3);
  return sub_23DCC6EC0() & 1;
}

+ (void)acui_popLastItemFromStack:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  sub_23DCC4324(a3);
  MEMORY[0x277D82BD8](a3);
}

@end