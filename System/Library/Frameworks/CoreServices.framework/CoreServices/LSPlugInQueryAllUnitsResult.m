@interface LSPlugInQueryAllUnitsResult
- (LSPlugInQueryAllUnitsResult)initWithCoder:(id)a3;
- (LSPlugInQueryAllUnitsResult)initWithPlugInUnits:(id)a3 forDatabaseWithUUID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSPlugInQueryAllUnitsResult

- (LSPlugInQueryAllUnitsResult)initWithPlugInUnits:(id)a3 forDatabaseWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryAllUnitsResult;
  v8 = [(_LSQueryResult *)&v12 _init];
  if (v8)
  {
    v9 = [v6 copy];
    pluginUnits = v8->_pluginUnits;
    v8->_pluginUnits = v9;

    objc_storeStrong(&v8->_dbUUID, a4);
  }

  return v8;
}

- (LSPlugInQueryAllUnitsResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LSPlugInQueryAllUnitsResult;
  v5 = [(_LSQueryResult *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"pluginUnits"];
    pluginUnits = v5->_pluginUnits;
    v5->_pluginUnits = v6;

    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"dbUUID"];
    dbUUID = v5->_dbUUID;
    v5->_dbUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pluginUnits = self->_pluginUnits;
  v5 = a3;
  [v5 encodeObject:pluginUnits forKey:@"pluginUnits"];
  [v5 encodeObject:self->_dbUUID forKey:@"dbUUID"];
}

@end