@interface CRLImagePlaygroundViewControllerDelegate
- (_TtC8FreeformP33_A57276A3C6F5E8852856D4D908CBDB8040CRLImagePlaygroundViewControllerDelegate)init;
- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4;
- (void)imagePlaygroundViewControllerDidCancel:(id)a3;
@end

@implementation CRLImagePlaygroundViewControllerDelegate

- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10126F940();

  (*(v7 + 8))(v9, v6);
}

- (void)imagePlaygroundViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
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