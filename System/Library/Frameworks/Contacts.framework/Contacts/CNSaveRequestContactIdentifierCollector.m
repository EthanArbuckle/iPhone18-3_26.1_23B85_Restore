@interface CNSaveRequestContactIdentifierCollector
- (CNSaveRequestContactIdentifierCollector)initWithSaveRequest:(id)a3;
- (NSArray)allContactIdentifiers;
- (NSArray)insertedContactIdentifiers;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDifferentMeCardEvent:(id)a3;
- (void)visitLinkContactsEvent:(id)a3;
- (void)visitPreferredContactForImageEvent:(id)a3;
- (void)visitPreferredContactForNameEvent:(id)a3;
- (void)visitUnlinkContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation CNSaveRequestContactIdentifierCollector

- (CNSaveRequestContactIdentifierCollector)initWithSaveRequest:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNSaveRequestContactIdentifierCollector;
  v6 = [(CNSaveRequestContactIdentifierCollector *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    allIdentifiers = v7->_allIdentifiers;
    v7->_allIdentifiers = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    insertedIdentifiers = v7->_insertedIdentifiers;
    v7->_insertedIdentifiers = v10;

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

- (void)visitAddContactEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v5 = a3;
  v6 = [v5 contact];
  v7 = [v6 identifier];
  [(NSMutableArray *)allIdentifiers addObject:v7];

  insertedIdentifiers = self->_insertedIdentifiers;
  v10 = [v5 contact];

  v9 = [v10 identifier];
  [(NSMutableArray *)insertedIdentifiers addObject:v9];
}

- (void)visitUpdateContactEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v5 = [a3 contact];
  v4 = [v5 identifier];
  [(NSMutableArray *)allIdentifiers addObject:v4];
}

- (void)visitDeleteContactEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v4 = [a3 contactIdentifier];
  [(NSMutableArray *)allIdentifiers addObject:v4];
}

- (void)visitLinkContactsEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v5 = a3;
  v6 = [v5 fromContact];
  v7 = [v6 identifier];
  [(NSMutableArray *)allIdentifiers addObject:v7];

  v8 = self->_allIdentifiers;
  v10 = [v5 toContact];

  v9 = [v10 identifier];
  [(NSMutableArray *)v8 addObject:v9];
}

- (void)visitPreferredContactForImageEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v5 = a3;
  v6 = [v5 preferredContact];
  v7 = [v6 identifier];
  [(NSMutableArray *)allIdentifiers addObject:v7];

  v8 = self->_allIdentifiers;
  v10 = [v5 unifiedContact];

  v9 = [v10 identifier];
  [(NSMutableArray *)v8 addObject:v9];
}

- (void)visitPreferredContactForNameEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v5 = a3;
  v6 = [v5 preferredContact];
  v7 = [v6 identifier];
  [(NSMutableArray *)allIdentifiers addObject:v7];

  v8 = self->_allIdentifiers;
  v10 = [v5 unifiedContact];

  v9 = [v10 identifier];
  [(NSMutableArray *)v8 addObject:v9];
}

- (void)visitUnlinkContactEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v5 = [a3 contact];
  v4 = [v5 identifier];
  [(NSMutableArray *)allIdentifiers addObject:v4];
}

- (void)visitDifferentMeCardEvent:(id)a3
{
  allIdentifiers = self->_allIdentifiers;
  v4 = [a3 contactIdentifier];
  [(NSMutableArray *)allIdentifiers _cn_addNonNilObject:v4];
}

@end