@interface AXListItemController
- (id)specifiers;
@end

@implementation AXListItemController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v12.receiver = self;
    v12.super_class = AXListItemController;
    v5 = [(AXListItemController *)&v12 specifiers];
    if (!*&self->PSListItemsController_opaque[v3])
    {
      _AXAssert();
    }

    objc_opt_class();
    v6 = PSFooterTextGroupKey;
    v7 = [*&self->PSListItemsController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSFooterTextGroupKey];
    v8 = __UIAccessibilityCastAsClass();

    if ([v8 length])
    {
      objc_opt_class();
      v9 = [*&self->PSListItemsController_opaque[v3] firstObject];
      v10 = __UIAccessibilityCastAsClass();

      [v10 setProperty:v8 forKey:v6];
    }

    v4 = *&self->PSListItemsController_opaque[v3];
  }

  return v4;
}

@end