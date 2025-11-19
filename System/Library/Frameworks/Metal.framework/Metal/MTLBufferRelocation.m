@interface MTLBufferRelocation
- (MTLBufferRelocation)initWithSymbolName:(id)a3 buffer:(id)a4 offset:(unint64_t)a5;
- (void)dealloc;
@end

@implementation MTLBufferRelocation

- (MTLBufferRelocation)initWithSymbolName:(id)a3 buffer:(id)a4 offset:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = MTLBufferRelocation;
  v8 = [(MTLBufferRelocation *)&v10 init];
  if (v8)
  {
    v8->_symbolName = a3;
    v8->_buffer = a4;
    v8->_offset = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLBufferRelocation;
  [(MTLBufferRelocation *)&v3 dealloc];
}

@end