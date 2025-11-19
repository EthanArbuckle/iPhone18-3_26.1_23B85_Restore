@interface CNSensitiveContentConfiguration
+ (CNSensitiveContentConfiguration)configurationWithOverride:(int64_t)a3;
+ (id)log;
- (BOOL)isEqual:(id)a3;
- (CNSensitiveContentConfiguration)initWithCoder:(id)a3;
- (CNSensitiveContentConfiguration)initWithDataRepresentation:(id)a3;
- (CNSensitiveContentConfiguration)initWithSensitiveContentOverride:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)updatedWithOverride:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNSensitiveContentConfiguration

+ (id)log
{
  if (log_cn_once_token_0_13 != -1)
  {
    +[CNSensitiveContentConfiguration log];
  }

  v3 = log_cn_once_object_0_13;

  return v3;
}

uint64_t __38__CNSensitiveContentConfiguration_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNSensitiveContentConfiguration");
  v1 = log_cn_once_object_0_13;
  log_cn_once_object_0_13 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CNSensitiveContentConfiguration)configurationWithOverride:(int64_t)a3
{
  v3 = [[a1 alloc] initWithSensitiveContentOverride:a3];

  return v3;
}

- (CNSensitiveContentConfiguration)initWithSensitiveContentOverride:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CNSensitiveContentConfiguration;
  v4 = [(CNSensitiveContentConfiguration *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_override = a3;
    v6 = v4;
  }

  return v5;
}

- (CNSensitiveContentConfiguration)initWithDataRepresentation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = a3;
    v11 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];

    v7 = v11;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "Error unarchiving Core Data value into CNSensitiveContentConfiguration: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dataRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Error archiving CNSensitiveContentConfiguration: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (CNSensitiveContentConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"version"];
  if (v5 >= 2)
  {
    v7 = v5;
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CNSensitiveContentConfiguration *)v7 initWithCoder:v8];
    }

    v6 = 0;
  }

  else
  {
    self = -[CNSensitiveContentConfiguration initWithSensitiveContentOverride:](self, "initWithSensitiveContentOverride:", [v4 decodeIntegerForKey:@"override"]);
    v6 = self;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CNSensitiveContentConfiguration override](self forKey:{"override"), @"override"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNSensitiveContentConfiguration alloc];
  v5 = [(CNSensitiveContentConfiguration *)self override];

  return [(CNSensitiveContentConfiguration *)v4 initWithSensitiveContentOverride:v5];
}

- (id)updatedWithOverride:(int64_t)a3
{
  v4 = [(CNSensitiveContentConfiguration *)self copy];
  [v4 setOverride:a3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CNSensitiveContentConfiguration *)self override];
      v6 = v5 == [(CNSensitiveContentConfiguration *)v4 override];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(CNSensitiveContentConfiguration *)self override];
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  return v3 + 527;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "CNSensitiveContentConfiguration has a higher version number than we know how to handle: %ld", &v2, 0xCu);
}

@end