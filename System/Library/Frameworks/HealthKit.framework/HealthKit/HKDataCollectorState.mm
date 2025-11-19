@interface HKDataCollectorState
- (BOOL)isEqual:(id)a3;
- (HKDataCollectorState)init;
- (HKDataCollectorState)initWithCoder:(id)a3;
- (HKDataCollectorState)initWithType:(unint64_t)a3 priority:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDataCollectorState

- (HKDataCollectorState)init
{
  v3.receiver = self;
  v3.super_class = HKDataCollectorState;
  result = [(HKDataCollectorState *)&v3 init];
  if (result)
  {
    result->_collectionType = 0;
    result->_priority = 0;
  }

  return result;
}

- (HKDataCollectorState)initWithType:(unint64_t)a3 priority:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = HKDataCollectorState;
  result = [(HKDataCollectorState *)&v7 init];
  if (result)
  {
    result->_collectionType = a3;
    result->_priority = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKDataCollectorState allocWithZone:a3];
  collectionType = self->_collectionType;
  priority = self->_priority;

  return [(HKDataCollectorState *)v4 initWithType:collectionType priority:priority];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_priority == v4[2] && self->_collectionType == v4[1];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = HKDataCollectionTypeToString(self->_collectionType);
  v5 = [v3 stringWithFormat:@"<%@, priority %ld>", v4, self->_priority];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  priority = self->_priority;
  v5 = a3;
  [v5 encodeInteger:priority forKey:@"HKDataCollectorStatePriorityKey"];
  [v5 encodeInteger:self->_collectionType forKey:@"HKDataCollectorStateTypeKey"];
}

- (HKDataCollectorState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKDataCollectorState;
  v5 = [(HKDataCollectorState *)&v7 init];
  if (v5)
  {
    v5->_priority = [v4 decodeIntegerForKey:@"HKDataCollectorStatePriorityKey"];
    v5->_collectionType = [v4 decodeIntegerForKey:@"HKDataCollectorStateTypeKey"];
  }

  return v5;
}

@end