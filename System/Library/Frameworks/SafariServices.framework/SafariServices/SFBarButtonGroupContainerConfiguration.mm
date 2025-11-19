@interface SFBarButtonGroupContainerConfiguration
- (SFBarButtonGroupContainerConfiguration)init;
- (SFBarButtonGroupContainerConfiguration)initWithTheme:(id)a3 preferredTraitCollection:(id)a4;
- (id)copyWithZone:(void *)a3;
- (void)setPreferredTraitCollection:(id)a3;
- (void)setTheme:(id)a3;
@end

@implementation SFBarButtonGroupContainerConfiguration

- (void)setTheme:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_theme);
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_theme) = a3;
  v3 = a3;
}

- (void)setPreferredTraitCollection:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection);
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection) = a3;
  v3 = a3;
}

- (SFBarButtonGroupContainerConfiguration)initWithTheme:(id)a3 preferredTraitCollection:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_hidesBackground) = 0;
  v5 = OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection;
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection) = 0;
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_theme) = a3;
  *(&self->super.isa + v5) = a4;
  v9.receiver = self;
  v9.super_class = SFBarButtonGroupContainerConfiguration;
  v6 = a3;
  v7 = a4;
  return [(SFBarButtonGroupContainerConfiguration *)&v9 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(SFBarButtonGroupContainerConfiguration *)v3 theme];
  v5 = [(SFBarButtonGroupContainerConfiguration *)v3 preferredTraitCollection];
  v6 = [objc_allocWithZone(SFBarButtonGroupContainerConfiguration) initWithTheme:v4 preferredTraitCollection:v5];

  [v6 setHidesBackground_];
  return v6;
}

- (SFBarButtonGroupContainerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end