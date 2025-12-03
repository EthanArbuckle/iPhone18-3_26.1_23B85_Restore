@interface AMSUIDebugMenu
+ (void)presentDebugMenuWithPresentingVC:(id)c debugInfo:(id)info;
@end

@implementation AMSUIDebugMenu

+ (void)presentDebugMenuWithPresentingVC:(id)c debugInfo:(id)info
{
  infoCopy = info;
  if (info)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC46050, &qword_1BB1F6210);
    infoCopy = sub_1BB1DD538();
  }

  swift_getObjCClassMetadata();
  cCopy = c;
  static DebugMenu.presentDebugMenu(presentingVC:debugInfo:)(cCopy, infoCopy);
}

@end