@interface IconBubbleViewController
- (CGSize)preferredContentSize;
- (_TtC14AppleAccountUI24IconBubbleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)AAUIMicaPlayerDidChangePlaybackTime:(id)a3;
- (void)loadView;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IconBubbleViewController

- (void)loadView
{
  MEMORY[0x1E69E5928](self);
  sub_1C55295F8();
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1C55296D4();
  MEMORY[0x1E69E5920](self);
}

- (CGSize)preferredContentSize
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1C5529F5C();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  v3 = v6;
  v4 = v7;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1C5529FF0(a3.width, a3.height);
  MEMORY[0x1E69E5920](self);
}

- (void)viewDidLayoutSubviews
{
  MEMORY[0x1E69E5928](self);
  sub_1C552A090();
  MEMORY[0x1E69E5920](self);
}

- (_TtC14AppleAccountUI24IconBubbleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](a3);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  sub_1C552D7B4(v5);
}

- (void)AAUIMicaPlayerDidChangePlaybackTime:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C552DA40(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end