@interface AFApplicationInfo
- (AFApplicationInfo)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    if ([(NSString *)identifier isEqualToString:v6])
    {
      pid = self->_pid;
      v8 = pid == [v4 pid];
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

- (AFApplicationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFApplicationInfo;
  v5 = [(AFApplicationInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_pid = [v4 decodeInt32ForKey:@"_pid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeInt32:self->_pid forKey:@"_pid"];
}

@end