@interface ANAnalyticsCounter
- (ANAnalyticsCounter)init;
- (ANAnalyticsCounter)initWithHexCount:(unint64_t)count;
- (id)payload:(id)payload keyTwo:(id)two;
- (void)append:(unint64_t)append;
@end

@implementation ANAnalyticsCounter

- (ANAnalyticsCounter)init
{
  v3.receiver = self;
  v3.super_class = ANAnalyticsCounter;
  result = [(ANAnalyticsCounter *)&v3 init];
  if (result)
  {
    result->_hexCount = 0;
    result->_count = 0;
  }

  return result;
}

- (ANAnalyticsCounter)initWithHexCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = ANAnalyticsCounter;
  result = [(ANAnalyticsCounter *)&v5 init];
  if (result)
  {
    result->_hexCount = count;
    result->_count = count & 0xF;
  }

  return result;
}

- (void)append:(unint64_t)append
{
  count = self->_count;
  if (count <= 9)
  {
    v4 = count + 1;
    self->_count = v4;
    appendCopy = 10;
    if (append < 0xA)
    {
      appendCopy = append;
    }

    self->_hexCount |= appendCopy << (4 * v4);
  }
}

- (id)payload:(id)payload keyTwo:(id)two
{
  v18[2] = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  twoCopy = two;
  v8 = objc_opt_new();
  if (self->_count)
  {
    v9 = 1;
    v10 = 4;
    do
    {
      v11 = self->_hexCount >> v10;
      v17[0] = payloadCopy;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      v17[1] = twoCopy;
      v18[0] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11 & 0xF];
      v18[1] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      [v8 addObject:v14];

      v9 = (v9 + 1);
      v10 += 4;
    }

    while (v9 <= self->_count);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

@end