@interface VNModelFileImpl
- (VNModelFileImpl)initWithMappedModel:(const mapped_model_file *)model;
@end

@implementation VNModelFileImpl

- (VNModelFileImpl)initWithMappedModel:(const mapped_model_file *)model
{
  v5.receiver = self;
  v5.super_class = VNModelFileImpl;
  result = [(VNModelFileImpl *)&v5 init];
  if (result)
  {
    result->m_impl = model;
  }

  return result;
}

@end