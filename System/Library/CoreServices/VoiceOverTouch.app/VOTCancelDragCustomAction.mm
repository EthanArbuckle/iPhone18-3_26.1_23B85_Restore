@interface VOTCancelDragCustomAction
- (BOOL)isEqual:(id)equal;
- (BOOL)performWithContext:(id)context;
- (VOTCancelDragCustomAction)init;
- (unint64_t)hash;
@end

@implementation VOTCancelDragCustomAction

- (VOTCancelDragCustomAction)init
{
  v3.receiver = self;
  v3.super_class = VOTCancelDragCustomAction;
  return [(VOTCancelDragCustomAction *)&v3 init];
}

- (BOOL)performWithContext:(id)context
{
  contextCopy = context;
  dragSessionActive = [contextCopy dragSessionActive];
  if (dragSessionActive)
  {
    [contextCopy cancelDrag];
  }

  return dragSessionActive;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end