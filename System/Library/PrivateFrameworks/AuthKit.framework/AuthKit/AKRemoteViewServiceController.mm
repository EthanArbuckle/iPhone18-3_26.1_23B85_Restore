@interface AKRemoteViewServiceController
+ (BOOL)shouldUseFrontBoardServicesForAuthorization;
+ (void)setShouldUseFrontBoardServicesForAuthorization:(BOOL)a3;
- (AKRemoteViewServiceController)init;
- (AKRemoteViewServiceController)initWithConfiguration:(id)a3;
- (void)launchViewServiceForAuthorizationWithCompletionHandler:(id)a3;
- (void)launchViewServiceWithCompletionHandler:(id)a3;
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

+ (void)setShouldUseFrontBoardServicesForAuthorization:(BOOL)a3
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization = a3;
}

- (AKRemoteViewServiceController)initWithConfiguration:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___AKRemoteViewServiceController_configuration) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteViewServiceController();
  v4 = a3;
  return [(AKRemoteViewServiceController *)&v6 init];
}

- (void)launchViewServiceForAuthorizationWithCompletionHandler:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029F088, v13);
}

- (void)launchViewServiceWithCompletionHandler:(id)a3
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100244978(0, 0, v8, &unk_10029F068, v13);
}

- (AKRemoteViewServiceController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end