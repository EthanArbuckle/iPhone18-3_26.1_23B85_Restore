@interface CIMLFeatureProvider
- (CIMLFeatureProvider)init;
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
- (void)addOject:(id)a3 forName:(id)a4;
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
  v3 = [(NSMutableDictionary *)self->contents allKeys];

  return [v2 setWithArray:v3];
}

- (void)addOject:(id)a3 forName:(id)a4
{
  v6 = [(CIMLFeatureProvider *)self contents];

  [(NSMutableDictionary *)v6 setObject:a3 forKey:a4];
}

- (id)featureValueForName:(id)a3
{
  v3 = [(NSMutableDictionary *)[(CIMLFeatureProvider *)self contents] objectForKey:a3];
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