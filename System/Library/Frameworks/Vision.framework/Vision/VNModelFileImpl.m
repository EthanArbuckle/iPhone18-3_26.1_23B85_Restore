@interface VNModelFileImpl
- (VNModelFileImpl)initWithMappedModel:(const mapped_model_file *)a3;
@end

@implementation VNModelFileImpl

- (VNModelFileImpl)initWithMappedModel:(const mapped_model_file *)a3
{
  v5.receiver = self;
  v5.super_class = VNModelFileImpl;
  result = [(VNModelFileImpl *)&v5 init];
  if (result)
  {
    result->m_impl = a3;
  }

  return result;
}

@end