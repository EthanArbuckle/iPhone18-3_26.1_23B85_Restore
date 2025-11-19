@interface IMBJITAppKitErrorViewController
- (_TtC8Business31IMBJITAppKitErrorViewController)initWithCoder:(id)a3;
- (_TtC8Business31IMBJITAppKitErrorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation IMBJITAppKitErrorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10007CA44();
}

- (_TtC8Business31IMBJITAppKitErrorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000AC06C();
    *&self->delegate[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = sub_1000AC02C();
  }

  else
  {
    *&self->delegate[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  v9 = [(IMBJITAppKitErrorViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC8Business31IMBJITAppKitErrorViewController)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  v5 = a3;
  v6 = [(IMBJITAppKitErrorViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end