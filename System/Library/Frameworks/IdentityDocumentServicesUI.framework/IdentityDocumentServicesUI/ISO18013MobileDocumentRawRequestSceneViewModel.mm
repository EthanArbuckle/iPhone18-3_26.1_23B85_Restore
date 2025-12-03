@interface ISO18013MobileDocumentRawRequestSceneViewModel
- (_TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel)init;
- (void)requestDocumentWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)request completionHandler:(id)handler;
@end

@implementation ISO18013MobileDocumentRawRequestSceneViewModel

- (void)requestDocumentWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)request completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_238A3B17C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_238A3BC18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_238A3BAF0;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_238A2C804(0, 0, v9, &unk_238A3BAF8, v14);
}

- (_TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel)init
{
  ObjectType = swift_getObjectType();
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  v5 = type metadata accessor for ISO18013MobileDocumentRawRequestContext();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + v4, 1, 1, v5);
  *(&self->super.isa + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection) = 0;
  sub_238A3A98C();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(ISO18013MobileDocumentRawRequestSceneViewModel *)&v9 init];

  return v7;
}

@end