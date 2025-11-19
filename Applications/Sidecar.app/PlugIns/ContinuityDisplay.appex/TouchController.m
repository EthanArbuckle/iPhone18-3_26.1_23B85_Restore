@interface TouchController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
@end

@implementation TouchController

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10003C42C(v8, v7);

  return v9 & 1;
}

@end