@interface SFBarButtonGroupContainerConfiguration
- (SFBarButtonGroupContainerConfiguration)init;
- (SFBarButtonGroupContainerConfiguration)initWithTheme:(id)theme preferredTraitCollection:(id)collection;
- (id)copyWithZone:(void *)zone;
- (void)setPreferredTraitCollection:(id)collection;
- (void)setTheme:(id)theme;
@end

@implementation SFBarButtonGroupContainerConfiguration

- (void)setTheme:(id)theme
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_theme);
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_theme) = theme;
  themeCopy = theme;
}

- (void)setPreferredTraitCollection:(id)collection
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection);
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection) = collection;
  collectionCopy = collection;
}

- (SFBarButtonGroupContainerConfiguration)initWithTheme:(id)theme preferredTraitCollection:(id)collection
{
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_hidesBackground) = 0;
  v5 = OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection;
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_preferredTraitCollection) = 0;
  *(&self->super.isa + OBJC_IVAR___SFBarButtonGroupContainerConfiguration_theme) = theme;
  *(&self->super.isa + v5) = collection;
  v9.receiver = self;
  v9.super_class = SFBarButtonGroupContainerConfiguration;
  themeCopy = theme;
  collectionCopy = collection;
  return [(SFBarButtonGroupContainerConfiguration *)&v9 init];
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  theme = [(SFBarButtonGroupContainerConfiguration *)selfCopy theme];
  preferredTraitCollection = [(SFBarButtonGroupContainerConfiguration *)selfCopy preferredTraitCollection];
  v6 = [objc_allocWithZone(SFBarButtonGroupContainerConfiguration) initWithTheme:theme preferredTraitCollection:preferredTraitCollection];

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