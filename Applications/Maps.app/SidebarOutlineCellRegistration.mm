@interface SidebarOutlineCellRegistration
+ (id)registrationWithCellClass:(Class)class configurationHandler:(id)handler;
@end

@implementation SidebarOutlineCellRegistration

+ (id)registrationWithCellClass:(Class)class configurationHandler:(id)handler
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___SidebarOutlineCellRegistration;
  handlerCopy = handler;
  v6 = objc_msgSendSuper2(&v10, "registrationWithCellClass:configurationHandler:", class, &stru_101656C28);
  v7 = objc_retainBlock(handlerCopy);

  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

@end