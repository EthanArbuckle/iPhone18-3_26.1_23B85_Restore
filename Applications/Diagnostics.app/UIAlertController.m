@interface UIAlertController
- (void)scheduleModalPresentationWithPriority:(int64_t)a3 animated:(BOOL)a4 presentationCompletion:(id)a5;
- (void)showOnTopWithAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation UIAlertController

- (void)showOnTopWithAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100088AAC;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1000883C8(1, v4, v6, v7);

  sub_10003C52C(v6);
}

- (void)scheduleModalPresentationWithPriority:(int64_t)a3 animated:(BOOL)a4 presentationCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10012C0D8;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  sub_100126A54(a3, a4, v8, v9, 1);
  sub_10003C52C(v8);
}

@end