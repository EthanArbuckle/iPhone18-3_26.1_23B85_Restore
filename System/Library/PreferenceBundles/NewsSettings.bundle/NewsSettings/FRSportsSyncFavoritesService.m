@interface FRSportsSyncFavoritesService
- (FRSportsSyncFavoritesService)init;
- (void)fetchSyncSettingWithCompletionHandler:(id)a3;
- (void)updateSyncSettingWithIsEnabled:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation FRSportsSyncFavoritesService

- (FRSportsSyncFavoritesService)init
{
  v3 = sub_A848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A838();
  (*(v4 + 8))(v7, v3);
  v8 = type metadata accessor for SportsSyncFavoritesService();
  v10.receiver = self;
  v10.super_class = v8;
  return [(FRSportsSyncFavoritesService *)&v10 init];
}

- (void)fetchSyncSettingWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_7D8C(&qword_14B50, &qword_C150) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_A998();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_C1B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_C1B8;
  v12[5] = v11;
  v13 = self;
  sub_8FFC(0, 0, v7, &unk_C1C0, v12);
}

- (void)updateSyncSettingWithIsEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_7D8C(&qword_14B50, &qword_C150) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_A998();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_C160;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_C170;
  v14[5] = v13;
  v15 = self;
  sub_8FFC(0, 0, v9, &unk_C180, v14);
}

@end