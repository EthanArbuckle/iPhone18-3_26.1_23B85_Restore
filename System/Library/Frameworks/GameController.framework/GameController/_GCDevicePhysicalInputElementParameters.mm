@interface _GCDevicePhysicalInputElementParameters
+ (id)parametersWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)aliases;
- (uint64_t)identifier;
- (uint64_t)localizedName;
- (uint64_t)symbol;
- (unint64_t)hash;
- (void)setAliases:(uint64_t)a3;
- (void)setIdentifier:(uint64_t)a3;
- (void)setLocalizedName:(uint64_t)a3;
- (void)setSymbol:(uint64_t)a3;
@end

@implementation _GCDevicePhysicalInputElementParameters

+ (id)parametersWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 copy];

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputElementParameters;
  v4 = [(_GCDevicePhysicalInputViewParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_identifier);
  objc_storeStrong(v4 + 2, self->_aliases);
  objc_storeStrong(v4 + 3, self->_localizedName);
  objc_storeStrong(v4 + 4, self->_symbol);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputElementParameters;
  if ([(_GCDevicePhysicalInputViewParameters *)&v11 isEqual:v4]&& ((identifier = self->_identifier, identifier == v4[1]) || [(NSString *)identifier isEqual:?]) && ((aliases = self->_aliases, aliases == v4[2]) || [(NSSet *)aliases isEqual:?]) && ((localizedName = self->_localizedName, localizedName == v4[3]) || [(NSString *)localizedName isEqual:?]))
  {
    symbol = self->_symbol;
    if (symbol == v4[4])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(GCDevicePhysicalInputSymbolDescription *)symbol isEqual:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)identifier
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)aliases
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)localizedName
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)symbol
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_identifier;
  }

  return [(_GCDevicePhysicalInputElementParameters *)self hash];
}

- (void)setIdentifier:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 8);
  }
}

- (void)setAliases:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 16);
  }
}

- (void)setLocalizedName:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 24);
  }
}

- (void)setSymbol:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 32);
  }
}

@end