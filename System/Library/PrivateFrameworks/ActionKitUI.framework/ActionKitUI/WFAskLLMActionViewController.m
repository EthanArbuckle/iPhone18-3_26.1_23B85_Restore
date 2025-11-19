@interface WFAskLLMActionViewController
- (CGSize)platterContentSize;
- (_TtC11ActionKitUI28WFAskLLMActionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissEmbeddedPlatterWithCompletion:(id)a3 interruptible:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WFAskLLMActionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_23E370840();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_23E3708FC(a3);
}

- (void)dismissEmbeddedPlatterWithCompletion:(id)a3 interruptible:(BOOL)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_23E3718F4(sub_23E372594, v7, a4);
}

- (CGSize)platterContentSize
{
  v2 = self;
  v3 = sub_23E371B60();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC11ActionKitUI28WFAskLLMActionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_23E3AA9D0();
  }

  v5 = a4;
  sub_23E371D78();
}

@end