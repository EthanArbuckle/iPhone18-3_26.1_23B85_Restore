@interface NTKParmesanEditorNavigationBar
- (void)setDescriptionLabel:(id)a3;
- (void)setLeadingButton:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)setTrailingButton:(id)a3;
@end

@implementation NTKParmesanEditorNavigationBar

- (void)setLeadingButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_leadingButton) = a3;
  v3 = a3;
}

- (void)setTrailingButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_trailingButton) = a3;
  v3 = a3;
}

- (void)setTitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_titleLabel) = a3;
  v3 = a3;
}

- (void)setDescriptionLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKParmesanEditorNavigationBar_descriptionLabel) = a3;
  v3 = a3;
}

@end