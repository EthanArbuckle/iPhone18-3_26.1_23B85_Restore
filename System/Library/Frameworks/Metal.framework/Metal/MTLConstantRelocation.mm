@interface MTLConstantRelocation
- (MTLConstantRelocation)initWithSymbolName:(id)name bytes:(void *)bytes length:(unint64_t)length;
- (MTLConstantRelocation)initWithSymbolName:(id)name data:(id)data;
- (void)dealloc;
@end

@implementation MTLConstantRelocation

- (MTLConstantRelocation)initWithSymbolName:(id)name data:(id)data
{
  v8.receiver = self;
  v8.super_class = MTLConstantRelocation;
  v6 = [(MTLConstantRelocation *)&v8 init];
  if (v6)
  {
    v6->_symbolName = name;
    v6->_data = data;
  }

  return v6;
}

- (MTLConstantRelocation)initWithSymbolName:(id)name bytes:(void *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = MTLConstantRelocation;
  v8 = [(MTLConstantRelocation *)&v10 init];
  if (v8)
  {
    v8->_symbolName = name;
    v8->_data = dispatch_data_create(bytes, length, 0, 0);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLConstantRelocation;
  [(MTLConstantRelocation *)&v3 dealloc];
}

@end