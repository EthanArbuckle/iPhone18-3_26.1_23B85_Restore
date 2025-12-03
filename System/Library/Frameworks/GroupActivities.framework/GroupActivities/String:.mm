@interface String:
- (uint64_t)Data;
- (uint64_t)SpatialTemplatePreferenceOutput;
- (uint64_t)String;
@end

@implementation String:

- (uint64_t)Data
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (uint64_t)SpatialTemplatePreferenceOutput
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (uint64_t)String
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end