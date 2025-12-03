@interface BANotificationEngagementData
- (BANotificationEngagementData)init;
- (BANotificationEngagementData)initWithActionType:(int64_t)type actionUrl:(id)url targetID:(id)d targetType:(int64_t)targetType;
@end

@implementation BANotificationEngagementData

- (BANotificationEngagementData)initWithActionType:(int64_t)type actionUrl:(id)url targetID:(id)d targetType:(int64_t)targetType
{
  v10 = sub_1E1780();
  v12 = v11;
  if (d)
  {
    v13 = sub_1E18C0();
  }

  else
  {
    v13 = 0;
  }

  *(&self->super.isa + OBJC_IVAR___BANotificationEngagementData_actionType) = type;
  v14 = (self + OBJC_IVAR___BANotificationEngagementData_actionUrl);
  *v14 = v10;
  v14[1] = v12;
  *(&self->super.isa + OBJC_IVAR___BANotificationEngagementData_targetID) = v13;
  *(&self->super.isa + OBJC_IVAR___BANotificationEngagementData_targetType) = targetType;
  v16.receiver = self;
  v16.super_class = type metadata accessor for BridgedNotificationEngagementData();
  return [(BANotificationEngagementData *)&v16 init];
}

- (BANotificationEngagementData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end