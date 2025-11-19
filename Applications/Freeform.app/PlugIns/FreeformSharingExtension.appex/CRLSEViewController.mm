@interface CRLSEViewController
- (_TtC24FreeformSharingExtension19CRLSEViewController)initWithCoder:(id)a3;
- (_TtC24FreeformSharingExtension19CRLSEViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CRLSEViewController

- (_TtC24FreeformSharingExtension19CRLSEViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_10007E444();
    v6 = a4;
    v7 = sub_10007E404();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for CRLSEViewController();
  v9 = [(CRLSEViewController *)&v15 initWithNibName:v7 bundle:a4];

  v10 = qword_1000B1C10;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlSharingExtension;
  v13 = sub_10007E614();
  sub_100069E88(v12, &_mh_execute_header, v13, "Sharing Extension view controller created", 41, 2, _swiftEmptyArrayStorage);

  return v11;
}

- (_TtC24FreeformSharingExtension19CRLSEViewController)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLSEViewController();
  v4 = a3;
  v5 = [(CRLSEViewController *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = qword_1000B1C10;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlSharingExtension;
    v10 = sub_10007E614();
    sub_100069E88(v9, &_mh_execute_header, v10, "Sharing Extension view controller created", 41, 2, _swiftEmptyArrayStorage);
  }

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000334E0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSEViewController();
  v4 = v7.receiver;
  [(CRLSEViewController *)&v7 viewWillAppear:v3];
  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.crlSharingExtension;
  v6 = sub_10007E614();
  sub_100069E88(v5, &_mh_execute_header, v6, "Sharing Extension view controller viewWillAppear", 48, 2, _swiftEmptyArrayStorage);
}

@end