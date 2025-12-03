@interface AnnotationRootController
- (AnnotationRootController)initWithNibName:(id)name bundle:(id)bundle;
- (void)receivedItems:(id)items;
- (void)requestDidStart:(id)start;
- (void)viewDidLoad;
@end

@implementation AnnotationRootController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000057A0();
}

- (void)requestDidStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_100005AF4(startCopy);
}

- (void)receivedItems:(id)items
{
  sub_100005228(0, &qword_10000CA90, SidecarItem_ptr);
  v4 = sub_100006068();
  selfCopy = self;
  sub_100005B88(v4);
}

- (AnnotationRootController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100006038();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100005C30(v5, v7, bundle);
}

@end