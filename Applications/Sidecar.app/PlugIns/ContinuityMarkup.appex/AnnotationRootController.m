@interface AnnotationRootController
- (AnnotationRootController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)receivedItems:(id)a3;
- (void)requestDidStart:(id)a3;
- (void)viewDidLoad;
@end

@implementation AnnotationRootController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000057A0();
}

- (void)requestDidStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005AF4(v4);
}

- (void)receivedItems:(id)a3
{
  sub_100005228(0, &qword_10000CA90, SidecarItem_ptr);
  v4 = sub_100006068();
  v5 = self;
  sub_100005B88(v4);
}

- (AnnotationRootController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100006038();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100005C30(v5, v7, a4);
}

@end