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
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open animation:(id)animation completion:(id)completion;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open contentView:(id)view animation:(id)animation completion:(id)completion;
- (void)updateMiddleStateWithIsEmpty:(BOOL)empty;
@end

@implementation LayoutGuidesProvider

- (UILayoutGuide)callerDetailsLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001601E4();

  return v3;
}

- (UILayoutGuide)middleShelfLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160254();

  return v3;
}

- (UILayoutGuide)bottomShelfLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001602C4();

  return v3;
}

- (UILayoutGuide)posterLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160334();

  return v3;
}

- (UILayoutGuide)trailingPanelLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001603A4();

  return v3;
}

- (UILayoutGuide)photoPosterLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160414();

  return v3;
}

- (UILayoutGuide)monogramPosterLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160484();

  return v3;
}

- (UILayoutGuide)memojiPosterLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001604F4();

  return v3;
}

- (UILayoutGuide)sensitiveContentWarningCenteringLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160564();

  return v3;
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open
{
  selfCopy = self;
  sub_100160590();
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open animation:(id)animation completion:(id)completion
{
  v7 = _Block_copy(animation);
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  sub_100160624();
  sub_1000081F4(v9);
  sub_1000081F4(v7);
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open contentView:(id)view animation:(id)animation completion:(id)completion
{
  v9 = _Block_copy(animation);
  v10 = _Block_copy(completion);
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
  viewCopy = view;
  selfCopy = self;
  sub_100160788();
  sub_1000081F4(v11);
  sub_1000081F4(v9);
}

- (void)updateMiddleStateWithIsEmpty:(BOOL)empty
{
  selfCopy = self;
  sub_1001608F4(empty);
}

@end