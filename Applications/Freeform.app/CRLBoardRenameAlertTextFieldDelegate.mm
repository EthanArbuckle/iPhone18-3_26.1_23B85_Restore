@interface CRLBoardRenameAlertTextFieldDelegate
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldClear:(id)clear;
- (_TtC8FreeformP33_1F7AC1847BE2554B067346642BF3ED1536CRLBoardRenameAlertTextFieldDelegate)init;
@end

@implementation CRLBoardRenameAlertTextFieldDelegate

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_10068B404(fieldCopy, location, length, v9, v11);

  return length & 1;
}

- (BOOL)textFieldShouldClear:(id)clear
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