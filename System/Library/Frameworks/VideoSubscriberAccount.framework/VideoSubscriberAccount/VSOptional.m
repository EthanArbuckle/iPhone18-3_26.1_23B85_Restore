@interface VSOptional
+ (VSOptional)optionalWithObject:(id)a3;
+ (id)decodableClasses;
- (BOOL)isEqual:(id)a3;
- (VSOptional)initWithCoder:(id)a3;
- (VSOptional)initWithObject:(id)a3;
- (id)description;
- (id)forceUnwrapObject;
- (id)unwrapWithFallback:(id)a3;
- (unint64_t)hash;
- (void)conditionallyUnwrapObject:(id)a3 otherwise:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)forceUnwrapObject;
@end

@implementation VSOptional

+ (id)decodableClasses
{
  v25 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v25 setWithObjects:{v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (VSOptional)optionalWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4];

  return v5;
}

- (VSOptional)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VSOptional;
  v6 = [(VSOptional *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

- (void)conditionallyUnwrapObject:(id)a3 otherwise:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The conditionalBlock parameter must not be nil."];
  }

  v7 = [(VSOptional *)self object];
  if (v7)
  {
    v8[2](v8, v7);
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (id)forceUnwrapObject
{
  v3 = [(VSOptional *)self object];
  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(VSOptional *)self forceUnwrapObject];
    }

    __break(1u);
  }

  return result;
}

- (id)unwrapWithFallback:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The fallback parameter must not be nil."];
  }

  v5 = [(VSOptional *)self object];
  if (v5 || (v5 = v4, v4))
  {
    v6 = v5;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSOptional *)self object];
  [v4 encodeObject:v5 forKey:@"VSOptionalObject"];
}

- (VSOptional)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [objc_opt_class() decodableClasses];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"VSOptionalObject"];

  v7 = [(VSOptional *)self initWithObject:v6];
  return v7;
}

- (unint64_t)hash
{
  v2 = [(VSOptional *)self object];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(VSOptional *)self object];
    v7 = [v5 object];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VSOptional;
  v4 = [(VSOptional *)&v8 description];
  v5 = [(VSOptional *)self object];
  v6 = [v3 stringWithFormat:@"<%@ object=%@>", v4, v5];

  return v6;
}

- (void)forceUnwrapObject
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to force unwrap optional %p.", &v2, 0xCu);
}

@end