@interface AIAudiogramSymbolsSelectionViewController
- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)title delegate:(id)delegate selectedSymbols:(id)symbols;
- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelTapped:(id)tapped;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)selectFrequencies:(id)frequencies;
- (void)viewDidLoad;
@end

@implementation AIAudiogramSymbolsSelectionViewController

- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)title delegate:(id)delegate selectedSymbols:(id)symbols
{
  v6 = sub_2417E419C();
  v8 = v7;
  sub_2417D9544(0, &qword_27E54B440);
  v9 = sub_2417E424C();
  swift_unknownObjectRetain();
  return AIAudiogramSymbolsSelectionViewController.init(title:delegate:selectedSymbols:)(v6, v8, delegate, v9);
}

- (void)selectFrequencies:(id)frequencies
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2417E433C();
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showFrequencySelectionViewController];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(&v6);
}

- (void)cancelTapped:(id)tapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong cancelButtonTapped];

    swift_unknownObjectRelease();
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2417DD648();
}

- (void)contentSizeCategoryDidChange:(id)change
{
  v4 = sub_2417E403C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E402C();
  selfCopy = self;
  sub_2417DE11C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end