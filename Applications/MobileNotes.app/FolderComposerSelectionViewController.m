@interface FolderComposerSelectionViewController
- (_TtC11MobileNotes37FolderComposerSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation FolderComposerSelectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1003E2F5C();
}

- (_TtC11MobileNotes37FolderComposerSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1003E38D8(v5, v7, a4);
}

@end