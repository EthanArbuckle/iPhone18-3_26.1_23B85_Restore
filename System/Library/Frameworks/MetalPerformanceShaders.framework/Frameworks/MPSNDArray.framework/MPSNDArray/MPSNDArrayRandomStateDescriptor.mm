@interface MPSNDArrayRandomStateDescriptor
- (MPSNDArrayRandomStateDescriptor)init;
- (MPSNDArrayRandomStateDescriptor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportStateToNDArray:(id)array;
- (id)initPhiloxStateDescriptorWithCounterLow:(unint64_t)low counterHigh:(unint64_t)high key:(unint64_t)key;
- (id)initPhiloxStateDescriptorWithSeed:(unint64_t)seed;
- (unint64_t)stateLength;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayRandomStateDescriptor

- (unint64_t)stateLength
{
  if (self->_algorithm < 2)
  {
    return 6;
  }

  v3 = MTLReportFailureTypeEnabled();
  result = 0;
  if (v3)
  {
    MTLReportFailure();
    return 0;
  }

  return result;
}

- (id)initPhiloxStateDescriptorWithCounterLow:(unint64_t)low counterHigh:(unint64_t)high key:(unint64_t)key
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayRandomStateDescriptor;
  result = [(MPSNDArrayRandomStateDescriptor *)&v11 init];
  if (result)
  {
    *(result + 2) = 1;
    v9 = result;
    v10 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
    result = v9;
    v9[2] = v10;
    *v10 = low;
    v10[1] = high;
    v10[2] = key;
  }

  return result;
}

- (id)initPhiloxStateDescriptorWithSeed:(unint64_t)seed
{
  srand48(seed);
  v4 = mrand48();
  v5 = mrand48() | (v4 << 32);
  v6 = mrand48();
  v7 = mrand48() | (v6 << 32);
  v8 = mrand48();
  v9 = mrand48() | (v8 << 32);

  return [(MPSNDArrayRandomStateDescriptor *)self initPhiloxStateDescriptorWithCounterLow:v5 counterHigh:v7 key:v9];
}

- (MPSNDArrayRandomStateDescriptor)init
{
  v3 = arc4random();

  return [(MPSNDArrayRandomStateDescriptor *)self initPhiloxStateDescriptorWithSeed:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 2) = self->_algorithm;
    v5 = result;
    memcpy(*(result + 2), self->_state, 4 * [(MPSNDArrayRandomStateDescriptor *)self stateLength]);
    return v5;
  }

  return result;
}

- (void)dealloc
{
  free(self->_state);
  v3.receiver = self;
  v3.super_class = MPSNDArrayRandomStateDescriptor;
  [(MPSNDArrayRandomStateDescriptor *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = 4 * [(MPSNDArrayRandomStateDescriptor *)self stateLength];
  v6 = malloc_type_malloc(v5, 0x100004052888210uLL);
  state = self->_state;
  MPSCopyToFromNetworkByteOrder32();
  [coder encodeBytes:v6 length:v5 forKey:@"MPSNDArrayRandomStateDescriptorState"];
  algorithm = self->_algorithm;

  [coder encodeInt32:algorithm forKey:@"MPSNDArrayRandomStateDescriptorAlgorithm"];
}

- (MPSNDArrayRandomStateDescriptor)initWithCoder:(id)coder
{
  v4 = [(MPSNDArrayRandomStateDescriptor *)self init];
  if (v4)
  {
    v4->_algorithm = [coder decodeInt32ForKey:@"MPSNDArrayRandomStateDescriptorAlgorithm"];
    v8 = 0;
    [coder decodeBytesForKey:@"MPSNDArrayRandomStateDescriptorState" returnedLength:&v8];
    [(MPSNDArrayRandomStateDescriptor *)v4 stateLength];
    stateLength = [(MPSNDArrayRandomStateDescriptor *)v4 stateLength];
    if (stateLength != v8 && MTLReportFailureTypeEnabled())
    {
      [(MPSNDArrayRandomStateDescriptor *)v4 stateLength];
      MTLReportFailure();
    }

    state = v4->_state;
    if (state)
    {
      free(state);
    }

    v4->_state = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    MPSCopyToFromNetworkByteOrder32();
  }

  return v4;
}

- (id)exportStateToNDArray:(id)array
{
  v12[1] = *MEMORY[0x277D85DE8];
  stateLength = [(MPSNDArrayRandomStateDescriptor *)self stateLength];
  v6 = MEMORY[0x277CD7268];
  v12[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stateLength + 1];
  v7 = [v6 descriptorWithDataType:536870944 shape:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 1)}];
  v8 = [objc_alloc(MEMORY[0x277CD7260]) initWithDevice:array descriptor:v7];
  v9 = malloc_type_malloc(4 * (stateLength + 1), 0x100004052888210uLL);
  *v9 = [(MPSNDArrayRandomStateDescriptor *)self algorithm];
  memcpy(v9 + 1, [(MPSNDArrayRandomStateDescriptor *)self state], 4 * stateLength);
  [v8 writeBytes:v9 strideBytes:0];
  result = v8;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end