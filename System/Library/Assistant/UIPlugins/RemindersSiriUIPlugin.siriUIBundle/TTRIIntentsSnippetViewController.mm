@interface TTRIIntentsSnippetViewController
- (UITableView)tableView;
- (_TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  v6 = sub_1FFAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1FF6C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_E718(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_9AE8();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1FFAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1FF6C();
  viewCopy = view;
  selfCopy = self;
  sub_EB48();

  (*(v7 + 8))(v10, v6);
}

- (_TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2041C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_ACE4(v5, v7, bundle);
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
  sub_B79C(0, v7, v8, v7, v8);
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
    sub_2958(0, &qword_2E0B8, INParameter_ptr);
    sub_FAFC(&qword_2E0C0, &qword_2E0B8, INParameter_ptr);
    parameters = sub_2050C();
  }

  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_F94C;
  }

  interactionCopy = interaction;
  selfCopy = self;
  sub_F668(parameters, interaction, v9, v12, v13);
  sub_F904(v9);
}

@end