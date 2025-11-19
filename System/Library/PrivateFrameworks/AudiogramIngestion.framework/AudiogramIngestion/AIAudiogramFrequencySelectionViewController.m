@interface AIAudiogramFrequencySelectionViewController
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 selectedFrequencies:(id)a5 delegate:(id)a6 isModal:(BOOL)a7;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelTapped:(id)a3;
- (void)continueToIndividualSensitivityPointInput:(id)a3;
- (void)doneTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AIAudiogramFrequencySelectionViewController

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 selectedFrequencies:(id)a5 delegate:(id)a6 isModal:(BOOL)a7
{
  v9 = sub_2417E419C();
  v11 = v10;
  v12 = sub_2417E419C();
  v14 = v13;
  sub_2417CE54C();
  v15 = sub_2417E424C();
  swift_unknownObjectRetain();
  return AudiogramFrequencySelectionViewController.init(title:detailText:selectedFrequencies:delegate:isModal:)(v9, v11, v12, v14, v15, a6, a7);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2417CF5D8(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2417CF738();
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for AudiogramFrequencySelectionViewController();
  [(OBTableWelcomeController *)&v2 viewDidLayoutSubviews];
}

- (void)cancelTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2417E433C();
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong cancelButtonTapped];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(&v6);
}

- (void)doneTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2417E433C();
  swift_unknownObjectRelease();
  if (*(&v4->super.super.super.super.super.super.isa + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_isModal) == 1)
  {
    [(AIAudiogramFrequencySelectionViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  }

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_2417E40DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E40BC();
  v10 = a3;
  v11 = self;
  v12 = sub_2417CFC08(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_frequencies);
  if (v4 >> 62)
  {
    return sub_2417E442C();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_2417E40DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E40BC();
  v10 = a3;
  v11 = self;
  sub_2417CFFD0(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)continueToIndividualSensitivityPointInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2417E433C();
  swift_unknownObjectRelease();
  sub_2417D0B38();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end