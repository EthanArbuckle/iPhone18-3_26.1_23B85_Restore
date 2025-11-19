@interface ACCStatInfoAccumulator
- (ACCStatInfoAccumulator)init;
- (ACCStatInfoAccumulator)initWithName:(id)a3;
- (ACCStatInfoAccumulator)initWithName:(id)a3 initValue:(unint64_t)a4;
- (double)timeIntervalSinceLastUpdate;
- (double)timeIntervalSinceStart;
- (id)description;
- (void)add:(unint64_t)a3;
- (void)reset;
- (void)set:(id)a3;
@end

@implementation ACCStatInfoAccumulator

- (ACCStatInfoAccumulator)init
{
  v6.receiver = self;
  v6.super_class = ACCStatInfoAccumulator;
  v2 = [(ACCStatInfoAccumulator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    [(ACCStatInfoAccumulator *)v3 reset];
  }

  return v3;
}

- (ACCStatInfoAccumulator)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACCStatInfoAccumulator;
  v6 = [(ACCStatInfoAccumulator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    [(ACCStatInfoAccumulator *)v7 reset];
  }

  return v7;
}

- (ACCStatInfoAccumulator)initWithName:(id)a3 initValue:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ACCStatInfoAccumulator;
  v8 = [(ACCStatInfoAccumulator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    [(ACCStatInfoAccumulator *)v9 reset];
    [(ACCStatInfoAccumulator *)v9 add:a4];
  }

  return v9;
}

- (id)description
{
  name = &stru_2848EA190;
  if (self->_name)
  {
    name = self->_name;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"[ACCStatInfoAccumulator:%@ start %llu, max %llu, last %llu, accum %llu, count %llu, average %llu, startTime=%@, lastUpdateTime=%@]", name, self->_start, self->_max, self->_last, self->_accum, self->_count, self->_average, self->_startTime, self->_lastUpdateTime];
}

- (void)reset
{
  v3 = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = v3;

  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = 0;

  *&self->_last = 0u;
  *&self->_count = 0u;
  *&self->_start = 0u;
}

- (void)add:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = v5;

  self->_last = a3;
  count = self->_count;
  if (!count)
  {
    self->_start = a3;
  }

  if (self->_max < a3)
  {
    self->_max = a3;
  }

  v8 = self->_accum + a3;
  v9 = count + 1;
  self->_accum = v8;
  self->_count = v9;
  self->_average = v8 / v9;
}

- (void)set:(id)a3
{
  v4 = a3;
  v5 = [v4 startTime];
  startTime = self->_startTime;
  self->_startTime = v5;

  v7 = [v4 lastUpdateTime];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = v7;

  self->_start = [v4 start];
  self->_max = [v4 max];
  self->_last = [v4 last];
  self->_accum = [v4 accum];
  self->_count = [v4 count];
  v9 = [v4 average];

  self->_average = v9;
}

- (double)timeIntervalSinceStart
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_startTime];
  v5 = v4;

  return v5;
}

- (double)timeIntervalSinceLastUpdate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_lastUpdateTime];
  v5 = v4;

  return v5;
}

@end