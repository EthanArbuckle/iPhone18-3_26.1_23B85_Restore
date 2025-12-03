@interface ServerEvaluationStatusMapsSync
+ (_TtC4Maps30ServerEvaluationStatusMapsSync)shared;
- (_TtC4Maps30ServerEvaluationStatusMapsSync)init;
- (void)fetchARPStatusWithCompletion:(id)completion;
- (void)fetchRAPStatusWithCompletion:(id)completion;
- (void)setARPStatusWithIsBlocked:(BOOL)blocked isTrusted:(BOOL)trusted completion:(id)completion;
- (void)setRAPStatusWithIsBlocked:(BOOL)blocked isTrusted:(BOOL)trusted completion:(id)completion;
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

- (void)setARPStatusWithIsBlocked:(BOOL)blocked isTrusted:(BOOL)trusted completion:(id)completion
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(completion);
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
  *(v15 + 56) = blocked;
  *(v15 + 57) = trusted;
  selfCopy = self;
  sub_10020AAE4(0, 0, v11, &unk_101205CB0, v15);
}

- (void)fetchARPStatusWithCompletion:(id)completion
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  sub_10020AAE4(0, 0, v7, &unk_101205CA0, v11);
}

- (void)setRAPStatusWithIsBlocked:(BOOL)blocked isTrusted:(BOOL)trusted completion:(id)completion
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(completion);
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
  *(v15 + 56) = blocked;
  *(v15 + 57) = trusted;
  selfCopy = self;
  sub_10020AAE4(0, 0, v11, &unk_101205C90, v15);
}

- (void)fetchRAPStatusWithCompletion:(id)completion
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  sub_10020AAE4(0, 0, v7, &unk_101205C70, v11);
}

@end