@interface CNSafeChangeHistoryEventVisitorWrapper
- (CNSafeChangeHistoryEventVisitorWrapper)initWithChangeHistoryEventVisitor:(id)a3;
- (NSString)description;
- (void)visitAddContactEvent:(id)a3;
- (void)visitAddGroupEvent:(id)a3;
- (void)visitAddMemberToGroupEvent:(id)a3;
- (void)visitAddSubgroupToGroupEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDeleteGroupEvent:(id)a3;
- (void)visitDifferentMeCardEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitLinkContactsEvent:(id)a3;
- (void)visitPreferredContactForImageEvent:(id)a3;
- (void)visitPreferredContactForNameEvent:(id)a3;
- (void)visitRemoveMemberFromGroupEvent:(id)a3;
- (void)visitRemoveSubgroupFromGroupEvent:(id)a3;
- (void)visitUnlinkContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
- (void)visitUpdateGroupEvent:(id)a3;
@end

@implementation CNSafeChangeHistoryEventVisitorWrapper

- (CNSafeChangeHistoryEventVisitorWrapper)initWithChangeHistoryEventVisitor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNSafeChangeHistoryEventVisitorWrapper;
  v6 = [(CNSafeChangeHistoryEventVisitorWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visitor, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNSafeChangeHistoryEventVisitorWrapper *)self visitor];
  v5 = [v3 appendName:@"visitor" object:v4];

  v6 = [v3 build];

  return v6;
}

- (void)visitDropEverythingEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDropEverythingEvent:v4];
  }
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddContactEvent:v4];
  }
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitUpdateContactEvent:v4];
  }
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDeleteContactEvent:v4];
  }
}

- (void)visitAddGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddGroupEvent:v4];
  }
}

- (void)visitUpdateGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitUpdateGroupEvent:v4];
  }
}

- (void)visitDeleteGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDeleteGroupEvent:v4];
  }
}

- (void)visitAddMemberToGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddMemberToGroupEvent:v4];
  }
}

- (void)visitRemoveMemberFromGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitRemoveMemberFromGroupEvent:v4];
  }
}

- (void)visitAddSubgroupToGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitAddSubgroupToGroupEvent:v4];
  }
}

- (void)visitRemoveSubgroupFromGroupEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitRemoveSubgroupFromGroupEvent:v4];
  }
}

- (void)visitDifferentMeCardEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitDifferentMeCardEvent:v4];
  }
}

- (void)visitLinkContactsEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitLinkContactsEvent:v4];
  }
}

- (void)visitUnlinkContactEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitUnlinkContactEvent:v4];
  }
}

- (void)visitPreferredContactForNameEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitPreferredContactForNameEvent:v4];
  }
}

- (void)visitPreferredContactForImageEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNChangeHistoryEventVisitor *)self->_visitor visitPreferredContactForImageEvent:v4];
  }
}

@end