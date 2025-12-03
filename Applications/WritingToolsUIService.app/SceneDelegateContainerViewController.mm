@interface SceneDelegateContainerViewController
- (_TtC21WritingToolsUIService36SceneDelegateContainerViewController)initWithCoder:(id)coder;
- (_TtC21WritingToolsUIService36SceneDelegateContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation SceneDelegateContainerViewController

- (_TtC21WritingToolsUIService36SceneDelegateContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SceneDelegateContainerViewController();
  v9 = [(SceneDelegateContainerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC21WritingToolsUIService36SceneDelegateContainerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SceneDelegateContainerViewController();
  coderCopy = coder;
  v5 = [(SceneDelegateContainerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end