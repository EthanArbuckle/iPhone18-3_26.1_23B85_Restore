@interface VNFgBgE5MLInputElement
- (VNFgBgE5MLInputElement)initWithValueRef:(__IOSurface *)a3 name:(id)a4;
- (void)dealloc;
@end

@implementation VNFgBgE5MLInputElement

- (void)dealloc
{
  valueRef = self->_valueRef;
  if (valueRef)
  {
    CFRelease(valueRef);
    self->_valueRef = 0;
  }

  v4.receiver = self;
  v4.super_class = VNFgBgE5MLInputElement;
  [(VNFgBgE5MLInputElement *)&v4 dealloc];
}

- (VNFgBgE5MLInputElement)initWithValueRef:(__IOSurface *)a3 name:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VNFgBgE5MLInputElement;
  v7 = [(VNFgBgE5MLInputElement *)&v11 init];
  if (v7)
  {
    v7->_valueRef = CFRetain(a3);
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;
  }

  return v7;
}

@end