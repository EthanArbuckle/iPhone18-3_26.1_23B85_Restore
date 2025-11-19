@interface RCUndoTarget
- (RCUndoTarget)initWithUndoTargetType:(int64_t)a3;
@end

@implementation RCUndoTarget

- (RCUndoTarget)initWithUndoTargetType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RCUndoTarget;
  result = [(RCUndoTarget *)&v5 init];
  if (result)
  {
    result->_targetType = a3;
  }

  return result;
}

@end