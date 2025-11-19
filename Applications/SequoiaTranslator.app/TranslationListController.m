@interface TranslationListController
- (_TtC17SequoiaTranslator25TranslationListController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TranslationListController

- (void)loadView
{
  v2 = self;
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1002A6234(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1002A63D8(a4, width, height);
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

- (_TtC17SequoiaTranslator25TranslationListController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1002AEDC8(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v4 = *&self->collectionView[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  *v3 = 0;
  v3[1] = 0;
  if (v4)
  {
    v5 = self;
    sub_1002A3CA0();
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002AF6EC(v4);
}

@end