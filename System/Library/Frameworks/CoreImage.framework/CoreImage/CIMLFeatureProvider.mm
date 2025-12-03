@interface CIMLFeatureProvider
- (CIMLFeatureProvider)init;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)addOject:(id)oject forName:(id)name;
- (void)dealloc;
@end

@implementation CIMLFeatureProvider

- (CIMLFeatureProvider)init
{
  v4.receiver = self;
  v4.super_class = CIMLFeatureProvider;
  v2 = [(CIMLFeatureProvider *)&v4 init];
  if (v2)
  {
    -[CIMLFeatureProvider setContents:](v2, "setContents:", [MEMORY[0x1E695DF90] dictionary]);
  }

  return v2;
}

- (NSSet)featureNames
{
  v2 = MEMORY[0x1E695DFD8];
  allKeys = [(NSMutableDictionary *)self->contents allKeys];

  return [v2 setWithArray:allKeys];
}

- (void)addOject:(id)oject forName:(id)name
{
  contents = [(CIMLFeatureProvider *)self contents];

  [(NSMutableDictionary *)contents setObject:oject forKey:name];
}

- (id)featureValueForName:(id)name
{
  v3 = [(NSMutableDictionary *)[(CIMLFeatureProvider *)self contents] objectForKey:name];
  getMLMultiArrayClass();
  if (objc_opt_isKindOfClass())
  {
    MLFeatureValueClass = getMLFeatureValueClass();

    return [MLFeatureValueClass featureValueWithMultiArray:v3];
  }

  else
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CVPixelBufferGetTypeID())
    {
      v7 = getMLFeatureValueClass();

      return [v7 featureValueWithPixelBuffer:v3];
    }

    else
    {
      return 0;
    }
  }
}

- (void)dealloc
{
  [(CIMLFeatureProvider *)self setContents:0];
  v3.receiver = self;
  v3.super_class = CIMLFeatureProvider;
  [(CIMLFeatureProvider *)&v3 dealloc];
}

@end