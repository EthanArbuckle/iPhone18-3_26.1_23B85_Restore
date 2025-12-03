@interface _NSBundleODRTag
- (_NSBundleODRTag)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSBundleODRTag

- (_NSBundleODRTag)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSBundleODRTag;
  v4 = [(_NSBundleODRTag *)&v7 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"pp"];
    v4->_preservationPriority = v5;
    v4->_alwaysPreserved = [coder decodeBoolForKey:@"always"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"pp" forKey:self->_preservationPriority];
  alwaysPreserved = self->_alwaysPreserved;

  [coder encodeBool:alwaysPreserved forKey:@"always"];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSBundleODRTag;
  return [NSString stringWithFormat:@"%@ preservation: %f always: %d", [(_NSBundleODRTag *)&v3 description], *&self->_preservationPriority, self->_alwaysPreserved];
}

@end