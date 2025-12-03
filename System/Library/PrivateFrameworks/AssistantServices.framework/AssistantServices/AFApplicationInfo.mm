@interface AFApplicationInfo
- (AFApplicationInfo)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFApplicationInfo

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFApplicationInfo;
  v4 = [(AFApplicationInfo *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ %@ %d", v4, self->_identifier, self->_pid];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      pid = self->_pid;
      v8 = pid == [equalCopy pid];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AFApplicationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFApplicationInfo;
  v5 = [(AFApplicationInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_pid = [coderCopy decodeInt32ForKey:@"_pid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeInt32:self->_pid forKey:@"_pid"];
}

@end