@interface FolderComposerSelectionViewController
- (_TtC11MobileNotes37FolderComposerSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation FolderComposerSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003E2F5C();
}

- (_TtC11MobileNotes37FolderComposerSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1003E38D8(v5, v7, bundle);
}

@end