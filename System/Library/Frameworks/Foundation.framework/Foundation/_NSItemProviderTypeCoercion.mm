@interface _NSItemProviderTypeCoercion
+ (id)typeCoercionForValue:(id)value targetClass:(Class)class;
- (BOOL)shouldCoerceForCoding;
- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSDataValue:(id)value error:(id *)error;
- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSURLValue:(id)value error:(id *)error;
- (id)coerceValueError:(id *)error;
- (void)dealloc;
@end

@implementation _NSItemProviderTypeCoercion

+ (id)typeCoercionForValue:(id)value targetClass:(Class)class
{
  if (![self instancesRespondToSelector:{_selectorForCoercion(value, class)}])
  {
    return 0;
  }

  v7 = objc_alloc_init(self);
  [v7 setValue:value];
  [v7 setTargetClass:class];
  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSItemProviderTypeCoercion;
  [(_NSItemProviderTypeCoercion *)&v3 dealloc];
}

- (BOOL)shouldCoerceForCoding
{
  v3 = objc_opt_class();
  [(_NSItemProviderTypeCoercion *)self value];
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  if (([(objc_class *)[(_NSItemProviderTypeCoercion *)self targetClass] isSubclassOfClass:v3]& 1) != 0)
  {
    return 1;
  }

  targetClass = [(_NSItemProviderTypeCoercion *)self targetClass];
  v6 = MEMORY[0x1E695DEF0];

  return [(objc_class *)targetClass isSubclassOfClass:v6];
}

- (id)coerceValueError:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = error;
  value = [(_NSItemProviderTypeCoercion *)self value];
  v4 = _selectorForCoercion(value, [(_NSItemProviderTypeCoercion *)self targetClass]);
  v5 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:{-[_NSItemProviderTypeCoercion methodSignatureForSelector:](self, "methodSignatureForSelector:", v4)}];
  [v5 setSelector:v4];
  [v5 setArgument:&value atIndex:2];
  [v5 setArgument:v9 atIndex:3];
  [v5 invokeWithTarget:self];
  v7 = 0;
  [v5 getReturnValue:&v7];
  return v7;
}

- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSURLValue:(id)value error:(id *)error
{
  v4 = [[NSFileWrapper alloc] initWithURL:value options:0 error:error];

  return v4;
}

- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSDataValue:(id)value error:(id *)error
{
  v4 = [[NSFileWrapper alloc] initRegularFileWithContents:value];

  return v4;
}

@end