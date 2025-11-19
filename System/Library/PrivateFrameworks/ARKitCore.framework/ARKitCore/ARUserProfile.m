@interface ARUserProfile
+ (id)defaultProfile;
- (ARUserProfile)initWithIdentifier:(id)a3 type:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation ARUserProfile

+ (id)defaultProfile
{
  v2 = [[ARUserProfile alloc] initWithIdentifier:@"Default" type:0x7FFFFFFFFFFFFFFFLL];

  return v2;
}

- (ARUserProfile)initWithIdentifier:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ARUserProfile;
  v8 = [(ARUserProfile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_type = a4;
  }

  return v9;
}

- (id)description
{
  type = self->_type;
  v4 = @"PersistGuest";
  v5 = @"Default";
  if (type != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  if (type != 2)
  {
    v4 = v5;
  }

  v6 = @"Enrolled";
  v7 = @"Guest";
  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"<%@: %p: Identifier:%@, type:%@>", v11, self, self->_identifier, v8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_type == v4[2] && -[NSString isEqualToString:](self->_identifier, "isEqualToString:", v4[1]);

  return v5;
}

@end