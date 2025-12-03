@interface WFAskLLMActionViewController
- (CGSize)platterContentSize;
- (_TtC11ActionKitUI28WFAskLLMActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissEmbeddedPlatterWithCompletion:(id)completion interruptible:(BOOL)interruptible;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WFAskLLMActionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23E370840();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23E3708FC(appear);
}

- (void)dismissEmbeddedPlatterWithCompletion:(id)completion interruptible:(BOOL)interruptible
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_23E3718F4(sub_23E372594, v7, interruptible);
}

- (CGSize)platterContentSize
{
  selfCopy = self;
  v3 = sub_23E371B60();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC11ActionKitUI28WFAskLLMActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_23E3AA9D0();
  }

  bundleCopy = bundle;
  sub_23E371D78();
}

@end