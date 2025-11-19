@interface LayoutGuidesProvider
- (UILayoutGuide)bottomShelfLayoutGuide;
- (UILayoutGuide)callerDetailsLayoutGuide;
- (UILayoutGuide)memojiPosterLayoutGuide;
- (UILayoutGuide)middleShelfLayoutGuide;
- (UILayoutGuide)monogramPosterLayoutGuide;
- (UILayoutGuide)photoPosterLayoutGuide;
- (UILayoutGuide)posterLayoutGuide;
- (UILayoutGuide)sensitiveContentWarningCenteringLayoutGuide;
- (UILayoutGuide)trailingPanelLayoutGuide;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)a3;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)a3 animation:(id)a4 completion:(id)a5;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)a3 contentView:(id)a4 animation:(id)a5 completion:(id)a6;
- (void)updateMiddleStateWithIsEmpty:(BOOL)a3;
@end

@implementation LayoutGuidesProvider

- (UILayoutGuide)callerDetailsLayoutGuide
{
  v2 = self;
  v3 = sub_1001601E4();

  return v3;
}

- (UILayoutGuide)middleShelfLayoutGuide
{
  v2 = self;
  v3 = sub_100160254();

  return v3;
}

- (UILayoutGuide)bottomShelfLayoutGuide
{
  v2 = self;
  v3 = sub_1001602C4();

  return v3;
}

- (UILayoutGuide)posterLayoutGuide
{
  v2 = self;
  v3 = sub_100160334();

  return v3;
}

- (UILayoutGuide)trailingPanelLayoutGuide
{
  v2 = self;
  v3 = sub_1001603A4();

  return v3;
}

- (UILayoutGuide)photoPosterLayoutGuide
{
  v2 = self;
  v3 = sub_100160414();

  return v3;
}

- (UILayoutGuide)monogramPosterLayoutGuide
{
  v2 = self;
  v3 = sub_100160484();

  return v3;
}

- (UILayoutGuide)memojiPosterLayoutGuide
{
  v2 = self;
  v3 = sub_1001604F4();

  return v3;
}

- (UILayoutGuide)sensitiveContentWarningCenteringLayoutGuide
{
  v2 = self;
  v3 = sub_100160564();

  return v3;
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)a3
{
  v3 = self;
  sub_100160590();
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)a3 animation:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = v8;
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1001621B8;
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (v8)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v9;
    v9 = sub_1001621B8;
  }

LABEL_5:
  v10 = self;
  sub_100160624();
  sub_1000081F4(v9);
  sub_1000081F4(v7);
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)a3 contentView:(id)a4 animation:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = v10;
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_1001621B8;
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (v10)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v11;
    v11 = sub_1001541E8;
  }

LABEL_5:
  v12 = a4;
  v13 = self;
  sub_100160788();
  sub_1000081F4(v11);
  sub_1000081F4(v9);
}

- (void)updateMiddleStateWithIsEmpty:(BOOL)a3
{
  v4 = self;
  sub_1001608F4(a3);
}

@end