@interface PDFWeakWrapper
+ (id)weakWrapperWithObject:(id)a3;
- (id)object;
@end

@implementation PDFWeakWrapper

+ (id)weakWrapperWithObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:v3];

  return v4;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end