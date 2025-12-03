@interface AnnotationViewController
- (UINavigationItem)navigationItem;
- (void)done:(id)done;
- (void)sidecarController:(id)controller sendOPACKObject:(id)object;
- (void)sidecarControllerCancelled:(id)cancelled;
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
  selfCopy = self;
  sub_100001774();
}

- (void)done:(id)done
{
  if (done)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1000060B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100002C3C();

  sub_100004650(v6);
}

- (void)sidecarController:(id)controller sendOPACKObject:(id)object
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000060B8();
  v7 = swift_unknownObjectRelease();
  sub_1000039A4(v7, v8);

  sub_10000431C(v8);
}

- (void)sidecarControllerCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_100003B34();
}

@end