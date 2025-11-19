@interface _MTLIndirectArgumentEncoder
- (_MTLIndirectArgumentEncoder)initWithLayout:(id)a3 device:(id)a4;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5;
@end

@implementation _MTLIndirectArgumentEncoder

- (_MTLIndirectArgumentEncoder)initWithLayout:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = _MTLIndirectArgumentEncoder;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = a4;
    v6->_layout = a3;
  }

  return v6;
}

- (void)dealloc
{
  self->_device = 0;

  self->_layout = 0;
  v3.receiver = self;
  v3.super_class = _MTLIndirectArgumentEncoder;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5
{
  v7 = a4 + [(_MTLIndirectArgumentEncoder *)self encodedLength]* a5;

  [(_MTLIndirectArgumentEncoder *)self setArgumentBuffer:a3 offset:v7];
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3
{
  result = [(_MTLIndirectArgumentBufferLayout *)self->_layout bufferLayoutForResourceAtIndex:a3];
  if (result)
  {
    v5 = result;
    device = self->_device;

    return [(MTLDevice *)device newArgumentEncoderWithLayout:v5];
  }

  return result;
}

- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4
{
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v8 = [a3 buffer];
    v9 = [a3 bufferOffset];

    [(_MTLIndirectArgumentEncoder *)self setBuffer:v8 offset:v9 atIndex:a4];
  }

  else
  {

    [(_MTLIndirectArgumentEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end