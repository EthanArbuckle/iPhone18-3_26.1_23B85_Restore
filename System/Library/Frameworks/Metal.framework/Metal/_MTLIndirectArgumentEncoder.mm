@interface _MTLIndirectArgumentEncoder
- (_MTLIndirectArgumentEncoder)initWithLayout:(id)layout device:(id)device;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element;
@end

@implementation _MTLIndirectArgumentEncoder

- (_MTLIndirectArgumentEncoder)initWithLayout:(id)layout device:(id)device
{
  v8.receiver = self;
  v8.super_class = _MTLIndirectArgumentEncoder;
  v6 = [(_MTLObjectWithLabel *)&v8 init];
  if (v6)
  {
    v6->_device = device;
    v6->_layout = layout;
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

- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element
{
  v7 = offset + [(_MTLIndirectArgumentEncoder *)self encodedLength]* element;

  [(_MTLIndirectArgumentEncoder *)self setArgumentBuffer:buffer offset:v7];
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
{
  result = [(_MTLIndirectArgumentBufferLayout *)self->_layout bufferLayoutForResourceAtIndex:index];
  if (result)
  {
    v5 = result;
    device = self->_device;

    return [(MTLDevice *)device newArgumentEncoderWithLayout:v5];
  }

  return result;
}

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLIndirectArgumentEncoder *)self setBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(_MTLIndirectArgumentEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end