@interface CNChangeHistoryEventFactory
- (id)addContactEventWithContact:(id)a3 containerIdentifier:(id)a4;
- (id)addContactEventWithContactIdentifier:(id)a3 containerIdentifier:(id)a4;
- (id)addGroupEventWithGroup:(id)a3 containerIdentifier:(id)a4;
- (id)addMemberToGroupEventWithMember:(id)a3 group:(id)a4;
- (id)addSubgroupToGroupEventWithSubgroup:(id)a3 group:(id)a4;
- (id)deleteContactEventWithContactIdentifier:(id)a3;
- (id)deleteContactEventWithContactIdentifier:(id)a3 externalURI:(id)a4 externalModificationTag:(id)a5;
- (id)deleteGroupEventWithGroupIdentifier:(id)a3;
- (id)deleteGroupEventWithGroupIdentifier:(id)a3 externalURI:(id)a4 externalModificationTag:(id)a5;
- (id)differentMeCardEventWithContactIdentifier:(id)a3;
- (id)dropEverythingEvent;
- (id)linkContactsEventWithFromContact:(id)a3 toContact:(id)a4 unifiedContact:(id)a5;
- (id)preferredContactForImageEventWithPreferredContact:(id)a3 unifiedContact:(id)a4;
- (id)preferredContactForNameEventWithPreferredContact:(id)a3 unifiedContact:(id)a4;
- (id)removeMemberFromGroupEventWithMember:(id)a3 group:(id)a4;
- (id)removeSubgroupFromGroupEventWithSubgroup:(id)a3 group:(id)a4;
- (id)unlinkContactEventWithContact:(id)a3;
- (id)updateContactEventWithContact:(id)a3 imagesChanged:(BOOL)a4;
- (id)updateContactEventWithContactIdentifier:(id)a3 imagesChanged:(BOOL)a4;
- (id)updateGroupEventWithGroup:(id)a3;
@end

@implementation CNChangeHistoryEventFactory

- (id)dropEverythingEvent
{
  v2 = objc_alloc_init(CNChangeHistoryDropEverythingEvent);

  return v2;
}

- (id)addContactEventWithContact:(id)a3 containerIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryAddContactEvent alloc] initWithContact:v6 containerIdentifier:v5];

  return v7;
}

- (id)addContactEventWithContactIdentifier:(id)a3 containerIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryAddContactEvent alloc] initWithContactIdentifier:v6 containerIdentifier:v5];

  return v7;
}

- (id)updateContactEventWithContact:(id)a3 imagesChanged:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CNChangeHistoryUpdateContactEvent alloc] initWithContact:v5 imagesChanged:v4];

  return v6;
}

- (id)updateContactEventWithContactIdentifier:(id)a3 imagesChanged:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CNChangeHistoryUpdateContactEvent alloc] initWithContactIdentifier:v5 imagesChanged:v4];

  return v6;
}

- (id)deleteContactEventWithContactIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNChangeHistoryDeleteContactEvent alloc] initWithContactIdentifier:v3];

  return v4;
}

- (id)deleteContactEventWithContactIdentifier:(id)a3 externalURI:(id)a4 externalModificationTag:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CNChangeHistoryDeleteContactEvent alloc] initWithContactIdentifier:v9 externalURI:v8 externalModificationTag:v7];

  return v10;
}

- (id)addGroupEventWithGroup:(id)a3 containerIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryAddGroupEvent alloc] initWithGroup:v6 containerIdentifier:v5];

  return v7;
}

- (id)updateGroupEventWithGroup:(id)a3
{
  v3 = a3;
  v4 = [[CNChangeHistoryUpdateGroupEvent alloc] initWithGroup:v3];

  return v4;
}

- (id)deleteGroupEventWithGroupIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNChangeHistoryDeleteGroupEvent alloc] initWithGroupIdentifier:v3];

  return v4;
}

- (id)deleteGroupEventWithGroupIdentifier:(id)a3 externalURI:(id)a4 externalModificationTag:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CNChangeHistoryDeleteGroupEvent alloc] initWithGroupIdentifier:v9 externalURI:v8 externalModificationTag:v7];

  return v10;
}

- (id)addMemberToGroupEventWithMember:(id)a3 group:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryAddMemberToGroupEvent alloc] initWithMember:v6 group:v5];

  return v7;
}

- (id)removeMemberFromGroupEventWithMember:(id)a3 group:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryRemoveMemberFromGroupEvent alloc] initWithMember:v6 group:v5];

  return v7;
}

- (id)addSubgroupToGroupEventWithSubgroup:(id)a3 group:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryAddSubgroupToGroupEvent alloc] initWithSubgroup:v6 group:v5];

  return v7;
}

- (id)removeSubgroupFromGroupEventWithSubgroup:(id)a3 group:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryRemoveSubgroupFromGroupEvent alloc] initWithSubgroup:v6 group:v5];

  return v7;
}

- (id)linkContactsEventWithFromContact:(id)a3 toContact:(id)a4 unifiedContact:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CNChangeHistoryLinkContactsEvent alloc] initWithFromContact:v9 toContact:v8 unifiedContact:v7];

  return v10;
}

- (id)unlinkContactEventWithContact:(id)a3
{
  v3 = a3;
  v4 = [[CNChangeHistoryUnlinkContactEvent alloc] initWithContact:v3];

  return v4;
}

- (id)preferredContactForNameEventWithPreferredContact:(id)a3 unifiedContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryPreferredContactForNameEvent alloc] initWithPreferredContact:v6 unifiedContact:v5];

  return v7;
}

- (id)preferredContactForImageEventWithPreferredContact:(id)a3 unifiedContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNChangeHistoryPreferredContactForImageEvent alloc] initWithPreferredContact:v6 unifiedContact:v5];

  return v7;
}

- (id)differentMeCardEventWithContactIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNChangeHistoryDifferentMeCardEvent alloc] initWithContactIdentifier:v3];

  return v4;
}

@end