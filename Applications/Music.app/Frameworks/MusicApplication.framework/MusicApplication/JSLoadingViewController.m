@interface JSLoadingViewController
- (_TtC16MusicApplication23JSLoadingViewController)initWithCoder:(id)a3;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JSLoadingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2609C8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_260B64();
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_262A00();
}

- (_TtC16MusicApplication23JSLoadingViewController)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_262AEC(v3);

  return v4;
}

@end