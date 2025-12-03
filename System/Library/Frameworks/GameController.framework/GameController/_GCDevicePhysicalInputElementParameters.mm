@interface _GCDevicePhysicalInputElementParameters
+ (id)parametersWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)aliases;
- (uint64_t)identifier;
- (uint64_t)localizedName;
- (uint64_t)symbol;
- (unint64_t)hash;
- (void)setAliases:(uint64_t)aliases;
- (void)setIdentifier:(uint64_t)identifier;
- (void)setLocalizedName:(uint64_t)name;
- (void)setSymbol:(uint64_t)symbol;
@end

@implementation _GCDevicePhysicalInputElementParameters

+ (id)parametersWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v5 = [identifierCopy copy];

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputElementParameters;
  v4 = [(_GCDevicePhysicalInputViewParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 1, self->_identifier);
  objc_storeStrong(v4 + 2, self->_aliases);
  objc_storeStrong(v4 + 3, self->_localizedName);
  objc_storeStrong(v4 + 4, self->_symbol);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputElementParameters;
  if ([(_GCDevicePhysicalInputViewParameters *)&v11 isEqual:equalCopy]&& ((identifier = self->_identifier, identifier == equalCopy[1]) || [(NSString *)identifier isEqual:?]) && ((aliases = self->_aliases, aliases == equalCopy[2]) || [(NSSet *)aliases isEqual:?]) && ((localizedName = self->_localizedName, localizedName == equalCopy[3]) || [(NSString *)localizedName isEqual:?]))
  {
    symbol = self->_symbol;
    if (symbol == equalCopy[4])
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

- (void)setIdentifier:(uint64_t)identifier
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, identifier, 8);
  }
}

- (void)setAliases:(uint64_t)aliases
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, aliases, 16);
  }
}

- (void)setLocalizedName:(uint64_t)name
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, name, 24);
  }
}

- (void)setSymbol:(uint64_t)symbol
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, symbol, 32);
  }
}

@end