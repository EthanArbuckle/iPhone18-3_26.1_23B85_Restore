@interface PHCallTranslationController
- (BOOL)isTranslationStarted;
- (PHCallTranslationController)initWithContentLayoutGuide:(id)guide translationStateDidChange:(id)change;
- (_TtP13InCallService33CallTranslationControllerDelegate_)hostingDelegate;
- (void)hideCallTranslationButtonIfNeeded;
- (void)setHostingDelegate:(id)delegate;
- (void)showCallTranslationButtonIfNeeded:(id)needed buttonContainer:(id)container;
- (void)updateCall:(id)call;
@end

@implementation PHCallTranslationController

- (void)hideCallTranslationButtonIfNeeded
{
  selfCopy = self;
  sub_10001FBC8();
}

- (void)updateCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10001FD5C(call);
}

- (PHCallTranslationController)initWithContentLayoutGuide:(id)guide translationStateDidChange:(id)change
{
  v5 = _Block_copy(change);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  guideCopy = guide;
  return sub_1001FFB3C(guide, sub_10016D258, v6);
}

- (BOOL)isTranslationStarted
{
  selfCopy = self;
  v3 = sub_1001FFE84();

  return v3 & 1;
}

- (void)showCallTranslationButtonIfNeeded:(id)needed buttonContainer:(id)container
{
  neededCopy = needed;
  containerCopy = container;
  selfCopy = self;
  sub_1001FFED4(neededCopy, container);
}

- (_TtP13InCallService33CallTranslationControllerDelegate_)hostingDelegate
{
  v2 = sub_1002019EC();

  return v2;
}

- (void)setHostingDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100201A5C();
}

@end