@interface PHCallTranslationController
- (BOOL)isTranslationStarted;
- (PHCallTranslationController)initWithContentLayoutGuide:(id)a3 translationStateDidChange:(id)a4;
- (_TtP13InCallService33CallTranslationControllerDelegate_)hostingDelegate;
- (void)hideCallTranslationButtonIfNeeded;
- (void)setHostingDelegate:(id)a3;
- (void)showCallTranslationButtonIfNeeded:(id)a3 buttonContainer:(id)a4;
- (void)updateCall:(id)a3;
@end

@implementation PHCallTranslationController

- (void)hideCallTranslationButtonIfNeeded
{
  v2 = self;
  sub_10001FBC8();
}

- (void)updateCall:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001FD5C(a3);
}

- (PHCallTranslationController)initWithContentLayoutGuide:(id)a3 translationStateDidChange:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  return sub_1001FFB3C(a3, sub_10016D258, v6);
}

- (BOOL)isTranslationStarted
{
  v2 = self;
  v3 = sub_1001FFE84();

  return v3 & 1;
}

- (void)showCallTranslationButtonIfNeeded:(id)a3 buttonContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001FFED4(v6, a4);
}

- (_TtP13InCallService33CallTranslationControllerDelegate_)hostingDelegate
{
  v2 = sub_1002019EC();

  return v2;
}

- (void)setHostingDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100201A5C();
}

@end