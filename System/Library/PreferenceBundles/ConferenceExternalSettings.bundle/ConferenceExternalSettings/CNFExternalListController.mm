@interface CNFExternalListController
- (id)specifiers;
@end

@implementation CNFExternalListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CNFExternalListController *)self loadSpecifiersFromPlistName:@"ConferenceExternalSettings" target:self];
    v6 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v5;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

@end