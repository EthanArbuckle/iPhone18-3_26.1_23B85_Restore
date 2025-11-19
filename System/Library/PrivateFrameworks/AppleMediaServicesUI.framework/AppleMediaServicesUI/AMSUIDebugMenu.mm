@interface AMSUIDebugMenu
+ (void)presentDebugMenuWithPresentingVC:(id)a3 debugInfo:(id)a4;
@end

@implementation AMSUIDebugMenu

+ (void)presentDebugMenuWithPresentingVC:(id)a3 debugInfo:(id)a4
{
  v4 = a4;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC46050, &qword_1BB1F6210);
    v4 = sub_1BB1DD538();
  }

  swift_getObjCClassMetadata();
  v6 = a3;
  static DebugMenu.presentDebugMenu(presentingVC:debugInfo:)(v6, v4);
}

@end