@interface TTRIIntentsSnippetViewController
- (UITableView)tableView;
- (_TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)desiredHeightForWidth:(double)width;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction context:(unint64_t)context completion:(id)completion;
- (void)desiresInteractivity:(id)interactivity;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TTRIIntentsSnippetViewController

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_10001F614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F5D4();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_10001DE90(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100019530();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_10001F614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F5D4();
  viewCopy = view;
  selfCopy = self;
  sub_10001E2C0();

  (*(v7 + 8))(v10, v6);
}

- (_TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10001FA84();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10001A668(v5, v7, bundle);
}

- (double)desiredHeightForWidth:(double)width
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v5 = Strong;
  selfCopy = self;
  [v5 contentSize];
  sub_10001AF6C(0, v7, v8, v7, v8);
  v10 = v9;

  return v10;
}

- (void)desiresInteractivity:(id)interactivity
{
  v3 = _Block_copy(interactivity);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1);

    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction context:(unint64_t)context completion:(id)completion
{
  v9 = _Block_copy(completion);
  if (parameters)
  {
    sub_100010E38(0, &qword_10002E018, INParameter_ptr);
    sub_10001F1D4(&qword_10002E020, &qword_10002E018, INParameter_ptr);
    parameters = sub_10001FB74();
  }

  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_10001F0C4;
  }

  interactionCopy = interaction;
  selfCopy = self;
  sub_10001EDE0(parameters, interaction, v9, v12, v13);
  sub_10001F07C(v9);
}

@end