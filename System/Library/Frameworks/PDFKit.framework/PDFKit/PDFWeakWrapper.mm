@interface PDFWeakWrapper
+ (id)weakWrapperWithObject:(id)object;
- (id)object;
@end

@implementation PDFWeakWrapper

+ (id)weakWrapperWithObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  [v4 setObject:objectCopy];

  return v4;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end