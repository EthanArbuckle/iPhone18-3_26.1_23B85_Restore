@interface CNContactViewSharedNavigationBar
- (void)setAddContactButton:(id)a3;
- (void)setCancelButton:(id)a3;
- (void)setDoneButton:(id)a3;
- (void)setEditButton:(id)a3;
@end

@implementation CNContactViewSharedNavigationBar

- (void)setCancelButton:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_cancelButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_cancelButton) = a3;
  v3 = a3;
}

- (void)setEditButton:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_editButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_editButton) = a3;
  v3 = a3;
}

- (void)setDoneButton:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_doneButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_doneButton) = a3;
  v3 = a3;
}

- (void)setAddContactButton:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_addContactButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_addContactButton) = a3;
  v3 = a3;
}

@end