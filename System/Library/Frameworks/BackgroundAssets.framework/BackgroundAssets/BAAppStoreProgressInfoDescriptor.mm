@interface BAAppStoreProgressInfoDescriptor
- (BAAppStoreProgressInfoDescriptor)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BAAppStoreProgressInfoDescriptor

- (BAAppStoreProgressInfoDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BAAppStoreProgressInfoDescriptor;
  v5 = [(BAAppStoreProgressInfoDescriptor *)&v7 init];
  if (v5)
  {
    v5->_progressState = [coderCopy decodeIntegerForKey:@"_progressState"];
    v5->_countOfBytesReceived = [coderCopy decodeInt64ForKey:@"_countOfBytesReceived"];
    v5->_countOfBytesExpectedToReceive = [coderCopy decodeInt64ForKey:@"_countOfBytesExpectedToReceive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BAAppStoreProgressInfoDescriptor progressState](self forKey:{"progressState"), @"_progressState"}];
  [coderCopy encodeInt64:-[BAAppStoreProgressInfoDescriptor countOfBytesReceived](self forKey:{"countOfBytesReceived"), @"_countOfBytesReceived"}];
  [coderCopy encodeInt64:-[BAAppStoreProgressInfoDescriptor countOfBytesExpectedToReceive](self forKey:{"countOfBytesExpectedToReceive"), @"_countOfBytesExpectedToReceive"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(BAAppStoreProgressInfoDescriptor *)equalCopy progressState], v5 == [(BAAppStoreProgressInfoDescriptor *)self progressState]) && (v6 = [(BAAppStoreProgressInfoDescriptor *)equalCopy countOfBytesReceived], v6 == [(BAAppStoreProgressInfoDescriptor *)self countOfBytesReceived]))
    {
      countOfBytesExpectedToReceive = [(BAAppStoreProgressInfoDescriptor *)equalCopy countOfBytesExpectedToReceive];
      v8 = countOfBytesExpectedToReceive == [(BAAppStoreProgressInfoDescriptor *)self countOfBytesExpectedToReceive];
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
  progressState = [(BAAppStoreProgressInfoDescriptor *)self progressState];
  countOfBytesReceived = [(BAAppStoreProgressInfoDescriptor *)self countOfBytesReceived];
  return progressState + 16 * ([(BAAppStoreProgressInfoDescriptor *)self countOfBytesExpectedToReceive]+ countOfBytesReceived);
}

@end