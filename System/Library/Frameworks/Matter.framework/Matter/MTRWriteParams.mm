@interface MTRWriteParams
- (MTRWriteParams)init;
- (MTRWriteParams)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRWriteParams

- (MTRWriteParams)init
{
  v6.receiver = self;
  v6.super_class = MTRWriteParams;
  v2 = [(MTRWriteParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    timedWriteTimeout = v2->_timedWriteTimeout;
    v2->_timedWriteTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWriteParams);
  v5 = [(MTRWriteParams *)self timedWriteTimeout];
  [(MTRWriteParams *)v4 setTimedWriteTimeout:v5];

  v6 = [(MTRWriteParams *)self dataVersion];
  [(MTRWriteParams *)v4 setDataVersion:v6];

  return v4;
}

- (MTRWriteParams)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTRWriteParams;
  v5 = [(MTRWriteParams *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sTimedWriteTimeoutKey"];
    [(MTRWriteParams *)v5 setTimedWriteTimeout:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sDataVersionKey"];
    [(MTRWriteParams *)v5 setDataVersion:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MTRWriteParams *)self timedWriteTimeout];

  if (v4)
  {
    v5 = [(MTRWriteParams *)self timedWriteTimeout];
    [v8 encodeObject:v5 forKey:@"sTimedWriteTimeoutKey"];
  }

  v6 = [(MTRWriteParams *)self dataVersion];

  if (v6)
  {
    v7 = [(MTRWriteParams *)self dataVersion];
    [v8 encodeObject:v7 forKey:@"sDataVersionKey"];
  }
}

@end