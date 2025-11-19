@interface ADAnalyticsFuzzingInterval
- (ADAnalyticsFuzzingInterval)initWithStartTime:(unint64_t)a3;
@end

@implementation ADAnalyticsFuzzingInterval

- (ADAnalyticsFuzzingInterval)initWithStartTime:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = ADAnalyticsFuzzingInterval;
  v4 = [(ADAnalyticsFuzzingInterval *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_startTime = a3;
    v6 = objc_alloc_init(NSUUID);
    v7 = [v6 UUIDString];
    streamUID = v5->_streamUID;
    v5->_streamUID = v7;

    LODWORD(v6) = arc4random_uniform(v9);
    v5->_offset = v6 - 2 * arc4random_uniform(2u) * v6;
  }

  return v5;
}

@end