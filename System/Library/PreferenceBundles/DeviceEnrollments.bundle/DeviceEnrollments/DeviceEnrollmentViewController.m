@interface DeviceEnrollmentViewController
- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithCoder:(id)a3;
- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)showConfirmationWithButtons:(NSArray *)a3 title:(NSString *)a4 message:(NSString *)a5 destructive:(BOOL)a6 completion:(id)a7;
@end

@implementation DeviceEnrollmentViewController

- (void)showConfirmationWithButtons:(NSArray *)a3 title:(NSString *)a4 message:(NSString *)a5 destructive:(BOOL)a6 completion:(id)a7
{
  v13 = (*(*(sub_4AB4(&qword_1C960, &qword_12DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_12230();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_12DD0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_12DE0;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = self;
  sub_75CC(0, 0, v15, &unk_12DF0, v20);
}

- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_12170();
    *&self->ACUIViewController_opaque[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = 0;
    v6 = a4;
    v7 = sub_12140();
  }

  else
  {
    *&self->ACUIViewController_opaque[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DeviceEnrollmentViewController();
  v9 = [(DeviceEnrollmentViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithCoder:(id)a3
{
  *&self->ACUIViewController_opaque[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeviceEnrollmentViewController();
  v4 = a3;
  v5 = [(DeviceEnrollmentViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end