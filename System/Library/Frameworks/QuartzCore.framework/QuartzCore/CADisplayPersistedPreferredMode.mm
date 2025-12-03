@interface CADisplayPersistedPreferredMode
- (CADisplayPersistedPreferredMode)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADisplayPersistedPreferredMode

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_uuid forKey:@"uuid"];
  mode = self->_mode;

  [coder encodeObject:mode forKey:@"mode"];
}

- (CADisplayPersistedPreferredMode)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CADisplayPersistedPreferredMode;
  v4 = [(CADisplayPersistedPreferredMode *)&v6 init];
  if (v4)
  {
    v4->_uuid = [coder decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    if (mode_dictionary_classes(void)::once != -1)
    {
      dispatch_once(&mode_dictionary_classes(void)::once, &__block_literal_global_138);
    }

    v4->_mode = [coder decodeObjectOfClasses:mode_dictionary_classes(void)::set forKey:@"mode"];
  }

  return v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  [string appendFormat:@"<%@:%p; ", NSStringFromClass(v4), self];
  [string appendFormat:@"uuid: %@, mode: %@", self->_uuid, self->_mode];
  [string appendString:@">"];
  return string;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CADisplayPersistedPreferredMode;
  [(CADisplayPersistedPreferredMode *)&v3 dealloc];
}

@end