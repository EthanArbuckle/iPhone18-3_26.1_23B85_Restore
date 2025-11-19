@interface AIAudiogramSymbolsSelectionViewController
- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)a3 delegate:(id)a4 selectedSymbols:(id)a5;
- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelTapped:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)selectFrequencies:(id)a3;
- (void)viewDidLoad;
@end

@implementation AIAudiogramSymbolsSelectionViewController

- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)a3 delegate:(id)a4 selectedSymbols:(id)a5
{
  v6 = sub_2417E419C();
  v8 = v7;
  sub_2417D9544(0, &qword_27E54B440);
  v9 = sub_2417E424C();
  swift_unknownObjectRetain();
  return AIAudiogramSymbolsSelectionViewController.init(title:delegate:selectedSymbols:)(v6, v8, a4, v9);
}

- (void)selectFrequencies:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
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

- (void)cancelTapped:(id)a3
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
  v2 = self;
  sub_2417DD648();
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = sub_2417E403C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E402C();
  v8 = self;
  sub_2417DE11C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18AudiogramIngestion41AIAudiogramSymbolsSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end