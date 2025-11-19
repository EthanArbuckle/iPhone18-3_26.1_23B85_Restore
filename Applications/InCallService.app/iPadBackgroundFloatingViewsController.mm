@interface iPadBackgroundFloatingViewsController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (PHAudioCallLayoutGuidesProvider)layoutGuidesProvider;
- (UIView)backgroundContainer;
- (void)addToBackground:(id)a3;
- (void)dismissFloatingView;
- (void)insertToBackground:(id)a3;
- (void)setLayoutGuidesProvider:(id)a3;
- (void)showFloatingView:(id)a3 addWidthConstraints:(BOOL)a4 :(id)a5;
- (void)updateBackgroundFor:(int64_t)a3;
- (void)updateIsLandscape:(BOOL)a3;
- (void)updateWithContainerView:(id)a3 updateNameVisiblity:(id)a4 updateButtonsVisibility:(id)a5;
@end

@implementation iPadBackgroundFloatingViewsController

- (PHAudioCallLayoutGuidesProvider)layoutGuidesProvider
{
  v2 = sub_100190AF4();

  return v2;
}

- (void)setLayoutGuidesProvider:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100190B60(a3);
}

- (void)updateWithContainerView:(id)a3 updateNameVisiblity:(id)a4 updateButtonsVisibility:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a3;
  v13 = self;
  sub_100190BF4(v12, sub_10016D258, v10, sub_10016D3D8, v11);
}

- (void)updateIsLandscape:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_100190D8C(v3);
}

- (void)showFloatingView:(id)a3 addWidthConstraints:(BOOL)a4 :(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  sub_100190F34(v10, a4, sub_1001541E8, v9);
}

- (void)dismissFloatingView
{
  v2 = self;
  sub_1001918D8();
}

- (UIView)backgroundContainer
{
  v2 = sub_1001920E8();

  return v2;
}

- (void)addToBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001920F8(v4);
}

- (void)insertToBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10019217C(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100192204(v4);

  return self & 1;
}

- (void)updateBackgroundFor:(int64_t)a3
{
  v3 = self;
  sub_1001922F0();
}

@end