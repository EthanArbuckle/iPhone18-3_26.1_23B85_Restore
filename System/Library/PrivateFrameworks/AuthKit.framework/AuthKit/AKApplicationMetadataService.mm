@interface AKApplicationMetadataService
- (AKApplicationMetadataService)init;
- (AKApplicationMetadataService)initWithServiceController:(id)controller;
- (void)fetchAuthorizationHTMLResponseTemplateWithCompletion:(id)completion;
- (void)performFetchPrimaryApplicationInformationForClientBundleID:(NSString *)d completion:(id)completion;
@end

@implementation AKApplicationMetadataService

- (AKApplicationMetadataService)initWithServiceController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKApplicationMetadataService_serviceController) = controller;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(AKApplicationMetadataService *)&v7 init];
}

- (void)performFetchPrimaryApplicationInformationForClientBundleID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DA30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029DA38;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029DA40, v15);
}

- (void)fetchAuthorizationHTMLResponseTemplateWithCompletion:(id)completion
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029DA18;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

- (AKApplicationMetadataService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end