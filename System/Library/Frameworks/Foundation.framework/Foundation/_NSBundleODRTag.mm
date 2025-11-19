@interface _NSBundleODRTag
- (_NSBundleODRTag)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSBundleODRTag

- (_NSBundleODRTag)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSBundleODRTag;
  v4 = [(_NSBundleODRTag *)&v7 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"pp"];
    v4->_preservationPriority = v5;
    v4->_alwaysPreserved = [a3 decodeBoolForKey:@"always"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"pp" forKey:self->_preservationPriority];
  alwaysPreserved = self->_alwaysPreserved;

  [a3 encodeBool:alwaysPreserved forKey:@"always"];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSBundleODRTag;
  return [NSString stringWithFormat:@"%@ preservation: %f always: %d", [(_NSBundleODRTag *)&v3 description], *&self->_preservationPriority, self->_alwaysPreserved];
}

@end