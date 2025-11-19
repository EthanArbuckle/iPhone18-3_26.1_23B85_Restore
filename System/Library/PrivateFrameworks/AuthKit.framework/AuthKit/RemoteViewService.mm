@interface RemoteViewService
- (_TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService)init;
- (void)continueAuthenticationWithSurrogateID:(NSUUID *)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)presentAuthorizationWithContext:(AKAuthorizationPresentationContext *)a3 usingHost:(AKAuthorizationPresenterHostProtocol *)a4 completionHandler:(id)a5;
- (void)presentPrivateEmailWithContext:(AKPrivateEmailContext *)a3 usingHost:(AKPrivateEmailPresenterHostProtocol *)a4 completionHandler:(id)a5;
- (void)presentShieldWithContext:(AKProtoAccountShieldContext *)a3 completionHandler:(id)a4;
@end

@implementation RemoteViewService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for RemoteViewService();
  [(RemoteViewService *)&v4 dealloc];
}

- (void)continueAuthenticationWithSurrogateID:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029EFC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029EFD0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029EFD8, v15);
}

- (void)presentAuthorizationWithContext:(AKAuthorizationPresentationContext *)a3 usingHost:(AKAuthorizationPresenterHostProtocol *)a4 completionHandler:(id)a5
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029EF08;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029EF10;
  v17[5] = v16;
  v18 = a3;
  swift_unknownObjectRetain();
  v19 = self;
  sub_100244978(0, 0, v12, &unk_10029EF18, v17);
}

- (void)presentPrivateEmailWithContext:(AKPrivateEmailContext *)a3 usingHost:(AKPrivateEmailPresenterHostProtocol *)a4 completionHandler:(id)a5
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029EE40;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029EE48;
  v17[5] = v16;
  v18 = a3;
  swift_unknownObjectRetain();
  v19 = self;
  sub_100244978(0, 0, v12, &unk_10029EE50, v17);
}

- (void)presentShieldWithContext:(AKProtoAccountShieldContext *)a3 completionHandler:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029ED80;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029C6A0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

- (_TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end