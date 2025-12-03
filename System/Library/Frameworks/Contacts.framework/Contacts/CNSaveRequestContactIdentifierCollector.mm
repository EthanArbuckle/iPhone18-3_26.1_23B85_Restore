@interface CNSaveRequestContactIdentifierCollector
- (CNSaveRequestContactIdentifierCollector)initWithSaveRequest:(id)request;
- (NSArray)allContactIdentifiers;
- (NSArray)insertedContactIdentifiers;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDifferentMeCardEvent:(id)event;
- (void)visitLinkContactsEvent:(id)event;
- (void)visitPreferredContactForImageEvent:(id)event;
- (void)visitPreferredContactForNameEvent:(id)event;
- (void)visitUnlinkContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation CNSaveRequestContactIdentifierCollector

- (CNSaveRequestContactIdentifierCollector)initWithSaveRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = CNSaveRequestContactIdentifierCollector;
  v6 = [(CNSaveRequestContactIdentifierCollector *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    array = [MEMORY[0x1E695DF70] array];
    allIdentifiers = v7->_allIdentifiers;
    v7->_allIdentifiers = array;

    array2 = [MEMORY[0x1E695DF70] array];
    insertedIdentifiers = v7->_insertedIdentifiers;
    v7->_insertedIdentifiers = array2;

    v12 = v7;
  }

  return v7;
}

- (NSArray)allContactIdentifiers
{
  v2 = [(NSMutableArray *)self->_allIdentifiers copy];

  return v2;
}

- (NSArray)insertedContactIdentifiers
{
  v2 = [(NSMutableArray *)self->_insertedIdentifiers copy];

  return v2;
}

- (void)visitAddContactEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  eventCopy = event;
  contact = [eventCopy contact];
  identifier = [contact identifier];
  [(NSMutableArray *)allIdentifiers addObject:identifier];

  insertedIdentifiers = self->_insertedIdentifiers;
  contact2 = [eventCopy contact];

  identifier2 = [contact2 identifier];
  [(NSMutableArray *)insertedIdentifiers addObject:identifier2];
}

- (void)visitUpdateContactEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  contact = [event contact];
  identifier = [contact identifier];
  [(NSMutableArray *)allIdentifiers addObject:identifier];
}

- (void)visitDeleteContactEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  contactIdentifier = [event contactIdentifier];
  [(NSMutableArray *)allIdentifiers addObject:contactIdentifier];
}

- (void)visitLinkContactsEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  eventCopy = event;
  fromContact = [eventCopy fromContact];
  identifier = [fromContact identifier];
  [(NSMutableArray *)allIdentifiers addObject:identifier];

  v8 = self->_allIdentifiers;
  toContact = [eventCopy toContact];

  identifier2 = [toContact identifier];
  [(NSMutableArray *)v8 addObject:identifier2];
}

- (void)visitPreferredContactForImageEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  eventCopy = event;
  preferredContact = [eventCopy preferredContact];
  identifier = [preferredContact identifier];
  [(NSMutableArray *)allIdentifiers addObject:identifier];

  v8 = self->_allIdentifiers;
  unifiedContact = [eventCopy unifiedContact];

  identifier2 = [unifiedContact identifier];
  [(NSMutableArray *)v8 addObject:identifier2];
}

- (void)visitPreferredContactForNameEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  eventCopy = event;
  preferredContact = [eventCopy preferredContact];
  identifier = [preferredContact identifier];
  [(NSMutableArray *)allIdentifiers addObject:identifier];

  v8 = self->_allIdentifiers;
  unifiedContact = [eventCopy unifiedContact];

  identifier2 = [unifiedContact identifier];
  [(NSMutableArray *)v8 addObject:identifier2];
}

- (void)visitUnlinkContactEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  contact = [event contact];
  identifier = [contact identifier];
  [(NSMutableArray *)allIdentifiers addObject:identifier];
}

- (void)visitDifferentMeCardEvent:(id)event
{
  allIdentifiers = self->_allIdentifiers;
  contactIdentifier = [event contactIdentifier];
  [(NSMutableArray *)allIdentifiers _cn_addNonNilObject:contactIdentifier];
}

@end