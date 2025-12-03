@interface VSOptional
+ (VSOptional)optionalWithObject:(id)object;
+ (id)decodableClasses;
- (BOOL)isEqual:(id)equal;
- (VSOptional)initWithCoder:(id)coder;
- (VSOptional)initWithObject:(id)object;
- (id)description;
- (id)forceUnwrapObject;
- (id)unwrapWithFallback:(id)fallback;
- (unint64_t)hash;
- (void)conditionallyUnwrapObject:(id)object otherwise:(id)otherwise;
- (void)encodeWithCoder:(id)coder;
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

+ (VSOptional)optionalWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (VSOptional)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = VSOptional;
  v6 = [(VSOptional *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (void)conditionallyUnwrapObject:(id)object otherwise:(id)otherwise
{
  objectCopy = object;
  otherwiseCopy = otherwise;
  if (!objectCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The conditionalBlock parameter must not be nil."];
  }

  object = [(VSOptional *)self object];
  if (object)
  {
    objectCopy[2](objectCopy, object);
  }

  else if (otherwiseCopy)
  {
    otherwiseCopy[2](otherwiseCopy);
  }
}

- (id)forceUnwrapObject
{
  object = [(VSOptional *)self object];
  if (object)
  {

    return object;
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

- (id)unwrapWithFallback:(id)fallback
{
  fallbackCopy = fallback;
  if (!fallbackCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The fallback parameter must not be nil."];
  }

  object = [(VSOptional *)self object];
  if (object || (object = fallbackCopy, fallbackCopy))
  {
    v6 = object;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  object = [(VSOptional *)self object];
  [coderCopy encodeObject:object forKey:@"VSOptionalObject"];
}

- (VSOptional)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  decodableClasses = [objc_opt_class() decodableClasses];
  v6 = [coderCopy decodeObjectOfClasses:decodableClasses forKey:@"VSOptionalObject"];

  v7 = [(VSOptional *)self initWithObject:v6];
  return v7;
}

- (unint64_t)hash
{
  object = [(VSOptional *)self object];
  v3 = [object hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    object = [(VSOptional *)self object];
    object2 = [v5 object];
    v8 = object;
    v9 = object2;
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
  object = [(VSOptional *)self object];
  v6 = [v3 stringWithFormat:@"<%@ object=%@>", v4, object];

  return v6;
}

- (void)forceUnwrapObject
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to force unwrap optional %p.", &v2, 0xCu);
}

@end