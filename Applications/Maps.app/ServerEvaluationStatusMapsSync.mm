@interface ServerEvaluationStatusMapsSync
+ (_TtC4Maps30ServerEvaluationStatusMapsSync)shared;
- (_TtC4Maps30ServerEvaluationStatusMapsSync)init;
- (void)fetchARPStatusWithCompletion:(id)a3;
- (void)fetchRAPStatusWithCompletion:(id)a3;
- (void)setARPStatusWithIsBlocked:(BOOL)a3 isTrusted:(BOOL)a4 completion:(id)a5;
- (void)setRAPStatusWithIsBlocked:(BOOL)a3 isTrusted:(BOOL)a4 completion:(id)a5;
@end

@implementation ServerEvaluationStatusMapsSync

+ (_TtC4Maps30ServerEvaluationStatusMapsSync)shared
{
  if (qword_101906830 != -1)
  {
    swift_once();
  }

  v3 = qword_101960288;

  return v3;
}

- (_TtC4Maps30ServerEvaluationStatusMapsSync)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServerEvaluationStatusMapsSync();
  return [(ServerEvaluationStatusMapsSync *)&v3 init];
}

- (void)setARPStatusWithIsBlocked:(BOOL)a3 isTrusted:(BOOL)a4 completion:(id)a5
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(a5);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_10041A668;
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  *(v15 + 56) = a3;
  *(v15 + 57) = a4;
  v16 = self;
  sub_10020AAE4(0, 0, v11, &unk_101205CB0, v15);
}

- (void)fetchARPStatusWithCompletion:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10041A660;
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v9;
  v12 = self;
  sub_10020AAE4(0, 0, v7, &unk_101205CA0, v11);
}

- (void)setRAPStatusWithIsBlocked:(BOOL)a3 isTrusted:(BOOL)a4 completion:(id)a5
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(a5);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_100115C80;
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = self;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  *(v15 + 56) = a3;
  *(v15 + 57) = a4;
  v16 = self;
  sub_10020AAE4(0, 0, v11, &unk_101205C90, v15);
}

- (void)fetchRAPStatusWithCompletion:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1004197CC;
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v9;
  v12 = self;
  sub_10020AAE4(0, 0, v7, &unk_101205C70, v11);
}

@end