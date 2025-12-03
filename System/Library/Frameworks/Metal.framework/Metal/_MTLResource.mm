@interface _MTLResource
- (_MTLResource)init;
- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error;
- (unint64_t)bufferOffset;
@end

@implementation _MTLResource

- (_MTLResource)init
{
  v3.receiver = self;
  v3.super_class = _MTLResource;
  return [(_MTLAllocation *)&v3 initWithAllocationType:1];
}

- (unint64_t)bufferOffset
{
  if ([(_MTLResource *)self conformsToProtocol:&unk_1EF4F3340])
  {

    return [(_MTLResource *)self offset];
  }

  else
  {
    [(_MTLResource *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error
{
  if ([(_MTLResource *)self conformsToProtocol:&unk_1EF5054C8])
  {
    device = [(_MTLResource *)self device];
    strides = [descriptor strides];

    return [device newTensorWithBuffer:self descriptor:descriptor offset:offset strides:strides error:error];
  }

  else
  {
    [(_MTLResource *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

@end