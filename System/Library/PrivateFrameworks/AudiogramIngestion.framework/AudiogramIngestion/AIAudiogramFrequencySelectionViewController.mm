@interface AIAudiogramFrequencySelectionViewController
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text selectedFrequencies:(id)frequencies delegate:(id)delegate isModal:(BOOL)modal;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelTapped:(id)tapped;
- (void)continueToIndividualSensitivityPointInput:(id)input;
- (void)doneTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AIAudiogramFrequencySelectionViewController

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text selectedFrequencies:(id)frequencies delegate:(id)delegate isModal:(BOOL)modal
{
  v9 = sub_2417E419C();
  v11 = v10;
  v12 = sub_2417E419C();
  v14 = v13;
  sub_2417CE54C();
  v15 = sub_2417E424C();
  swift_unknownObjectRetain();
  return AudiogramFrequencySelectionViewController.init(title:detailText:selectedFrequencies:delegate:isModal:)(v9, v11, v12, v14, v15, delegate, modal);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2417CF5D8(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2417CF738();
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for AudiogramFrequencySelectionViewController();
  [(OBTableWelcomeController *)&v2 viewDidLayoutSubviews];
}

- (void)cancelTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)doneTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2417E433C();
  swift_unknownObjectRelease();
  if (*(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR___AIAudiogramFrequencySelectionViewController_isModal) == 1)
  {
    [(AIAudiogramFrequencySelectionViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_2417E40DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E40BC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_2417CFC08(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_2417E40DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E40BC();
  viewCopy = view;
  selfCopy = self;
  sub_2417CFFD0(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)continueToIndividualSensitivityPointInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2417E433C();
  swift_unknownObjectRelease();
  sub_2417D0B38();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AIAudiogramFrequencySelectionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end