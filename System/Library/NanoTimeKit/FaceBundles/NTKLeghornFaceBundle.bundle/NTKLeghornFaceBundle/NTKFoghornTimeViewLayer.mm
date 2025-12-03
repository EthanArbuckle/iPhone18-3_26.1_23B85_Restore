@interface NTKFoghornTimeViewLayer
- (NTKFoghornTimeViewLayer)initWithTimeView:(id)view;
- (void)drawInContext:(CGContext *)context;
@end

@implementation NTKFoghornTimeViewLayer

- (NTKFoghornTimeViewLayer)initWithTimeView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = NTKFoghornTimeViewLayer;
  v5 = [(NTKFoghornTimeViewLayer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_timeView, viewCopy);
  }

  return v6;
}

- (void)drawInContext:(CGContext *)context
{
  WeakRetained = objc_loadWeakRetained(&self->_timeView);
  v8 = objc_msgSend_needsDisplayElementMask(self, v6, v7);
  objc_msgSend__drawInContext_needsDisplayElementMask_(WeakRetained, v9, v10, context, v8);

  MEMORY[0x2821F9670](v11);
}

@end