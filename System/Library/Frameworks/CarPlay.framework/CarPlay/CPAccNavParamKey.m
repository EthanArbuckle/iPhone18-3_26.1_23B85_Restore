@interface CPAccNavParamKey
- (BOOL)hasCharacteristics;
- (CPAccNavParam)param;
- (CPAccNavParamKey)init;
- (id)copySettingAccNavType:(int64_t)a3;
- (id)copySettingDimension:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setKey:{-[CPAccNavParamKey key](self, "key")}];
  v5 = [(CPAccNavParamKey *)self characteristics];
  [v4 setCharacteristics:v5];

  [v4 setIsBoolValue:{-[CPAccNavParamKey isBoolValue](self, "isBoolValue")}];
  [v4 setEnumType:{-[CPAccNavParamKey enumType](self, "enumType")}];
  v6 = [(CPAccNavParamKey *)self dimension];
  [v4 setDimension:v6];

  [v4 setIsIntegerValue:{-[CPAccNavParamKey isIntegerValue](self, "isIntegerValue")}];
  [v4 setIsTimeIntervalValue:{-[CPAccNavParamKey isTimeIntervalValue](self, "isTimeIntervalValue")}];
  [v4 setHasVariants:{-[CPAccNavParamKey hasVariants](self, "hasVariants")}];
  [v4 setAccNavType:{-[CPAccNavParamKey accNavType](self, "accNavType")}];
  v7 = [(CPAccNavParamKey *)self param];
  [v4 setParam:v7];

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
    v8 = [(CPAccNavParamKey *)self characteristics];
    v9 = [v8 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];
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
  v2 = [(CPAccNavParamKey *)self accNavType];

  return NotSetFromCPAccNavType(v2);
}

- (id)copySettingAccNavType:(int64_t)a3
{
  v4 = [(CPAccNavParamKey *)self copy];
  [v4 setAccNavType:a3];
  v5 = [v4 characteristics];
  v6 = v5;
  if (a3 == -1)
  {
    [v5 cp_setByRemovingObject:@"accNavType"];
  }

  else
  {
    [v5 setByAddingObject:@"accNavType"];
  }
  v7 = ;
  [v4 setCharacteristics:v7];

  return v4;
}

- (BOOL)hasCharacteristics
{
  v2 = [(CPAccNavParamKey *)self characteristics];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)copySettingDimension:(id)a3
{
  v4 = a3;
  v5 = [(CPAccNavParamKey *)self copy];
  [v5 setDimension:v4];

  v6 = [v5 characteristics];
  v7 = v6;
  if (v4)
  {
    [v6 setByAddingObject:@"dimension"];
  }

  else
  {
    [v6 cp_setByRemovingObject:@"dimension"];
  }
  v8 = ;
  [v5 setCharacteristics:v8];

  return v5;
}

@end