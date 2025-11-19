@interface VCWeakObjectHolder
+ (id)weakObjectHolderWithObject:(id)a3;
- (VCWeakObjectHolder)init;
- (VCWeakObjectHolder)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation VCWeakObjectHolder

- (VCWeakObjectHolder)init
{
  v3.receiver = self;
  v3.super_class = VCWeakObjectHolder;
  [(VCWeakObjectHolder *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (VCWeakObjectHolder)initWithObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = VCWeakObjectHolder;
  v4 = [(VCWeakObjectHolder *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_weakObject, a3);
    FigCFWeakReferenceStore();
  }

  return v5;
}

+ (id)weakObjectHolderWithObject:(id)a3
{
  v3 = [[VCWeakObjectHolder alloc] initWithObject:a3];

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_weakObject, 0);
  FigCFWeakReferenceStore();
  v3.receiver = self;
  v3.super_class = VCWeakObjectHolder;
  [(VCWeakObjectHolder *)&v3 dealloc];
}

@end