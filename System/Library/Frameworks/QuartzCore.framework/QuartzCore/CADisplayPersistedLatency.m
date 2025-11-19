@interface CADisplayPersistedLatency
- (CADisplayPersistedLatency)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADisplayPersistedLatency

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_uuid forKey:@"uuid"];
  [a3 encodeObject:self->_mode forKey:@"mode"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latency];

  [a3 encodeObject:v5 forKey:@"latency"];
}

- (CADisplayPersistedLatency)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CADisplayPersistedLatency;
  v4 = [(CADisplayPersistedLatency *)&v7 init];
  if (v4)
  {
    v4->_uuid = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    if (mode_dictionary_classes(void)::once != -1)
    {
      dispatch_once(&mode_dictionary_classes(void)::once, &__block_literal_global_138);
    }

    v4->_mode = [a3 decodeObjectOfClasses:mode_dictionary_classes(void)::set forKey:@"mode"];
    [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"latency", "doubleValue"}];
    v4->_latency = v5;
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"<%@:%p; ", NSStringFromClass(v4), self];
  [v3 appendFormat:@"uuid: %@, mode: %@, latency:%g", self->_uuid, self->_mode, *&self->_latency];
  [v3 appendString:@">"];
  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CADisplayPersistedLatency;
  [(CADisplayPersistedLatency *)&v3 dealloc];
}

@end