@interface iPadBackgroundFloatingViewsController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PHAudioCallLayoutGuidesProvider)layoutGuidesProvider;
- (UIView)backgroundContainer;
- (void)addToBackground:(id)background;
- (void)dismissFloatingView;
- (void)insertToBackground:(id)background;
- (void)setLayoutGuidesProvider:(id)provider;
- (void)showFloatingView:(id)view addWidthConstraints:(BOOL)constraints :(id)a5;
- (void)updateBackgroundFor:(int64_t)for;
- (void)updateIsLandscape:(BOOL)landscape;
- (void)updateWithContainerView:(id)view updateNameVisiblity:(id)visiblity updateButtonsVisibility:(id)visibility;
@end

@implementation iPadBackgroundFloatingViewsController

- (PHAudioCallLayoutGuidesProvider)layoutGuidesProvider
{
  v2 = sub_100190AF4();

  return v2;
}

- (void)setLayoutGuidesProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_100190B60(provider);
}

- (void)updateWithContainerView:(id)view updateNameVisiblity:(id)visiblity updateButtonsVisibility:(id)visibility
{
  v8 = _Block_copy(visiblity);
  v9 = _Block_copy(visibility);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  viewCopy = view;
  selfCopy = self;
  sub_100190BF4(viewCopy, sub_10016D258, v10, sub_10016D3D8, v11);
}

- (void)updateIsLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  selfCopy = self;
  sub_100190D8C(landscapeCopy);
}

- (void)showFloatingView:(id)view addWidthConstraints:(BOOL)constraints :(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  viewCopy = view;
  selfCopy = self;
  sub_100190F34(viewCopy, constraints, sub_1001541E8, v9);
}

- (void)dismissFloatingView
{
  selfCopy = self;
  sub_1001918D8();
}

- (UIView)backgroundContainer
{
  v2 = sub_1001920E8();

  return v2;
}

- (void)addToBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1001920F8(backgroundCopy);
}

- (void)insertToBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10019217C(backgroundCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_100192204(beginCopy);

  return self & 1;
}

- (void)updateBackgroundFor:(int64_t)for
{
  selfCopy = self;
  sub_1001922F0();
}

@end