@interface HKDataCollectorState
- (BOOL)isEqual:(id)equal;
- (HKDataCollectorState)init;
- (HKDataCollectorState)initWithCoder:(id)coder;
- (HKDataCollectorState)initWithType:(unint64_t)type priority:(int64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKDataCollectorState)initWithType:(unint64_t)type priority:(int64_t)priority
{
  v7.receiver = self;
  v7.super_class = HKDataCollectorState;
  result = [(HKDataCollectorState *)&v7 init];
  if (result)
  {
    result->_collectionType = type;
    result->_priority = priority;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKDataCollectorState allocWithZone:zone];
  collectionType = self->_collectionType;
  priority = self->_priority;

  return [(HKDataCollectorState *)v4 initWithType:collectionType priority:priority];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_priority == equalCopy[2] && self->_collectionType == equalCopy[1];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = HKDataCollectionTypeToString(self->_collectionType);
  v5 = [v3 stringWithFormat:@"<%@, priority %ld>", v4, self->_priority];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  priority = self->_priority;
  coderCopy = coder;
  [coderCopy encodeInteger:priority forKey:@"HKDataCollectorStatePriorityKey"];
  [coderCopy encodeInteger:self->_collectionType forKey:@"HKDataCollectorStateTypeKey"];
}

- (HKDataCollectorState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKDataCollectorState;
  v5 = [(HKDataCollectorState *)&v7 init];
  if (v5)
  {
    v5->_priority = [coderCopy decodeIntegerForKey:@"HKDataCollectorStatePriorityKey"];
    v5->_collectionType = [coderCopy decodeIntegerForKey:@"HKDataCollectorStateTypeKey"];
  }

  return v5;
}

@end