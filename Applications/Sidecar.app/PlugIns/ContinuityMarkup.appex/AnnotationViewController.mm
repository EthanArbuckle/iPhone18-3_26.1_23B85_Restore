@interface AnnotationViewController
- (UINavigationItem)navigationItem;
- (void)done:(id)a3;
- (void)sidecarController:(id)a3 sendOPACKObject:(id)a4;
- (void)sidecarControllerCancelled:(id)a3;
- (void)viewDidLoad;
@end

@implementation AnnotationViewController

- (UINavigationItem)navigationItem
{
  v2 = sub_10000163C();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100001774();
}

- (void)done:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1000060B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100002C3C();

  sub_100004650(v6);
}

- (void)sidecarController:(id)a3 sendOPACKObject:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1000060B8();
  v7 = swift_unknownObjectRelease();
  sub_1000039A4(v7, v8);

  sub_10000431C(v8);
}

- (void)sidecarControllerCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100003B34();
}

@end