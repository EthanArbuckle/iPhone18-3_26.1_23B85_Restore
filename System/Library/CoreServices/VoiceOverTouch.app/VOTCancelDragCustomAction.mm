@interface VOTCancelDragCustomAction
- (BOOL)isEqual:(id)a3;
- (BOOL)performWithContext:(id)a3;
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

- (BOOL)performWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 dragSessionActive];
  if (v4)
  {
    [v3 cancelDrag];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end