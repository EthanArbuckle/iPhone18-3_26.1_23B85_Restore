@interface UIViewController
- (void)presentCard:(id)card completion:(id)completion;
@end

@implementation UIViewController

- (void)presentCard:(id)card completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10050240C;
  }

  else
  {
    v7 = 0;
  }

  cardCopy = card;
  selfCopy = self;
  sub_100502158(cardCopy, v6, v7);
  sub_10001835C(v6);
}

@end