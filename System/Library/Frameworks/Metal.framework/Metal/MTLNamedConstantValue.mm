@interface MTLNamedConstantValue
- (MTLNamedConstantValue)initWithValue:(const void *)value type:(unint64_t)type name:(id)name;
- (id)describe;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLNamedConstantValue

- (MTLNamedConstantValue)initWithValue:(const void *)value type:(unint64_t)type name:(id)name
{
  v9.receiver = self;
  v9.super_class = MTLNamedConstantValue;
  v7 = [(MTLNamedConstantValue *)&v9 init];
  if (v7)
  {
    v7->_name = name;
    v7->_dataType = type;
    _MTLConstantDataSize(type);
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    MEMORY[0x1865FF1F0](data, 0x1000C8077774924);
  }

  self->_data = 0;

  self->_name = 0;
  v4.receiver = self;
  v4.super_class = MTLNamedConstantValue;
  [(MTLNamedConstantValue *)&v4 dealloc];
}

- (id)describe
{
  v3 = newStringFromConstantValue(self->_data, self->_dataType);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"name: %@; type: %@; value: %@", self->_name, MTLDataTypeString(self->_dataType), v3];

  return v4;
}

- (id)formattedDescription:(unint64_t)description
{
  v14[9] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = newStringFromConstantValue(self->_data, self->_dataType);
  v6 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = MTLNamedConstantValue;
  v7 = [(MTLNamedConstantValue *)&v13 description];
  v14[0] = v4;
  v14[1] = @"Name =";
  name = @"<none>";
  dataType = self->_dataType;
  if (self->_name)
  {
    name = self->_name;
  }

  v14[2] = name;
  v14[3] = v4;
  v14[4] = @"Type =";
  v14[5] = MTLDataTypeString(dataType);
  v14[6] = v4;
  v14[7] = @"Value =";
  v14[8] = v5;
  v10 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 9), "componentsJoinedByString:", @" "];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end