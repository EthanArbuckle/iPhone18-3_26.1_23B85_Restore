@interface DeviceEnrollmentViewController
- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithCoder:(id)coder;
- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)showConfirmationWithButtons:(NSArray *)buttons title:(NSString *)title message:(NSString *)message destructive:(BOOL)destructive completion:(id)completion;
@end

@implementation DeviceEnrollmentViewController

- (void)showConfirmationWithButtons:(NSArray *)buttons title:(NSString *)title message:(NSString *)message destructive:(BOOL)destructive completion:(id)completion
{
  v13 = (*(*(sub_4AB4(&qword_1C960, &qword_12DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = buttons;
  *(v17 + 24) = title;
  *(v17 + 32) = message;
  *(v17 + 40) = destructive;
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
  buttonsCopy = buttons;
  titleCopy = title;
  messageCopy = message;
  selfCopy = self;
  sub_75CC(0, 0, v15, &unk_12DF0, v20);
}

- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_12170();
    *&self->ACUIViewController_opaque[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = 0;
    bundleCopy = bundle;
    v7 = sub_12140();
  }

  else
  {
    *&self->ACUIViewController_opaque[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DeviceEnrollmentViewController();
  v9 = [(DeviceEnrollmentViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17DeviceEnrollments30DeviceEnrollmentViewController)initWithCoder:(id)coder
{
  *&self->ACUIViewController_opaque[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeviceEnrollmentViewController();
  coderCopy = coder;
  v5 = [(DeviceEnrollmentViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end