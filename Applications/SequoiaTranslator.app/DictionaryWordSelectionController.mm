@interface DictionaryWordSelectionController
- (_TtC17SequoiaTranslator33DictionaryWordSelectionController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DictionaryWordSelectionController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DictionaryWordSelectionController();
  v2 = v3.receiver;
  [(DictionaryWordSelectionController *)&v3 viewDidLoad];
  sub_1000E3498();
  sub_1000E3810();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_1000E4C84();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000E299C(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000E3FF0(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC17SequoiaTranslator33DictionaryWordSelectionController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end