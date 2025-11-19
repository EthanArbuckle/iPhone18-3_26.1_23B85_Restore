@interface BANotificationData
- (BANotificationData)init;
- (BANotificationData)initWithNotificationContentID:(id)a3 notificationID:(id)a4 notificationType:(int64_t)a5 recoType:(int64_t)a6 goalType:(int64_t)a7 titleCode:(id)a8 title:(id)a9 messageCode:(id)a10 message:(id)a11;
@end

@implementation BANotificationData

- (BANotificationData)initWithNotificationContentID:(id)a3 notificationID:(id)a4 notificationType:(int64_t)a5 recoType:(int64_t)a6 goalType:(int64_t)a7 titleCode:(id)a8 title:(id)a9 messageCode:(id)a10 message:(id)a11
{
  if (a3)
  {
    v30 = sub_1E18C0();
  }

  else
  {
    v30 = 0;
  }

  v12 = a10;
  v29 = sub_1E1780();
  v14 = v13;
  if (a8)
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
  if (!a10)
  {
    v22 = 0;
    v23 = a11;
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_11:
    v25 = 0;
    v27 = 0;
    return BridgedNotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(v30, v29, v14, a5, a6, a7, v15, v17, v18, v20, v12, v22, v25, v27);
  }

  v12 = sub_1E1780();
  v22 = v21;
  v23 = a11;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_9:
  v24 = v23;
  v25 = sub_1E1780();
  v27 = v26;

  return BridgedNotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(v30, v29, v14, a5, a6, a7, v15, v17, v18, v20, v12, v22, v25, v27);
}

- (BANotificationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end