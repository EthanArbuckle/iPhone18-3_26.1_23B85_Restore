@interface USLocationWrapper
+ (USLocationWrapper)shared;
- (void)loadLocationsWithCompletion:(id)a3;
- (void)setWithSelectedLocation:(id)a3;
@end

@implementation USLocationWrapper

+ (USLocationWrapper)shared
{
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v3 = qword_116A0;

  return v3;
}

- (void)loadLocationsWithCompletion:(id)a3
{
  v5 = (*(*(sub_49F4(&qword_11508, &qword_7340) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_61FC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_50BC;
  v11[6] = v9;
  v12 = self;
  sub_3AE8(0, 0, v7, &unk_7378, v11);
}

- (void)setWithSelectedLocation:(id)a3
{
  v5 = (*(*(sub_49F4(&qword_11508, &qword_7340) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = sub_61FC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = a3;
  v10 = a3;
  v11 = self;
  sub_3AE8(0, 0, v7, &unk_7350, v9);
}

@end