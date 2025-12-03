@interface GCHapticActuator
- (GCHapticActuator)initWithCoder:(id)coder;
- (GCHapticActuator)initWithJSONDictionaryRepresentation:(id)representation;
- (GCHapticActuator)initWithLabel:(id)label type:(int64_t)type index:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonDictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCHapticActuator

- (GCHapticActuator)initWithLabel:(id)label type:(int64_t)type index:(unint64_t)index
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = GCHapticActuator;
  v10 = [(GCHapticActuator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_label, label);
    v11->_type = type;
    v11->_index = index;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GCHapticActuator alloc];
  label = [(GCHapticActuator *)self label];
  v6 = [label copy];
  v7 = [(GCHapticActuator *)v4 initWithLabel:v6 type:[(GCHapticActuator *)self type] index:[(GCHapticActuator *)self index]];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(GCHapticActuator *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  [coderCopy encodeInteger:-[GCHapticActuator type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[GCHapticActuator index](self forKey:{"index"), @"index"}];
}

- (GCHapticActuator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GCHapticActuator;
  v5 = [(GCHapticActuator *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_index = [coderCopy decodeIntegerForKey:@"index"];
  }

  return v5;
}

- (GCHapticActuator)initWithJSONDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = GCHapticActuator;
  v5 = [(GCHapticActuator *)&v11 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"type"];
    v5->_type = [v8 unsignedIntValue];

    v9 = [representationCopy objectForKeyedSubscript:@"index"];
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