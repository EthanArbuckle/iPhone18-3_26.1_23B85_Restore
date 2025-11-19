@interface PHContactWallpaperSensitiveBlurView
- (id)didTapRevealButton;
- (void)didTapButton;
- (void)setDidTapRevealButton:(id)a3;
@end

@implementation PHContactWallpaperSensitiveBlurView

- (id)didTapRevealButton
{
  v2 = sub_1001C0464();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10002E570;
    v6[3] = &unk_10035DEC8;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidTapRevealButton:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1001541E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1001C054C(v4, v5);
}

- (void)didTapButton
{
  v2 = self;
  sub_1001C11DC();
}

@end