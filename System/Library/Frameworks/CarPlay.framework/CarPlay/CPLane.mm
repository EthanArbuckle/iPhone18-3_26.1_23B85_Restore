@interface CPLane
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
- (CPLane)init;
- (CPLane)initWithAngles:(id)angles;
- (CPLane)initWithAngles:(id)angles highlightedAngle:(id)angle isPreferred:(BOOL)preferred;
- (CPLane)initWithCoder:(id)coder;
- (NSArray)angles;
- (NSMeasurement)highlightedAngle;
- (NSString)description;
- (void)setHighlightedAngle:(id)angle;
@end

@implementation CPLane

- (CPLane)init
{
  v4.receiver = self;
  v4.super_class = CPLane;
  v2 = [(CPLane *)&v4 init];
  if (v2)
  {
    [CPAccNavUpdate resetUpdate:v2];
  }

  return v2;
}

- (CPLane)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CPLane;
  v5 = [(CPLane *)&v7 init];
  if (v5)
  {
    [CPAccNavUpdate resetUpdate:v5];
    [CPAccNavUpdate decodeUpdate:v5 withCoder:coderCopy];
  }

  return v5;
}

- (CPLane)initWithAngles:(id)angles highlightedAngle:(id)angle isPreferred:(BOOL)preferred
{
  preferredCopy = preferred;
  anglesCopy = angles;
  angleCopy = angle;
  v14.receiver = self;
  v14.super_class = CPLane;
  v11 = [(CPLane *)&v14 init];
  if (v11)
  {
    [CPAccNavUpdate resetUpdate:v11];
    objc_storeStrong(&v11->_highlightedAngle, angle);
    objc_storeStrong(&v11->_angles, angles);
    v12 = 1;
    if (preferredCopy)
    {
      v12 = 2;
    }

    v11->_status = v12;
  }

  return v11;
}

- (CPLane)initWithAngles:(id)angles
{
  anglesCopy = angles;
  v9.receiver = self;
  v9.super_class = CPLane;
  v6 = [(CPLane *)&v9 init];
  if (v6)
  {
    [CPAccNavUpdate resetUpdate:v6];
    highlightedAngle = v6->_highlightedAngle;
    v6->_highlightedAngle = 0;

    objc_storeStrong(&v6->_angles, angles);
    v6->_status = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPLane;
  v4 = [(CPLane *)&v8 description];
  v5 = [CPAccNavUpdate description:self];
  v6 = [v3 stringWithFormat:@"%@ {\n%@\n}", v4, v5];

  return v6;
}

- (NSMeasurement)highlightedAngle
{
  highlightedAngle = self->_highlightedAngle;
  if (highlightedAngle)
  {
LABEL_4:
    v4 = highlightedAngle;

    return v4;
  }

  if (self->_status)
  {
    highlightedAngle = self->_primaryAngle;
    goto LABEL_4;
  }

  v4 = 0;

  return v4;
}

- (void)setHighlightedAngle:(id)angle
{
  angleCopy = angle;
  if (!self->_status)
  {
    self->_status = 2;
  }

  highlightedAngle = self->_highlightedAngle;
  self->_highlightedAngle = angleCopy;

  MEMORY[0x2821F96F8](angleCopy, highlightedAngle);
}

- (NSArray)angles
{
  angles = self->_angles;
  if (angles)
  {
    goto LABEL_4;
  }

  if (self->_status || !self->_primaryAngle)
  {
    angles = self->_secondaryAngles;
LABEL_4:
    v3 = angles;
    goto LABEL_5;
  }

  v3 = [(NSArray *)self->_secondaryAngles arrayByAddingObject:?];
LABEL_5:

  return v3;
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken_1 != -1)
  {
    +[CPLane(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters_1;

  return v3;
}

void __42__CPLane_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v30[4] = *MEMORY[0x277D85DE8];
  v23 = NSStringFromSelector(sel_index);
  v25 = [CPAccNavParamKey paramKey:0];
  v24 = [v25 copySettingIsIntegerValue:1];
  v29 = v24;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v21 = [CPAccNavParam paramWithProperty:v23 keys:v22];
  v30[0] = v21;
  v18 = NSStringFromSelector(sel_status);
  v20 = [CPAccNavParamKey paramKey:1];
  v19 = [v20 copySettingEnumType:4];
  v28 = v19;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v16 = [CPAccNavParam paramWithProperty:v18 keys:v17];
  v30[1] = v16;
  v13 = NSStringFromSelector(sel_angles);
  v15 = [CPAccNavParamKey paramKey:2];
  v14 = [MEMORY[0x277CCADA8] degrees];
  v12 = [v15 copySettingDimension:v14];
  v27 = v12;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v1 = [CPAccNavParam paramWithProperty:v13 keys:v0];
  v2 = [v1 copySettingCollectionGeneric:objc_opt_class()];
  v30[2] = v2;
  v3 = NSStringFromSelector(sel_highlightedAngle);
  v4 = [CPAccNavParamKey paramKey:3];
  v5 = [MEMORY[0x277CCADA8] degrees];
  v6 = [v4 copySettingDimension:v5];
  v26 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v8 = [CPAccNavParam paramWithProperty:v3 keys:v7];
  v30[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v10 = accNavParameters__accNavParameters_1;
  accNavParameters__accNavParameters_1 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPLane_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParametersIndexed_onceToken_1 != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken_1, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed_1;

  return v2;
}

uint64_t __49__CPLane_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParametersIndexed__accNavParametersIndexed_1;
  accNavParametersIndexed__accNavParametersIndexed_1 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CPLane_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParameterKeysIndexed_onceToken_1 != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken_1, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_1;

  return v2;
}

uint64_t __52__CPLane_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_1;
  accNavParameterKeysIndexed__accNavParameterKeysIndexed_1 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end