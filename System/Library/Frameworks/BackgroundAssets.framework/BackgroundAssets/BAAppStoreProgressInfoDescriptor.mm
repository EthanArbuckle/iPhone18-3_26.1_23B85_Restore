@interface BAAppStoreProgressInfoDescriptor
- (BAAppStoreProgressInfoDescriptor)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAAppStoreProgressInfoDescriptor

- (BAAppStoreProgressInfoDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BAAppStoreProgressInfoDescriptor;
  v5 = [(BAAppStoreProgressInfoDescriptor *)&v7 init];
  if (v5)
  {
    v5->_progressState = [v4 decodeIntegerForKey:@"_progressState"];
    v5->_countOfBytesReceived = [v4 decodeInt64ForKey:@"_countOfBytesReceived"];
    v5->_countOfBytesExpectedToReceive = [v4 decodeInt64ForKey:@"_countOfBytesExpectedToReceive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BAAppStoreProgressInfoDescriptor progressState](self forKey:{"progressState"), @"_progressState"}];
  [v4 encodeInt64:-[BAAppStoreProgressInfoDescriptor countOfBytesReceived](self forKey:{"countOfBytesReceived"), @"_countOfBytesReceived"}];
  [v4 encodeInt64:-[BAAppStoreProgressInfoDescriptor countOfBytesExpectedToReceive](self forKey:{"countOfBytesExpectedToReceive"), @"_countOfBytesExpectedToReceive"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(BAAppStoreProgressInfoDescriptor *)v4 progressState], v5 == [(BAAppStoreProgressInfoDescriptor *)self progressState]) && (v6 = [(BAAppStoreProgressInfoDescriptor *)v4 countOfBytesReceived], v6 == [(BAAppStoreProgressInfoDescriptor *)self countOfBytesReceived]))
    {
      v7 = [(BAAppStoreProgressInfoDescriptor *)v4 countOfBytesExpectedToReceive];
      v8 = v7 == [(BAAppStoreProgressInfoDescriptor *)self countOfBytesExpectedToReceive];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(BAAppStoreProgressInfoDescriptor *)self progressState];
  v4 = [(BAAppStoreProgressInfoDescriptor *)self countOfBytesReceived];
  return v3 + 16 * ([(BAAppStoreProgressInfoDescriptor *)self countOfBytesExpectedToReceive]+ v4);
}

@end