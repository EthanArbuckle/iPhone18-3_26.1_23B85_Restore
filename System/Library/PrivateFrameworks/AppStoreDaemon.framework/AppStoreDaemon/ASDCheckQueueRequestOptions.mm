@interface ASDCheckQueueRequestOptions
- (ASDCheckQueueRequestOptions)initWithCoder:(id)a3;
- (ASDCheckQueueRequestOptions)initWithReason:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDCheckQueueRequestOptions

- (ASDCheckQueueRequestOptions)initWithReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ASDCheckQueueRequestOptions;
  result = [(ASDCheckQueueRequestOptions *)&v5 init];
  if (result)
  {
    result->_reason = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[ASDCheckQueueRequestOptions allocWithZone:?]];
  *(result + 1) = self->_reason;
  return result;
}

- (ASDCheckQueueRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDCheckQueueRequestOptions;
  v5 = [(ASDRequestOptions *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reasonKey"];
    v5->_reason = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  reason = self->_reason;
  v5 = a3;
  v6 = [v3 numberWithInteger:reason];
  [v5 encodeObject:v6 forKey:@"reasonKey"];
}

@end