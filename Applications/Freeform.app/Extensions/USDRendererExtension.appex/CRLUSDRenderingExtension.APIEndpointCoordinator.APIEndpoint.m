@interface CRLUSDRenderingExtension.APIEndpointCoordinator.APIEndpoint
- (void)didTeardownCoreRERendererForUUID:(id)a3;
- (void)getExtensionProcessIDWithResponse:(id)a3;
- (void)makeCoreRERendererProxyForUUID:(id)a3 delegateProxy:(id)a4 flags:(unint64_t)a5 response:(id)a6;
@end

@implementation CRLUSDRenderingExtension.APIEndpointCoordinator.APIEndpoint

- (void)getExtensionProcessIDWithResponse:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processIdentifier];

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)makeCoreRERendererProxyForUUID:(id)a3 delegateProxy:(id)a4 flags:(unint64_t)a5 response:(id)a6
{
  v10 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a6);
  v14 = sub_10008AB38();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = sub_10008AD08();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_10008ACE8();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  v19 = sub_10008ACD8();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = self;
  v20[5] = v14;
  v20[6] = v16;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = sub_1000802FC;
  v20[10] = v17;
  sub_10004BA04(0, 0, v12, &unk_1000AB120, v20);

  swift_unknownObjectRelease();
}

- (void)didTeardownCoreRERendererForUUID:(id)a3
{
  v3 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_10008AB38();
  v8 = v7;
  v9 = sub_10008AD08();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10008ACE8();

  v11 = sub_10008ACD8();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = v6;
  v12[6] = v8;

  sub_10004BD04(0, 0, v5, &unk_1000AB100, v12);
}

@end