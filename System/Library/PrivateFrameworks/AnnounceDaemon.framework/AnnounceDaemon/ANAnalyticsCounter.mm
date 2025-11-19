@interface ANAnalyticsCounter
- (ANAnalyticsCounter)init;
- (ANAnalyticsCounter)initWithHexCount:(unint64_t)a3;
- (id)payload:(id)a3 keyTwo:(id)a4;
- (void)append:(unint64_t)a3;
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

- (ANAnalyticsCounter)initWithHexCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ANAnalyticsCounter;
  result = [(ANAnalyticsCounter *)&v5 init];
  if (result)
  {
    result->_hexCount = a3;
    result->_count = a3 & 0xF;
  }

  return result;
}

- (void)append:(unint64_t)a3
{
  count = self->_count;
  if (count <= 9)
  {
    v4 = count + 1;
    self->_count = v4;
    v5 = 10;
    if (a3 < 0xA)
    {
      v5 = a3;
    }

    self->_hexCount |= v5 << (4 * v4);
  }
}

- (id)payload:(id)a3 keyTwo:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (self->_count)
  {
    v9 = 1;
    v10 = 4;
    do
    {
      v11 = self->_hexCount >> v10;
      v17[0] = v6;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      v17[1] = v7;
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