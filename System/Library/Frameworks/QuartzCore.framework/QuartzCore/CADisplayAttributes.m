@interface CADisplayAttributes
- (id).cxx_construct;
- (id)_initWithAttributes:(EDIDAttributes *)a3;
@end

@implementation CADisplayAttributes

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 21) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)_initWithAttributes:(EDIDAttributes *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CADisplayAttributes;
  result = [(CADisplayAttributes *)&v6 init];
  if (result)
  {
    v5 = result + 8 == a3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *(result + 8) = *&a3->dolbyVision;
    *(result + 6) = a3->discreteMediaRefreshRate;
    *(result + 28) = a3->legacyHDMI;
    *(result + 2) = *&a3->product_id;
    *(result + 12) = a3->serial_number;
  }

  return result;
}

@end