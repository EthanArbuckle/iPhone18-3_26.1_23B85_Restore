@interface AKAccountsMetadataController
- (AKAccountsMetadataController)init;
- (AKAccountsMetadataController)initWithMediaServiceController:(id)a3 localStorageController:(id)a4 metadataService:(id)a5;
- (void)cancelAppIconRequestForClientID:(NSString *)a3 completionHandler:(id)a4;
- (void)fetchAppIconForClientID:(NSString *)a3 iconSize:(CGSize)a4 completionHandler:(id)a5;
- (void)updatePrimaryAppsMetadataWithDeveloperTeams:(NSArray *)a3 forAltDSID:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation AKAccountsMetadataController

- (AKAccountsMetadataController)initWithMediaServiceController:(id)a3 localStorageController:(id)a4 metadataService:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAccountsMetadataController_localStorageController) = a4;
  *(&self->super.isa + OBJC_IVAR___AKAccountsMetadataController_metadataService) = a5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccountsMetadataController();
  v6 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AKAccountsMetadataController *)&v8 init];
}

- (void)fetchAppIconForClientID:(NSString *)a3 iconSize:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  v15[3] = width;
  v15[4] = height;
  *(v15 + 5) = v14;
  *(v15 + 6) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029F618;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10029F620;
  v18[5] = v17;
  v19 = a3;
  v20 = self;
  sub_100244978(0, 0, v13, &unk_10029F628, v18);
}

- (void)cancelAppIconRequestForClientID:(NSString *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_10029F5F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F600;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029F608, v15);
}

- (void)updatePrimaryAppsMetadataWithDeveloperTeams:(NSArray *)a3 forAltDSID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
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
  v16[4] = &unk_10029F5E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029C6A0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100244978(0, 0, v12, &unk_10029CEE0, v17);
}

- (AKAccountsMetadataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end