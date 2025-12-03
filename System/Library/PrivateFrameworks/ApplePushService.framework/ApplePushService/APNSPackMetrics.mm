@interface APNSPackMetrics
- (APNSPackMetrics)initWithDecoder:(id)decoder;
- (APNSPackMetrics)initWithEncoder:(id)encoder;
- (void)dealloc;
@end

@implementation APNSPackMetrics

- (APNSPackMetrics)initWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  v7.receiver = self;
  v7.super_class = APNSPackMetrics;
  v5 = [(APNSPackMetrics *)&v7 init];
  if (v5)
  {
    v5->_metrics = sub_10002F360([encoderCopy encoder]);
  }

  return v5;
}

- (APNSPackMetrics)initWithDecoder:(id)decoder
{
  decoderCopy = decoder;
  v7.receiver = self;
  v7.super_class = APNSPackMetrics;
  v5 = [(APNSPackMetrics *)&v7 init];
  if (v5)
  {
    v5->_metrics = sub_10002AB34([decoderCopy decoder]);
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