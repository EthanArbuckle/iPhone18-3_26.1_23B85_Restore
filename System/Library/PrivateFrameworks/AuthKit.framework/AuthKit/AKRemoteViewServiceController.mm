@interface AKRemoteViewServiceController
+ (BOOL)shouldUseFrontBoardServicesForAuthorization;
+ (void)setShouldUseFrontBoardServicesForAuthorization:(BOOL)authorization;
- (AKRemoteViewServiceController)init;
- (AKRemoteViewServiceController)initWithConfiguration:(id)configuration;
- (void)launchViewServiceForAuthorizationWithCompletionHandler:(id)handler;
- (void)launchViewServiceWithCompletionHandler:(id)handler;
@end

@implementation AKRemoteViewServiceController

+ (BOOL)shouldUseFrontBoardServicesForAuthorization
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization;
}

+ (void)setShouldUseFrontBoardServicesForAuthorization:(BOOL)authorization
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization = authorization;
}

- (AKRemoteViewServiceController)initWithConfiguration:(id)configuration
{
  *(&self->super.isa + OBJC_IVAR___AKRemoteViewServiceController_configuration) = configuration;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteViewServiceController();
  configurationCopy = configuration;
  return [(AKRemoteViewServiceController *)&v6 init];
}

- (void)launchViewServiceForAuthorizationWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F078;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F080;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029F088, v13);
}

- (void)launchViewServiceWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F058;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F060;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029F068, v13);
}

- (AKRemoteViewServiceController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end