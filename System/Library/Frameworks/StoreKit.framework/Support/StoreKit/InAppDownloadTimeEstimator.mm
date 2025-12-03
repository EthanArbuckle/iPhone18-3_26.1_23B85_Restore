@interface InAppDownloadTimeEstimator
- (InAppDownloadTimeEstimator)initWithMaxValue:(unint64_t)value;
- (double)estimatedTimeRemaining;
- (void)_updateStatisticsFromSnapshots;
- (void)setCurrentValue:(unint64_t)value;
@end

@implementation InAppDownloadTimeEstimator

- (InAppDownloadTimeEstimator)initWithMaxValue:(unint64_t)value
{
  v12.receiver = self;
  v12.super_class = InAppDownloadTimeEstimator;
  v4 = [(InAppDownloadTimeEstimator *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.storekit.time", 0);
    dispatchQueue = v4->_dispatchQueue;
    v4->_dispatchQueue = v5;

    v4->_changeRate = -1.0;
    v4->_currentValue = 0;
    v4->_estimatedTimeRemaining = -1.0;
    v4->_maxValue = value;
    v7 = objc_opt_new();
    times = v4->_times;
    v4->_times = v7;

    v9 = objc_opt_new();
    values = v4->_values;
    v4->_values = v9;
  }

  return v4;
}

- (double)estimatedTimeRemaining
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xBFF0000000000000;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000045E4;
  v5[3] = &unk_10037F7D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCurrentValue:(unint64_t)value
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000466C;
  v4[3] = &unk_10037F7F8;
  v4[4] = self;
  v4[5] = value;
  dispatch_sync(dispatchQueue, v4);
}

- (void)_updateStatisticsFromSnapshots
{
  v3 = [(NSMutableArray *)self->_times count];
  v4 = -1.0;
  if (v3 < 6)
  {
    v18 = -1.0;
  }

  else
  {
    v5 = v3;
    v6 = 0.0;
    for (i = 1; i != v5; ++i)
    {
      v8 = [(NSMutableArray *)self->_times objectAtIndexedSubscript:i];
      [v8 doubleValue];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_times objectAtIndexedSubscript:i - 1];
      [v11 doubleValue];
      v13 = v10 - v12;

      v14 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:i];
      longLongValue = [v14 longLongValue];
      v16 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:i - 1];
      v17 = longLongValue - [v16 longLongValue];

      v6 = v6 + v17 / v13;
    }

    v18 = v6 / v5;
    if (v18 > 0.00000011920929)
    {
      v19 = self->_maxValue - self->_currentValue;
      if ((v19 & 0x8000000000000000) == 0)
      {
        v4 = v19 / v18;
      }
    }
  }

  self->_changeRate = v18;
  self->_estimatedTimeRemaining = v4;
}

@end