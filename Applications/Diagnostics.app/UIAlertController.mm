@interface UIAlertController
- (void)scheduleModalPresentationWithPriority:(int64_t)priority animated:(BOOL)animated presentationCompletion:(id)completion;
- (void)showOnTopWithAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation UIAlertController

- (void)showOnTopWithAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1000883C8(1, animatedCopy, v6, v7);

  sub_10003C52C(v6);
}

- (void)scheduleModalPresentationWithPriority:(int64_t)priority animated:(BOOL)animated presentationCompletion:(id)completion
{
  v8 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100126A54(priority, animated, v8, v9, 1);
  sub_10003C52C(v8);
}

@end