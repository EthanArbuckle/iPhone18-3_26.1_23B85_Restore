@interface CNUISharedProfileNavigationBarPalette
- (CNUISharedProfileNavigationBarPalette)init;
- (void)configureAfterDelay;
@end

@implementation CNUISharedProfileNavigationBarPalette

- (CNUISharedProfileNavigationBarPalette)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v6.receiver = self;
  v6.super_class = CNUISharedProfileNavigationBarPalette;
  v4 = [(_UINavigationBarPalette *)&v6 initWithContentView:v3];

  if (v4)
  {
    [(_UINavigationBarPalette *)v4 setMinimumHeight:0.0];
    +[CNUISharedProfileNavigationBarPalette minimumHeight];
    [(_UINavigationBarPalette *)v4 setPreferredHeight:?];
    [(CNUISharedProfileNavigationBarPalette *)v4 configureAfterDelay];
  }

  return v4;
}

- (void)configureAfterDelay
{
  v2 = self;
  CNUISharedProfileNavigationBarPalette.configureAfterDelay()();
}

@end