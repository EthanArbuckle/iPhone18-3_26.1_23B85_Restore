@interface TranslationListController
- (_TtC17SequoiaTranslator25TranslationListController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TranslationListController

- (void)loadView
{
  selfCopy = self;
  sub_1002A6088();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranslationListController();
  v2 = v3.receiver;
  [(TranslationListController *)&v3 viewDidLoad];
  sub_1002A7C00();
  sub_1002A8F4C(1);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002A6234(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002A63D8(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranslationListController();
  v2 = v3.receiver;
  [(TranslationListController *)&v3 viewDidLayoutSubviews];
  sub_1002A6A70();
}

- (_TtC17SequoiaTranslator25TranslationListController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002AEDC8(controllerCopy, style, coordinator);

  swift_unknownObjectRelease();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v4 = *&self->collectionView[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  *v3 = 0;
  v3[1] = 0;
  if (v4)
  {
    selfCopy = self;
    sub_1002A3CA0();
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1002AF6EC(dismissCopy);
}

@end