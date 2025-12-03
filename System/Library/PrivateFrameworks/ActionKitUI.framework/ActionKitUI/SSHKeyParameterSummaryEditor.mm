@interface SSHKeyParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
@end

@implementation SSHKeyParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_23E35D148(selfCopy, anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_23E35CA40(&unk_23E3B1E08, v5);
}

@end