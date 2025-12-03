@interface CPAccNavParamKey
- (BOOL)hasCharacteristics;
- (CPAccNavParam)param;
- (CPAccNavParamKey)init;
- (id)copySettingAccNavType:(int64_t)type;
- (id)copySettingDimension:(id)dimension;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)unsetValue;
@end

@implementation CPAccNavParamKey

- (CPAccNavParam)param
{
  WeakRetained = objc_loadWeakRetained(&self->_param);

  return WeakRetained;
}

- (CPAccNavParamKey)init
{
  v6.receiver = self;
  v6.super_class = CPAccNavParamKey;
  v2 = [(CPAccNavParamKey *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    characteristics = v2->_characteristics;
    v2->_characteristics = v3;

    v2->_accNavType = -1;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setKey:{-[CPAccNavParamKey key](self, "key")}];
  characteristics = [(CPAccNavParamKey *)self characteristics];
  [v4 setCharacteristics:characteristics];

  [v4 setIsBoolValue:{-[CPAccNavParamKey isBoolValue](self, "isBoolValue")}];
  [v4 setEnumType:{-[CPAccNavParamKey enumType](self, "enumType")}];
  dimension = [(CPAccNavParamKey *)self dimension];
  [v4 setDimension:dimension];

  [v4 setIsIntegerValue:{-[CPAccNavParamKey isIntegerValue](self, "isIntegerValue")}];
  [v4 setIsTimeIntervalValue:{-[CPAccNavParamKey isTimeIntervalValue](self, "isTimeIntervalValue")}];
  [v4 setHasVariants:{-[CPAccNavParamKey hasVariants](self, "hasVariants")}];
  [v4 setAccNavType:{-[CPAccNavParamKey accNavType](self, "accNavType")}];
  param = [(CPAccNavParamKey *)self param];
  [v4 setParam:param];

  return v4;
}

- (id)description
{
  v3 = objc_opt_new();
  if ([(CPAccNavParamKey *)self accNavType]!= -1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = NSStringFromCPAccNavType([(CPAccNavParamKey *)self accNavType]);
    v6 = [v4 stringWithFormat:@" accNavType=%@", v5];
    [v3 addObject:v6];
  }

  if ([(CPAccNavParamKey *)self hasCharacteristics])
  {
    v7 = MEMORY[0x277CCACA8];
    characteristics = [(CPAccNavParamKey *)self characteristics];
    allObjects = [characteristics allObjects];
    v10 = [allObjects componentsJoinedByString:{@", "}];
    v11 = [v7 stringWithFormat:@" [%@]", v10];
    [v3 addObject:v11];
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = [(CPAccNavParamKey *)self key];
  v15 = [v3 componentsJoinedByString:&stru_2849E5A88];
  v16 = [v12 stringWithFormat:@"<%@: %p key=%hu%@>", v13, self, v14, v15];

  return v16;
}

- (id)unsetValue
{
  accNavType = [(CPAccNavParamKey *)self accNavType];

  return NotSetFromCPAccNavType(accNavType);
}

- (id)copySettingAccNavType:(int64_t)type
{
  v4 = [(CPAccNavParamKey *)self copy];
  [v4 setAccNavType:type];
  characteristics = [v4 characteristics];
  v6 = characteristics;
  if (type == -1)
  {
    [characteristics cp_setByRemovingObject:@"accNavType"];
  }

  else
  {
    [characteristics setByAddingObject:@"accNavType"];
  }
  v7 = ;
  [v4 setCharacteristics:v7];

  return v4;
}

- (BOOL)hasCharacteristics
{
  characteristics = [(CPAccNavParamKey *)self characteristics];
  v3 = [characteristics count] != 0;

  return v3;
}

- (id)copySettingDimension:(id)dimension
{
  dimensionCopy = dimension;
  v5 = [(CPAccNavParamKey *)self copy];
  [v5 setDimension:dimensionCopy];

  characteristics = [v5 characteristics];
  v7 = characteristics;
  if (dimensionCopy)
  {
    [characteristics setByAddingObject:@"dimension"];
  }

  else
  {
    [characteristics cp_setByRemovingObject:@"dimension"];
  }
  v8 = ;
  [v5 setCharacteristics:v8];

  return v5;
}

@end