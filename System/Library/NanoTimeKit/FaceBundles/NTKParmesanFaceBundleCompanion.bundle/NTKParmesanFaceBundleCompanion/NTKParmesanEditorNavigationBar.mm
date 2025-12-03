@interface NTKParmesanEditorNavigationBar
- (void)setDescriptionLabel:(id)label;
- (void)setLeadingButton:(id)button;
- (void)setTitleLabel:(id)label;
- (void)setTrailingButton:(id)button;
@end

@implementation NTKParmesanEditorNavigationBar

- (void)setLeadingButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton) = button;
  buttonCopy = button;
}

- (void)setTrailingButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton) = button;
  buttonCopy = button;
}

- (void)setTitleLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel) = label;
  labelCopy = label;
}

- (void)setDescriptionLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel) = label;
  labelCopy = label;
}

@end