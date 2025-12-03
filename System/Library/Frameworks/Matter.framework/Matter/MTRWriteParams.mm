@interface MTRWriteParams
- (MTRWriteParams)init;
- (MTRWriteParams)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWriteParams);
  timedWriteTimeout = [(MTRWriteParams *)self timedWriteTimeout];
  [(MTRWriteParams *)v4 setTimedWriteTimeout:timedWriteTimeout];

  dataVersion = [(MTRWriteParams *)self dataVersion];
  [(MTRWriteParams *)v4 setDataVersion:dataVersion];

  return v4;
}

- (MTRWriteParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MTRWriteParams;
  v5 = [(MTRWriteParams *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sTimedWriteTimeoutKey"];
    [(MTRWriteParams *)v5 setTimedWriteTimeout:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sDataVersionKey"];
    [(MTRWriteParams *)v5 setDataVersion:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timedWriteTimeout = [(MTRWriteParams *)self timedWriteTimeout];

  if (timedWriteTimeout)
  {
    timedWriteTimeout2 = [(MTRWriteParams *)self timedWriteTimeout];
    [coderCopy encodeObject:timedWriteTimeout2 forKey:@"sTimedWriteTimeoutKey"];
  }

  dataVersion = [(MTRWriteParams *)self dataVersion];

  if (dataVersion)
  {
    dataVersion2 = [(MTRWriteParams *)self dataVersion];
    [coderCopy encodeObject:dataVersion2 forKey:@"sDataVersionKey"];
  }
}

@end