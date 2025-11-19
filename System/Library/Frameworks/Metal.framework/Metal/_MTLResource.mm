@interface _MTLResource
- (_MTLResource)init;
- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
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

- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  if ([(_MTLResource *)self conformsToProtocol:&unk_1EF5054C8])
  {
    v10 = [(_MTLResource *)self device];
    v11 = [a3 strides];

    return [v10 newTensorWithBuffer:self descriptor:a3 offset:a4 strides:v11 error:a5];
  }

  else
  {
    [(_MTLResource *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

@end