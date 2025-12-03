@interface RCUndoTarget
- (RCUndoTarget)initWithUndoTargetType:(int64_t)type;
@end

@implementation RCUndoTarget

- (RCUndoTarget)initWithUndoTargetType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = RCUndoTarget;
  result = [(RCUndoTarget *)&v5 init];
  if (result)
  {
    result->_targetType = type;
  }

  return result;
}

@end