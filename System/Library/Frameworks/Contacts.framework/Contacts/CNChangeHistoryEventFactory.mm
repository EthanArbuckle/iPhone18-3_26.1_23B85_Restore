@interface CNChangeHistoryEventFactory
- (id)addContactEventWithContact:(id)contact containerIdentifier:(id)identifier;
- (id)addContactEventWithContactIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier;
- (id)addGroupEventWithGroup:(id)group containerIdentifier:(id)identifier;
- (id)addMemberToGroupEventWithMember:(id)member group:(id)group;
- (id)addSubgroupToGroupEventWithSubgroup:(id)subgroup group:(id)group;
- (id)deleteContactEventWithContactIdentifier:(id)identifier;
- (id)deleteContactEventWithContactIdentifier:(id)identifier externalURI:(id)i externalModificationTag:(id)tag;
- (id)deleteGroupEventWithGroupIdentifier:(id)identifier;
- (id)deleteGroupEventWithGroupIdentifier:(id)identifier externalURI:(id)i externalModificationTag:(id)tag;
- (id)differentMeCardEventWithContactIdentifier:(id)identifier;
- (id)dropEverythingEvent;
- (id)linkContactsEventWithFromContact:(id)contact toContact:(id)toContact unifiedContact:(id)unifiedContact;
- (id)preferredContactForImageEventWithPreferredContact:(id)contact unifiedContact:(id)unifiedContact;
- (id)preferredContactForNameEventWithPreferredContact:(id)contact unifiedContact:(id)unifiedContact;
- (id)removeMemberFromGroupEventWithMember:(id)member group:(id)group;
- (id)removeSubgroupFromGroupEventWithSubgroup:(id)subgroup group:(id)group;
- (id)unlinkContactEventWithContact:(id)contact;
- (id)updateContactEventWithContact:(id)contact imagesChanged:(BOOL)changed;
- (id)updateContactEventWithContactIdentifier:(id)identifier imagesChanged:(BOOL)changed;
- (id)updateGroupEventWithGroup:(id)group;
@end

@implementation CNChangeHistoryEventFactory

- (id)dropEverythingEvent
{
  v2 = objc_alloc_init(CNChangeHistoryDropEverythingEvent);

  return v2;
}

- (id)addContactEventWithContact:(id)contact containerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactCopy = contact;
  v7 = [[CNChangeHistoryAddContactEvent alloc] initWithContact:contactCopy containerIdentifier:identifierCopy];

  return v7;
}

- (id)addContactEventWithContactIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier
{
  containerIdentifierCopy = containerIdentifier;
  identifierCopy = identifier;
  v7 = [[CNChangeHistoryAddContactEvent alloc] initWithContactIdentifier:identifierCopy containerIdentifier:containerIdentifierCopy];

  return v7;
}

- (id)updateContactEventWithContact:(id)contact imagesChanged:(BOOL)changed
{
  changedCopy = changed;
  contactCopy = contact;
  v6 = [[CNChangeHistoryUpdateContactEvent alloc] initWithContact:contactCopy imagesChanged:changedCopy];

  return v6;
}

- (id)updateContactEventWithContactIdentifier:(id)identifier imagesChanged:(BOOL)changed
{
  changedCopy = changed;
  identifierCopy = identifier;
  v6 = [[CNChangeHistoryUpdateContactEvent alloc] initWithContactIdentifier:identifierCopy imagesChanged:changedCopy];

  return v6;
}

- (id)deleteContactEventWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNChangeHistoryDeleteContactEvent alloc] initWithContactIdentifier:identifierCopy];

  return v4;
}

- (id)deleteContactEventWithContactIdentifier:(id)identifier externalURI:(id)i externalModificationTag:(id)tag
{
  tagCopy = tag;
  iCopy = i;
  identifierCopy = identifier;
  v10 = [[CNChangeHistoryDeleteContactEvent alloc] initWithContactIdentifier:identifierCopy externalURI:iCopy externalModificationTag:tagCopy];

  return v10;
}

- (id)addGroupEventWithGroup:(id)group containerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  groupCopy = group;
  v7 = [[CNChangeHistoryAddGroupEvent alloc] initWithGroup:groupCopy containerIdentifier:identifierCopy];

  return v7;
}

- (id)updateGroupEventWithGroup:(id)group
{
  groupCopy = group;
  v4 = [[CNChangeHistoryUpdateGroupEvent alloc] initWithGroup:groupCopy];

  return v4;
}

- (id)deleteGroupEventWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNChangeHistoryDeleteGroupEvent alloc] initWithGroupIdentifier:identifierCopy];

  return v4;
}

- (id)deleteGroupEventWithGroupIdentifier:(id)identifier externalURI:(id)i externalModificationTag:(id)tag
{
  tagCopy = tag;
  iCopy = i;
  identifierCopy = identifier;
  v10 = [[CNChangeHistoryDeleteGroupEvent alloc] initWithGroupIdentifier:identifierCopy externalURI:iCopy externalModificationTag:tagCopy];

  return v10;
}

- (id)addMemberToGroupEventWithMember:(id)member group:(id)group
{
  groupCopy = group;
  memberCopy = member;
  v7 = [[CNChangeHistoryAddMemberToGroupEvent alloc] initWithMember:memberCopy group:groupCopy];

  return v7;
}

- (id)removeMemberFromGroupEventWithMember:(id)member group:(id)group
{
  groupCopy = group;
  memberCopy = member;
  v7 = [[CNChangeHistoryRemoveMemberFromGroupEvent alloc] initWithMember:memberCopy group:groupCopy];

  return v7;
}

- (id)addSubgroupToGroupEventWithSubgroup:(id)subgroup group:(id)group
{
  groupCopy = group;
  subgroupCopy = subgroup;
  v7 = [[CNChangeHistoryAddSubgroupToGroupEvent alloc] initWithSubgroup:subgroupCopy group:groupCopy];

  return v7;
}

- (id)removeSubgroupFromGroupEventWithSubgroup:(id)subgroup group:(id)group
{
  groupCopy = group;
  subgroupCopy = subgroup;
  v7 = [[CNChangeHistoryRemoveSubgroupFromGroupEvent alloc] initWithSubgroup:subgroupCopy group:groupCopy];

  return v7;
}

- (id)linkContactsEventWithFromContact:(id)contact toContact:(id)toContact unifiedContact:(id)unifiedContact
{
  unifiedContactCopy = unifiedContact;
  toContactCopy = toContact;
  contactCopy = contact;
  v10 = [[CNChangeHistoryLinkContactsEvent alloc] initWithFromContact:contactCopy toContact:toContactCopy unifiedContact:unifiedContactCopy];

  return v10;
}

- (id)unlinkContactEventWithContact:(id)contact
{
  contactCopy = contact;
  v4 = [[CNChangeHistoryUnlinkContactEvent alloc] initWithContact:contactCopy];

  return v4;
}

- (id)preferredContactForNameEventWithPreferredContact:(id)contact unifiedContact:(id)unifiedContact
{
  unifiedContactCopy = unifiedContact;
  contactCopy = contact;
  v7 = [[CNChangeHistoryPreferredContactForNameEvent alloc] initWithPreferredContact:contactCopy unifiedContact:unifiedContactCopy];

  return v7;
}

- (id)preferredContactForImageEventWithPreferredContact:(id)contact unifiedContact:(id)unifiedContact
{
  unifiedContactCopy = unifiedContact;
  contactCopy = contact;
  v7 = [[CNChangeHistoryPreferredContactForImageEvent alloc] initWithPreferredContact:contactCopy unifiedContact:unifiedContactCopy];

  return v7;
}

- (id)differentMeCardEventWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNChangeHistoryDifferentMeCardEvent alloc] initWithContactIdentifier:identifierCopy];

  return v4;
}

@end