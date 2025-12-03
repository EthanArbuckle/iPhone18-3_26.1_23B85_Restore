@interface TraitNavigationController
- (_TtC16MusicApplication25TraitNavigationController)initWithCoder:(id)coder;
- (_TtC16MusicApplication25TraitNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC16MusicApplication25TraitNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16MusicApplication25TraitNavigationController)initWithRootViewController:(id)controller;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (void)presentViewControllerIfNeeded:(id)needed overrideTraitCollection:(id)collection animated:(BOOL)animated;
- (void)pushViewController:(id)controller overrideTraitCollection:(id)collection animated:(BOOL)animated;
- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move;
@end

@implementation TraitNavigationController

- (void)pushViewController:(id)controller overrideTraitCollection:(id)collection animated:(BOOL)animated
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  sub_387CB0(controllerCopy, collection, animated);
}

- (void)presentViewControllerIfNeeded:(id)needed overrideTraitCollection:(id)collection animated:(BOOL)animated
{
  neededCopy = needed;
  collectionCopy = collection;
  selfCopy = self;
  sub_387EE8(neededCopy, collection, animated);
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_38836C(environment);
  swift_unknownObjectRelease();

  return v6;
}

- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move
{
  controllerCopy = controller;
  selfCopy = self;
  sub_38861C(controllerCopy, move);
}

- (_TtC16MusicApplication25TraitNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TraitNavigationController();
  return [(TraitNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC16MusicApplication25TraitNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TraitNavigationController();
  return [(TraitNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC16MusicApplication25TraitNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_AB92A0();
    bundleCopy = bundle;
    v7 = sub_AB9260();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TraitNavigationController();
  v9 = [(TraitNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC16MusicApplication25TraitNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TraitNavigationController();
  coderCopy = coder;
  v5 = [(TraitNavigationController *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end