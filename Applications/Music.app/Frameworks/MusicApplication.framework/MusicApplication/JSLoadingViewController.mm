@interface JSLoadingViewController
- (_TtC16MusicApplication23JSLoadingViewController)initWithCoder:(id)coder;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSLoadingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2609C8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_260B64();
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  selfCopy = self;
  sub_262A00();
}

- (_TtC16MusicApplication23JSLoadingViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_262AEC(coderCopy);

  return v4;
}

@end