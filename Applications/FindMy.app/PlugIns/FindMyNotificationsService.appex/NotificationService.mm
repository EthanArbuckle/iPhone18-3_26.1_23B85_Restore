@interface NotificationService
- (_TtC26FindMyNotificationsService19NotificationService)init;
- (void)dealloc;
- (void)didReceiveNotificationRequest:(id)request withContentHandler:(id)handler;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation NotificationService

- (void)didReceiveNotificationRequest:(id)request withContentHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_10001182C(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)serviceExtensionTimeWillExpire
{
  selfCopy = self;
  sub_100010988();
}

- (void)dealloc
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
  swift_beginAccess();
  selfCopy = self;
  sub_100010E64(v6, self + v3);
  swift_endAccess();
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for NotificationService();
  [(NotificationService *)&v5 dealloc];
}

- (_TtC26FindMyNotificationsService19NotificationService)init
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
  v5 = type metadata accessor for NotificationService();
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(NotificationService *)&v7 init];
}

@end