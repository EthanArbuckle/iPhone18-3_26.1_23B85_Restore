@interface CNContactViewSharedNavigationBar
- (void)setAddContactButton:(id)button;
- (void)setCancelButton:(id)button;
- (void)setDoneButton:(id)button;
- (void)setEditButton:(id)button;
@end

@implementation CNContactViewSharedNavigationBar

- (void)setCancelButton:(id)button
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_cancelButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_cancelButton) = button;
  buttonCopy = button;
}

- (void)setEditButton:(id)button
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_editButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_editButton) = button;
  buttonCopy = button;
}

- (void)setDoneButton:(id)button
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_doneButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_doneButton) = button;
  buttonCopy = button;
}

- (void)setAddContactButton:(id)button
{
  v4 = *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_addContactButton);
  *(&self->super.isa + OBJC_IVAR___CNContactViewSharedNavigationBar_addContactButton) = button;
  buttonCopy = button;
}

@end