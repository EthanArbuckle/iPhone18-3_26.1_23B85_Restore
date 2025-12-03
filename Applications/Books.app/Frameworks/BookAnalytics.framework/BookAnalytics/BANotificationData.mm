@interface BANotificationData
- (BANotificationData)init;
- (BANotificationData)initWithNotificationContentID:(id)d notificationID:(id)iD notificationType:(int64_t)type recoType:(int64_t)recoType goalType:(int64_t)goalType titleCode:(id)code title:(id)title messageCode:(id)self0 message:(id)self1;
@end

@implementation BANotificationData

- (BANotificationData)initWithNotificationContentID:(id)d notificationID:(id)iD notificationType:(int64_t)type recoType:(int64_t)recoType goalType:(int64_t)goalType titleCode:(id)code title:(id)title messageCode:(id)self0 message:(id)self1
{
  if (d)
  {
    v30 = sub_1E18C0();
  }

  else
  {
    v30 = 0;
  }

  messageCodeCopy = messageCode;
  v29 = sub_1E1780();
  v14 = v13;
  if (code)
  {
    v15 = sub_1E1780();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = sub_1E1780();
  v20 = v19;
  if (!messageCode)
  {
    v22 = 0;
    messageCopy2 = message;
    if (messageCopy2)
    {
      goto LABEL_9;
    }

LABEL_11:
    v25 = 0;
    v27 = 0;
    return BridgedNotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(v30, v29, v14, type, recoType, goalType, v15, v17, v18, v20, messageCodeCopy, v22, v25, v27);
  }

  messageCodeCopy = sub_1E1780();
  v22 = v21;
  messageCopy2 = message;
  if (!messageCopy2)
  {
    goto LABEL_11;
  }

LABEL_9:
  v24 = messageCopy2;
  v25 = sub_1E1780();
  v27 = v26;

  return BridgedNotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(v30, v29, v14, type, recoType, goalType, v15, v17, v18, v20, messageCodeCopy, v22, v25, v27);
}

- (BANotificationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end