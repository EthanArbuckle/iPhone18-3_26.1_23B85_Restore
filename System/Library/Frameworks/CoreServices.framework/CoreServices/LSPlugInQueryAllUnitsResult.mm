@interface LSPlugInQueryAllUnitsResult
- (LSPlugInQueryAllUnitsResult)initWithCoder:(id)coder;
- (LSPlugInQueryAllUnitsResult)initWithPlugInUnits:(id)units forDatabaseWithUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSPlugInQueryAllUnitsResult

- (LSPlugInQueryAllUnitsResult)initWithPlugInUnits:(id)units forDatabaseWithUUID:(id)d
{
  unitsCopy = units;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryAllUnitsResult;
  _init = [(_LSQueryResult *)&v12 _init];
  if (_init)
  {
    v9 = [unitsCopy copy];
    pluginUnits = _init->_pluginUnits;
    _init->_pluginUnits = v9;

    objc_storeStrong(&_init->_dbUUID, d);
  }

  return _init;
}

- (LSPlugInQueryAllUnitsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = LSPlugInQueryAllUnitsResult;
  v5 = [(_LSQueryResult *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"pluginUnits"];
    pluginUnits = v5->_pluginUnits;
    v5->_pluginUnits = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"dbUUID"];
    dbUUID = v5->_dbUUID;
    v5->_dbUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pluginUnits = self->_pluginUnits;
  coderCopy = coder;
  [coderCopy encodeObject:pluginUnits forKey:@"pluginUnits"];
  [coderCopy encodeObject:self->_dbUUID forKey:@"dbUUID"];
}

@end