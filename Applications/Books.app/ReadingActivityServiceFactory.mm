@interface ReadingActivityServiceFactory
- (void)deleteCloudDataWithCompletion:(id)completion;
@end

@implementation ReadingActivityServiceFactory

- (void)deleteCloudDataWithCompletion:(id)completion
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = _Block_copy(completion);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = sub_1005F8FF8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_1007985A4();

  sub_100798584();
  sub_100798624();
  sub_1007985C4();
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v9;
  sub_1000260E8(v10);
  sub_1003457A0(0, 0, v6, &unk_100838F00, v12);

  sub_100007020(v10);
}

@end