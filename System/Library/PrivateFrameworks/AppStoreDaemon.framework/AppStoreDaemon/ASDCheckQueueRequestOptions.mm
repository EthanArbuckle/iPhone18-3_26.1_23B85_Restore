@interface ASDCheckQueueRequestOptions
- (ASDCheckQueueRequestOptions)initWithCoder:(id)coder;
- (ASDCheckQueueRequestOptions)initWithReason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDCheckQueueRequestOptions

- (ASDCheckQueueRequestOptions)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = ASDCheckQueueRequestOptions;
  result = [(ASDCheckQueueRequestOptions *)&v5 init];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[ASDCheckQueueRequestOptions allocWithZone:?]];
  *(result + 1) = self->_reason;
  return result;
}

- (ASDCheckQueueRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ASDCheckQueueRequestOptions;
  v5 = [(ASDRequestOptions *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reasonKey"];
    v5->_reason = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  reason = self->_reason;
  coderCopy = coder;
  v6 = [v3 numberWithInteger:reason];
  [coderCopy encodeObject:v6 forKey:@"reasonKey"];
}

@end