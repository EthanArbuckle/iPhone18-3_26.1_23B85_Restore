@interface ISO18013MobileDocumentRequestSceneViewModel
- (_TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel)init;
- (void)requestDocumentWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)request completionHandler:(id)handler;
@end

@implementation ISO18013MobileDocumentRequestSceneViewModel

- (void)requestDocumentWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_238A3B17C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_238A3BD08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_238A3BAF0;
  v15[5] = v14;
  requestCopy = request;
  selfCopy = self;
  sub_238A2C804(0, 0, v10, &unk_238A3BAF8, v15);
}

- (_TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel)init
{
  ObjectType = swift_getObjectType();
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  v5 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + v4, 1, 1, v5);
  *(&self->super.isa + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection) = 0;
  sub_238A3A98C();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(ISO18013MobileDocumentRequestSceneViewModel *)&v9 init];

  return v7;
}

@end