@interface CADisplayPersistedLatency
- (CADisplayPersistedLatency)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADisplayPersistedLatency

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_uuid forKey:@"uuid"];
  [coder encodeObject:self->_mode forKey:@"mode"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latency];

  [coder encodeObject:v5 forKey:@"latency"];
}

- (CADisplayPersistedLatency)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CADisplayPersistedLatency;
  v4 = [(CADisplayPersistedLatency *)&v7 init];
  if (v4)
  {
    v4->_uuid = [coder decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    if (mode_dictionary_classes(void)::once != -1)
    {
      dispatch_once(&mode_dictionary_classes(void)::once, &__block_literal_global_138);
    }

    v4->_mode = [coder decodeObjectOfClasses:mode_dictionary_classes(void)::set forKey:@"mode"];
    [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"latency", "doubleValue"}];
    v4->_latency = v5;
  }

  return v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  [string appendFormat:@"<%@:%p; ", NSStringFromClass(v4), self];
  [string appendFormat:@"uuid: %@, mode: %@, latency:%g", self->_uuid, self->_mode, *&self->_latency];
  [string appendString:@">"];
  return string;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CADisplayPersistedLatency;
  [(CADisplayPersistedLatency *)&v3 dealloc];
}

@end