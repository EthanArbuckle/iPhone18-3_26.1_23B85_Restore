@interface IMBJITAppKitErrorViewController
- (_TtC8Business31IMBJITAppKitErrorViewController)initWithCoder:(id)coder;
- (_TtC8Business31IMBJITAppKitErrorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation IMBJITAppKitErrorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10007CA44();
}

- (_TtC8Business31IMBJITAppKitErrorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000AC06C();
    *&self->delegate[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = sub_1000AC02C();
  }

  else
  {
    *&self->delegate[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  v9 = [(IMBJITAppKitErrorViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC8Business31IMBJITAppKitErrorViewController)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  coderCopy = coder;
  v6 = [(IMBJITAppKitErrorViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end