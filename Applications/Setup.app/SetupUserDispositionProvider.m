@interface SetupUserDispositionProvider
- (_TtC5Setup28SetupUserDispositionProvider)init;
- (void)isNewUserWithDataTransferMethod:(unint64_t)a3 deviceClass:(NSString *)a4 serialNumber:(NSString *)a5 completionHandler:(id)a6;
@end

@implementation SetupUserDispositionProvider

- (void)isNewUserWithDataTransferMethod:(unint64_t)a3 deviceClass:(NSString *)a4 serialNumber:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100298A10;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100297310;
  v18[5] = v17;
  v19 = a4;
  v20 = a5;
  v21 = self;
  sub_100063A28(0, 0, v13, &unk_1002979A0, v18);
}

- (_TtC5Setup28SetupUserDispositionProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetupUserDispositionProvider();
  return [(SetupUserDispositionProvider *)&v3 init];
}

@end