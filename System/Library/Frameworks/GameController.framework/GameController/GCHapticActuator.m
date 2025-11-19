@interface GCHapticActuator
- (GCHapticActuator)initWithCoder:(id)a3;
- (GCHapticActuator)initWithJSONDictionaryRepresentation:(id)a3;
- (GCHapticActuator)initWithLabel:(id)a3 type:(int64_t)a4 index:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonDictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCHapticActuator

- (GCHapticActuator)initWithLabel:(id)a3 type:(int64_t)a4 index:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = GCHapticActuator;
  v10 = [(GCHapticActuator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_label, a3);
    v11->_type = a4;
    v11->_index = a5;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GCHapticActuator alloc];
  v5 = [(GCHapticActuator *)self label];
  v6 = [v5 copy];
  v7 = [(GCHapticActuator *)v4 initWithLabel:v6 type:[(GCHapticActuator *)self type] index:[(GCHapticActuator *)self index]];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(GCHapticActuator *)self label];
  [v5 encodeObject:v4 forKey:@"label"];

  [v5 encodeInteger:-[GCHapticActuator type](self forKey:{"type"), @"type"}];
  [v5 encodeInteger:-[GCHapticActuator index](self forKey:{"index"), @"index"}];
}

- (GCHapticActuator)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCHapticActuator;
  v5 = [(GCHapticActuator *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_index = [v4 decodeIntegerForKey:@"index"];
  }

  return v5;
}

- (GCHapticActuator)initWithJSONDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCHapticActuator;
  v5 = [(GCHapticActuator *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 objectForKeyedSubscript:@"type"];
    v5->_type = [v8 unsignedIntValue];

    v9 = [v4 objectForKeyedSubscript:@"index"];
    v5->_index = [v9 unsignedIntValue];
  }

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v10[3] = *MEMORY[0x1E69E9840];
  type = self->_type;
  v10[0] = self->_label;
  v9[0] = @"label";
  v9[1] = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v10[1] = v4;
  v9[2] = @"index";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_index];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end