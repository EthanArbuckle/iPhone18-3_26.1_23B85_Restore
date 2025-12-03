@interface CPLaneGuidance
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
- (CPLaneGuidance)init;
- (CPLaneGuidance)initWithCoder:(id)coder;
- (CPLaneGuidance)laneGuidanceWithComponent:(id)component;
- (NSString)description;
- (void)setLanes:(id)lanes;
@end

@implementation CPLaneGuidance

- (CPLaneGuidance)laneGuidanceWithComponent:(id)component
{
  v4 = MEMORY[0x277CE82D8];
  componentCopy = component;
  v6 = [v4 alloc];
  component = [componentCopy component];
  v8 = [v6 initWithLaneGuidance:self component:component];

  v9 = [objc_alloc(MEMORY[0x277CF8A90]) initWithComponent:componentCopy accNavInfo:v8];

  return v9;
}

- (CPLaneGuidance)init
{
  v4.receiver = self;
  v4.super_class = CPLaneGuidance;
  v2 = [(CPLaneGuidance *)&v4 init];
  if (v2)
  {
    [CPAccNavUpdate resetUpdate:v2];
  }

  return v2;
}

- (CPLaneGuidance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPLaneGuidance *)self init];
  if (v5)
  {
    [CPAccNavUpdate decodeUpdate:v5 withCoder:coderCopy];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPLaneGuidance;
  v4 = [(CPLaneGuidance *)&v8 description];
  v5 = [CPAccNavUpdate description:self];
  v6 = [v3 stringWithFormat:@"%@ {\n%@\n}", v4, v5];

  return v6;
}

- (void)setLanes:(id)lanes
{
  lanesCopy = lanes;
  v4 = [lanesCopy copy];
  lanes = self->_lanes;
  self->_lanes = v4;

  if ([lanesCopy count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [(NSArray *)self->_lanes objectAtIndexedSubscript:v6];
      v10 = [v8 numberWithUnsignedShort:{objc_msgSend(v9, "index")}];
      v11 = NotSetFromCPAccNavType(2uLL);
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        v13 = [(NSArray *)self->_lanes objectAtIndexedSubscript:v6];
        [v13 setIndex:v7];
      }

      v6 = ++v7;
    }

    while ([lanesCopy count] > v7);
  }
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken_3 != -1)
  {
    +[CPLaneGuidance(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters_3;

  return v3;
}

void __50__CPLaneGuidance_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v28[4] = *MEMORY[0x277D85DE8];
  v21 = NSStringFromSelector(sel_componentID);
  v23 = [CPAccNavParamKey paramKey:0];
  v22 = [v23 copySettingIsIntegerValue:1];
  v27 = v22;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v19 = [CPAccNavParam paramWithProperty:v21 keys:v20];
  v28[0] = v19;
  v16 = NSStringFromSelector(sel_index);
  v18 = [CPAccNavParamKey paramKey:1];
  v17 = [v18 copySettingIsIntegerValue:1];
  v26 = v17;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v14 = [CPAccNavParam paramWithProperty:v16 keys:v15];
  v28[1] = v14;
  v13 = NSStringFromSelector(sel_lanes);
  v12 = [CPAccNavParamKey paramKey:2];
  v25 = v12;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v1 = [CPAccNavParam paramWithProperty:v13 keys:v0];
  v2 = [v1 copySettingCollectionGeneric:objc_opt_class()];
  v28[2] = v2;
  v3 = NSStringFromSelector(sel_instructionVariants);
  v4 = [CPAccNavParamKey paramKey:3];
  v5 = [v4 copySettingHasVariants:1];
  v24 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v7 = [CPAccNavParam paramWithProperty:v3 keys:v6];
  v8 = [v7 copySettingCollectionGeneric:objc_opt_class()];
  v28[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v10 = accNavParameters__accNavParameters_3;
  accNavParameters__accNavParameters_3 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CPLaneGuidance_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParametersIndexed_onceToken_3 != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken_3, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed_3;

  return v2;
}

uint64_t __57__CPLaneGuidance_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParametersIndexed__accNavParametersIndexed_3;
  accNavParametersIndexed__accNavParametersIndexed_3 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CPLaneGuidance_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParameterKeysIndexed_onceToken_3 != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken_3, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_3;

  return v2;
}

uint64_t __60__CPLaneGuidance_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_3;
  accNavParameterKeysIndexed__accNavParameterKeysIndexed_3 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end