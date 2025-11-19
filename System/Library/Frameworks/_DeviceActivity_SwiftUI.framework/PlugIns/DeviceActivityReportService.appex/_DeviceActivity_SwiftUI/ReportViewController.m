@interface ReportViewController
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (_TtC27DeviceActivityReportService20ReportViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didRefreshData:(id)a3;
- (void)discoverClientExtensionWithConfiguration:(id)a3 :(id)a4;
- (void)fetchActivitySegmentWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4 segmentInterval:(int64_t)a5 recordName:(id)a6 :(id)a7;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4;
- (void)updateClientConfiguration:(id)a3 :(id)a4;
- (void)viewDidLoad;
@end

@implementation ReportViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ReportViewController();
  v2 = v5.receiver;
  [(ReportViewController *)&v5 viewDidLoad];
  v3 = sub_100010580();
  sub_10000F704(v3);

  v4 = [objc_opt_self() defaultCenter];
  if (qword_1000291A8 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v2 selector:? name:? object:?];
}

- (void)didRefreshData:(id)a3
{
  v4 = sub_10001A644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A634();
  v9 = self;
  v10 = [(ReportViewController *)v9 viewIfLoaded];
  v11 = [v10 window];

  if (v11)
  {

    if (*(&v9->super.super.super.isa + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_isAuthorizedForLocalData) == 1)
    {
      sub_100010CC8();
    }
  }

  (*(v5 + 8))(v8, v4);
}

- (_TtC27DeviceActivityReportService20ReportViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10001AC24();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100011FD4(v5, v7, a4);
}

- (void)discoverClientExtensionWithConfiguration:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  v9 = sub_10001A744();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  isa = sub_10001A734().super.isa;
  v14 = swift_allocObject();
  v14[2] = sub_100017C00;
  v14[3] = v12;
  v14[4] = v8;
  v17[4] = sub_100017C48;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100011D80;
  v17[3] = &unk_100025670;
  v15 = _Block_copy(v17);
  v16 = v8;

  [(ReportViewController *)v16 updateClientConfiguration:isa];

  sub_10000BCD8(v9, v11);
  _Block_release(v15);
}

- (void)updateClientConfiguration:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_10001A744();
  v10 = v9;

  _Block_copy(v6);
  sub_1000154D0(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_10000BCD8(v8, v10);
}

- (void)fetchActivitySegmentWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4 segmentInterval:(int64_t)a5 recordName:(id)a6 :(id)a7
{
  v10 = _Block_copy(a7);
  if (a3)
  {
    v11 = sub_10001AC24();
    a3 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_10001AC24();
  v15 = v14;
  v16 = sub_10001AC24();
  v18 = v17;
  _Block_copy(v10);
  v19 = self;
  sub_100016ABC(v11, a3, v13, v15, a5, v16, v18, v19, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100013694(v4);

  return 1;
}

- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4
{
  v6 = sub_100001DFC(&qword_100029928, &unk_10001C198);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_10000FBC4(0, &qword_100029930, _EXExtensionIdentity_ptr);
  sub_10001AF14();
  v11 = a3;
  v12 = self;
  v13 = sub_100010580();
  sub_100013D60(v11, v13);

  (*(v7 + 8))(v10, v6);
}

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100014DAC(v4, v5);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC27DeviceActivityReportService20ReportViewController_reportExtensionConnectionQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = self;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100014790;
  *(v7 + 24) = v6;
  v10[4] = sub_100014794;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100011FAC;
  v10[3] = &unk_1000251C0;
  v8 = _Block_copy(v10);
  v9 = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

@end