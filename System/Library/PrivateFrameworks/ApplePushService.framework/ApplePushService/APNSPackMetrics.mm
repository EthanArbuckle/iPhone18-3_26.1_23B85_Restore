@interface APNSPackMetrics
- (APNSPackMetrics)initWithDecoder:(id)a3;
- (APNSPackMetrics)initWithEncoder:(id)a3;
- (void)dealloc;
@end

@implementation APNSPackMetrics

- (APNSPackMetrics)initWithEncoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = APNSPackMetrics;
  v5 = [(APNSPackMetrics *)&v7 init];
  if (v5)
  {
    v5->_metrics = sub_10002F360([v4 encoder]);
  }

  return v5;
}

- (APNSPackMetrics)initWithDecoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = APNSPackMetrics;
  v5 = [(APNSPackMetrics *)&v7 init];
  if (v5)
  {
    v5->_metrics = sub_10002AB34([v4 decoder]);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_metrics)
  {
    operator delete();
  }

  v2.receiver = self;
  v2.super_class = APNSPackMetrics;
  [(APNSPackMetrics *)&v2 dealloc];
}

@end