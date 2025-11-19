@interface _NSItemProviderTypeCoercion
+ (id)typeCoercionForValue:(id)a3 targetClass:(Class)a4;
- (BOOL)shouldCoerceForCoding;
- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSDataValue:(id)a3 error:(id *)a4;
- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSURLValue:(id)a3 error:(id *)a4;
- (id)coerceValueError:(id *)a3;
- (void)dealloc;
@end

@implementation _NSItemProviderTypeCoercion

+ (id)typeCoercionForValue:(id)a3 targetClass:(Class)a4
{
  if (![a1 instancesRespondToSelector:{_selectorForCoercion(a3, a4)}])
  {
    return 0;
  }

  v7 = objc_alloc_init(a1);
  [v7 setValue:a3];
  [v7 setTargetClass:a4];
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

  v5 = [(_NSItemProviderTypeCoercion *)self targetClass];
  v6 = MEMORY[0x1E695DEF0];

  return [(objc_class *)v5 isSubclassOfClass:v6];
}

- (id)coerceValueError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  v8 = [(_NSItemProviderTypeCoercion *)self value];
  v4 = _selectorForCoercion(v8, [(_NSItemProviderTypeCoercion *)self targetClass]);
  v5 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:{-[_NSItemProviderTypeCoercion methodSignatureForSelector:](self, "methodSignatureForSelector:", v4)}];
  [v5 setSelector:v4];
  [v5 setArgument:&v8 atIndex:2];
  [v5 setArgument:v9 atIndex:3];
  [v5 invokeWithTarget:self];
  v7 = 0;
  [v5 getReturnValue:&v7];
  return v7;
}

- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSURLValue:(id)a3 error:(id *)a4
{
  v4 = [[NSFileWrapper alloc] initWithURL:a3 options:0 error:a4];

  return v4;
}

- (id)_NSItemProviderTypeCoercion_coercedNSFileWrapperValueFromNSDataValue:(id)a3 error:(id *)a4
{
  v4 = [[NSFileWrapper alloc] initRegularFileWithContents:a3];

  return v4;
}

@end