@interface NTKParmesanPigmentProviderCoordinator
- (BOOL)hasAddableCollectionsForSlot:(id)a3;
- (NTKParmesanPigmentProviderCoordinator)init;
- (NTKParmesanPigmentProviderCoordinator)initWithDomain:(id)a3 bundle:(id)a4;
- (NTKParmesanPigmentProviderCoordinator)initWithFace:(id)a3;
- (NTKParmesanPigmentProviderCoordinator)initWithSelectedStyle:(int64_t)a3;
- (NTKPigmentEditOptionProvider)duotonePigmentProvider;
- (NTKPigmentEditOptionProvider)plainPigmentProvider;
- (NTKPigmentEditOptionProvider)regularPigmentProvider;
- (NTKPigmentEditOptionProvider)timeFilteredPigmentProvider;
- (NTKPigmentEditOptionProvider)timePigmentProvider;
- (NTKPigmentEditOptionProvider)tritonePigmentProvider;
- (id)fulfilledOptionForOption:(id)a3 slot:(id)a4;
- (id)optionAtIndex:(int64_t)a3 slot:(id)a4;
- (id)providerForSlot:(id)a3 style:(int64_t)a4;
- (int64_t)indexOfOption:(id)a3 slot:(id)a4;
- (int64_t)numberOfOptionsForSlot:(id)a3;
- (void)setDuotonePigmentProvider:(id)a3;
- (void)setPlainPigmentProvider:(id)a3;
- (void)setRegularPigmentProvider:(id)a3;
- (void)setTimeFilteredPigmentProvider:(id)a3;
- (void)setTimePigmentProvider:(id)a3;
- (void)setTritonePigmentProvider:(id)a3;
@end

@implementation NTKParmesanPigmentProviderCoordinator

- (NTKParmesanPigmentProviderCoordinator)initWithSelectedStyle:(int64_t)a3
{
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParmesanPigmentProviderCoordinator();
  return [(NTKParmesanPigmentProviderCoordinator *)&v4 init];
}

- (NTKParmesanPigmentProviderCoordinator)initWithFace:(id)a3
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

- (NTKParmesanPigmentProviderCoordinator)initWithDomain:(id)a3 bundle:(id)a4
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

- (id)providerForSlot:(id)a3 style:(int64_t)a4
{
  if (a3)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  v10 = sub_23BF55EFC(v6, v8, a4);

  return v10;
}

- (int64_t)numberOfOptionsForSlot:(id)a3
{
  if (a3)
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
  v8 = self;
  v9 = sub_23BF55EFC(v4, v6, v7);
  if (v6)
  {
    v10 = sub_23BFFA2C0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 numberOfOptionsForSlot_];

  return v11;
}

- (int64_t)indexOfOption:(id)a3 slot:(id)a4
{
  if (a4)
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
  v10 = a3;
  v11 = self;
  v12 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v13 = sub_23BFFA2C0();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 indexOfOption:v10 slot:v13];

  return v14;
}

- (id)optionAtIndex:(int64_t)a3 slot:(id)a4
{
  if (a4)
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
  v10 = self;
  v11 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v12 = sub_23BFFA2C0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 optionAtIndex:a3 slot:v12];

  return v13;
}

- (id)fulfilledOptionForOption:(id)a3 slot:(id)a4
{
  if (a4)
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
  v10 = a3;
  v11 = self;
  v12 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v13 = sub_23BFFA2C0();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 fulfilledOptionForOption:v10 slot:v13];

  return v14;
}

- (BOOL)hasAddableCollectionsForSlot:(id)a3
{
  if (a3)
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
  v8 = self;
  v9 = sub_23BF55EFC(v4, v6, v7);
  if (v6)
  {
    v10 = sub_23BFFA2C0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 hasAddableCollectionsForSlot_];

  return v11;
}

- (NTKPigmentEditOptionProvider)timePigmentProvider
{
  v2 = self;
  v3 = sub_23BF5680C();

  return v3;
}

- (void)setTimePigmentProvider:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timePigmentProvider) = a3;
  v3 = a3;
}

- (NTKPigmentEditOptionProvider)timeFilteredPigmentProvider
{
  v2 = self;
  v3 = sub_23BF568AC();

  return v3;
}

- (void)setTimeFilteredPigmentProvider:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___timeFilteredPigmentProvider) = a3;
  v3 = a3;
}

- (NTKPigmentEditOptionProvider)plainPigmentProvider
{
  v2 = self;
  v3 = sub_23BF569AC();

  return v3;
}

- (void)setPlainPigmentProvider:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___plainPigmentProvider) = a3;
  v3 = a3;
}

- (NTKPigmentEditOptionProvider)regularPigmentProvider
{
  v2 = self;
  v3 = sub_23BF56A4C();

  return v3;
}

- (void)setRegularPigmentProvider:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___regularPigmentProvider) = a3;
  v3 = a3;
}

- (NTKPigmentEditOptionProvider)duotonePigmentProvider
{
  v2 = self;
  v3 = sub_23BF56AEC();

  return v3;
}

- (void)setDuotonePigmentProvider:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___duotonePigmentProvider) = a3;
  v3 = a3;
}

- (NTKPigmentEditOptionProvider)tritonePigmentProvider
{
  v2 = self;
  v3 = sub_23BF56B8C();

  return v3;
}

- (void)setTritonePigmentProvider:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider);
  *(&self->super.super.isa + OBJC_IVAR___NTKParmesanPigmentProviderCoordinator____lazy_storage___tritonePigmentProvider) = a3;
  v3 = a3;
}

- (NTKParmesanPigmentProviderCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end