@interface NTKParmesanPigmentProviderCoordinator
- (BOOL)hasAddableCollectionsForSlot:(id)slot;
- (NTKParmesanPigmentProviderCoordinator)init;
- (NTKParmesanPigmentProviderCoordinator)initWithDomain:(id)domain bundle:(id)bundle;
- (NTKParmesanPigmentProviderCoordinator)initWithFace:(id)face;
- (NTKParmesanPigmentProviderCoordinator)initWithSelectedStyle:(int64_t)style;
- (NTKPigmentEditOptionProvider)duotonePigmentProvider;
- (NTKPigmentEditOptionProvider)plainPigmentProvider;
- (NTKPigmentEditOptionProvider)regularPigmentProvider;
- (NTKPigmentEditOptionProvider)timeFilteredPigmentProvider;
- (NTKPigmentEditOptionProvider)timePigmentProvider;
- (NTKPigmentEditOptionProvider)tritonePigmentProvider;
- (id)fulfilledOptionForOption:(id)option slot:(id)slot;
- (id)optionAtIndex:(int64_t)index slot:(id)slot;
- (id)providerForSlot:(id)slot style:(int64_t)style;
- (int64_t)indexOfOption:(id)option slot:(id)slot;
- (int64_t)numberOfOptionsForSlot:(id)slot;
- (void)setDuotonePigmentProvider:(id)provider;
- (void)setPlainPigmentProvider:(id)provider;
- (void)setRegularPigmentProvider:(id)provider;
- (void)setTimeFilteredPigmentProvider:(id)provider;
- (void)setTimePigmentProvider:(id)provider;
- (void)setTritonePigmentProvider:(id)provider;
@end

@implementation NTKParmesanPigmentProviderCoordinator

- (NTKParmesanPigmentProviderCoordinator)initWithSelectedStyle:(int64_t)style
{
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle) = style;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParmesanPigmentProviderCoordinator();
  return [(NTKParmesanPigmentProviderCoordinator *)&v4 init];
}

- (NTKParmesanPigmentProviderCoordinator)initWithFace:(id)face
{
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (NTKParmesanPigmentProviderCoordinator)initWithDomain:(id)domain bundle:(id)bundle
{
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider) = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (id)providerForSlot:(id)slot style:(int64_t)style
{
  if (slot)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10 = sub_23BF55EFC(v6, v8, style);

  return v10;
}

- (int64_t)numberOfOptionsForSlot:(id)slot
{
  if (slot)
  {
    v4 = sub_23BFFA300();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle);
  selfCopy = self;
  v9 = sub_23BF55EFC(v4, v6, v7);
  if (v6)
  {
    v10 = sub_23BFFA2C0();
  }

  else
  {
    v10 = 0;
  }

  numberOfOptionsForSlot_ = [v9 numberOfOptionsForSlot_];

  return numberOfOptionsForSlot_;
}

- (int64_t)indexOfOption:(id)option slot:(id)slot
{
  if (slot)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle);
  optionCopy = option;
  selfCopy = self;
  v12 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v13 = sub_23BFFA2C0();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 indexOfOption:optionCopy slot:v13];

  return v14;
}

- (id)optionAtIndex:(int64_t)index slot:(id)slot
{
  if (slot)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle);
  selfCopy = self;
  v11 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v12 = sub_23BFFA2C0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 optionAtIndex:index slot:v12];

  return v13;
}

- (id)fulfilledOptionForOption:(id)option slot:(id)slot
{
  if (slot)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle);
  optionCopy = option;
  selfCopy = self;
  v12 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v13 = sub_23BFFA2C0();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 fulfilledOptionForOption:optionCopy slot:v13];

  return v14;
}

- (BOOL)hasAddableCollectionsForSlot:(id)slot
{
  if (slot)
  {
    v4 = sub_23BFFA300();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle);
  selfCopy = self;
  v9 = sub_23BF55EFC(v4, v6, v7);
  if (v6)
  {
    v10 = sub_23BFFA2C0();
  }

  else
  {
    v10 = 0;
  }

  hasAddableCollectionsForSlot_ = [v9 hasAddableCollectionsForSlot_];

  return hasAddableCollectionsForSlot_;
}

- (NTKPigmentEditOptionProvider)timePigmentProvider
{
  selfCopy = self;
  v3 = sub_23BF5680C();

  return v3;
}

- (void)setTimePigmentProvider:(id)provider
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider) = provider;
  providerCopy = provider;
}

- (NTKPigmentEditOptionProvider)timeFilteredPigmentProvider
{
  selfCopy = self;
  v3 = sub_23BF568AC();

  return v3;
}

- (void)setTimeFilteredPigmentProvider:(id)provider
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider) = provider;
  providerCopy = provider;
}

- (NTKPigmentEditOptionProvider)plainPigmentProvider
{
  selfCopy = self;
  v3 = sub_23BF569AC();

  return v3;
}

- (void)setPlainPigmentProvider:(id)provider
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider) = provider;
  providerCopy = provider;
}

- (NTKPigmentEditOptionProvider)regularPigmentProvider
{
  selfCopy = self;
  v3 = sub_23BF56A4C();

  return v3;
}

- (void)setRegularPigmentProvider:(id)provider
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider) = provider;
  providerCopy = provider;
}

- (NTKPigmentEditOptionProvider)duotonePigmentProvider
{
  selfCopy = self;
  v3 = sub_23BF56AEC();

  return v3;
}

- (void)setDuotonePigmentProvider:(id)provider
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider) = provider;
  providerCopy = provider;
}

- (NTKPigmentEditOptionProvider)tritonePigmentProvider
{
  selfCopy = self;
  v3 = sub_23BF56B8C();

  return v3;
}

- (void)setTritonePigmentProvider:(id)provider
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider) = provider;
  providerCopy = provider;
}

- (NTKParmesanPigmentProviderCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end