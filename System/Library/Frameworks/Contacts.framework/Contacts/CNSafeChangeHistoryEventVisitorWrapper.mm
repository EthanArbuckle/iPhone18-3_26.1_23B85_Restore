@interface CNSafeChangeHistoryEventVisitorWrapper
- (CNSafeChangeHistoryEventVisitorWrapper)initWithChangeHistoryEventVisitor:(id)visitor;
- (NSString)description;
- (void)visitAddContactEvent:(id)event;
- (void)visitAddGroupEvent:(id)event;
- (void)visitAddMemberToGroupEvent:(id)event;
- (void)visitAddSubgroupToGroupEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDeleteGroupEvent:(id)event;
- (void)visitDifferentMeCardEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitLinkContactsEvent:(id)event;
- (void)visitPreferredContactForImageEvent:(id)event;
- (void)visitPreferredContactForNameEvent:(id)event;
- (void)visitRemoveMemberFromGroupEvent:(id)event;
- (void)visitRemoveSubgroupFromGroupEvent:(id)event;
- (void)visitUnlinkContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
- (void)visitUpdateGroupEvent:(id)event;
@end

@implementation CNSafeChangeHistoryEventVisitorWrapper

- (CNSafeChangeHistoryEventVisitorWrapper)initWithChangeHistoryEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v10.receiver = self;
  v10.super_class = CNSafeChangeHistoryEventVisitorWrapper;
  v6 = [(CNSafeChangeHistoryEventVisitorWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visitor, visitor);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  visitor = [(CNSafeChangeHistoryEventVisitorWrapper *)self visitor];
  v5 = [v3 appendName:@"visitor" object:visitor];

  build = [v3 build];

  return build;
}

- (void)visitDropEverythingEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDropEverythingEvent:eventCopy];
  }
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddContactEvent:eventCopy];
  }
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitUpdateContactEvent:eventCopy];
  }
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDeleteContactEvent:eventCopy];
  }
}

- (void)visitAddGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddGroupEvent:eventCopy];
  }
}

- (void)visitUpdateGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitUpdateGroupEvent:eventCopy];
  }
}

- (void)visitDeleteGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDeleteGroupEvent:eventCopy];
  }
}

- (void)visitAddMemberToGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddMemberToGroupEvent:eventCopy];
  }
}

- (void)visitRemoveMemberFromGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitRemoveMemberFromGroupEvent:eventCopy];
  }
}

- (void)visitAddSubgroupToGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddSubgroupToGroupEvent:eventCopy];
  }
}

- (void)visitRemoveSubgroupFromGroupEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitRemoveSubgroupFromGroupEvent:eventCopy];
  }
}

- (void)visitDifferentMeCardEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDifferentMeCardEvent:eventCopy];
  }
}

- (void)visitLinkContactsEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitLinkContactsEvent:eventCopy];
  }
}

- (void)visitUnlinkContactEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitUnlinkContactEvent:eventCopy];
  }
}

- (void)visitPreferredContactForNameEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitPreferredContactForNameEvent:eventCopy];
  }
}

- (void)visitPreferredContactForImageEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitPreferredContactForImageEvent:eventCopy];
  }
}

@end