@interface CRLBoardRenameAlertTextFieldDelegate
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldClear:(id)a3;
- (_TtC8FreeformP33_1F7AC1847BE2554B067346642BF3ED1536CRLBoardRenameAlertTextFieldDelegate)init;
@end

@implementation CRLBoardRenameAlertTextFieldDelegate

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_10068B404(v12, location, length, v9, v11);

  return length & 1;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setEnabled:0];
  }

  return 1;
}

- (_TtC8FreeformP33_1F7AC1847BE2554B067346642BF3ED1536CRLBoardRenameAlertTextFieldDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CRLBoardRenameAlertTextFieldDelegate();
  return [(CRLBoardRenameAlertTextFieldDelegate *)&v4 init];
}

@end