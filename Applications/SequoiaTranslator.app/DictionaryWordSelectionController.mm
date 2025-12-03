@interface DictionaryWordSelectionController
- (_TtC17SequoiaTranslator33DictionaryWordSelectionController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000E4C84();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000E299C(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000E3FF0(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC17SequoiaTranslator33DictionaryWordSelectionController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end