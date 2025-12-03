@interface CRLImagePlaygroundViewControllerDelegate
- (_TtC8FreeformP33_A57276A3C6F5E8852856D4D908CBDB8040CRLImagePlaygroundViewControllerDelegate)init;
- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at;
- (void)imagePlaygroundViewControllerDidCancel:(id)cancel;
@end

@implementation CRLImagePlaygroundViewControllerDelegate

- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10126F940();

  (*(v7 + 8))(v9, v6);
}

- (void)imagePlaygroundViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_101270130();
}

- (_TtC8FreeformP33_A57276A3C6F5E8852856D4D908CBDB8040CRLImagePlaygroundViewControllerDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CRLImagePlaygroundViewControllerDelegate();
  return [(CRLImagePlaygroundViewControllerDelegate *)&v4 init];
}

@end