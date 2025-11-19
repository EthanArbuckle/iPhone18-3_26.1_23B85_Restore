@interface SidebarOutlineCellRegistration
+ (id)registrationWithCellClass:(Class)a3 configurationHandler:(id)a4;
@end

@implementation SidebarOutlineCellRegistration

+ (id)registrationWithCellClass:(Class)a3 configurationHandler:(id)a4
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SidebarOutlineCellRegistration;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v10, "registrationWithCellClass:configurationHandler:", a3, &stru_101656C28);
  v7 = objc_retainBlock(v5);

  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

@end