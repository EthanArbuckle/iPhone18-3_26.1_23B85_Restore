@interface MTLBufferRelocation
- (MTLBufferRelocation)initWithSymbolName:(id)name buffer:(id)buffer offset:(unint64_t)offset;
- (void)dealloc;
@end

@implementation MTLBufferRelocation

- (MTLBufferRelocation)initWithSymbolName:(id)name buffer:(id)buffer offset:(unint64_t)offset
{
  v10.receiver = self;
  v10.super_class = MTLBufferRelocation;
  v8 = [(MTLBufferRelocation *)&v10 init];
  if (v8)
  {
    v8->_symbolName = name;
    v8->_buffer = buffer;
    v8->_offset = offset;
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