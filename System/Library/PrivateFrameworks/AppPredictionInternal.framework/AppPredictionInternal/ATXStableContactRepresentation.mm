@interface ATXStableContactRepresentation
- (ATXStableContactRepresentation)initWithStableContactIdentifier:(id)identifier cnContactId:(id)id rawIdentifier:(id)rawIdentifier;
@end

@implementation ATXStableContactRepresentation

- (ATXStableContactRepresentation)initWithStableContactIdentifier:(id)identifier cnContactId:(id)id rawIdentifier:(id)rawIdentifier
{
  identifierCopy = identifier;
  idCopy = id;
  rawIdentifierCopy = rawIdentifier;
  v19.receiver = self;
  v19.super_class = ATXStableContactRepresentation;
  v11 = [(ATXStableContactRepresentation *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    stableContactIdentifier = v11->_stableContactIdentifier;
    v11->_stableContactIdentifier = v12;

    v14 = [idCopy copy];
    cnContactId = v11->_cnContactId;
    v11->_cnContactId = v14;

    v16 = [rawIdentifierCopy copy];
    rawIdentifier = v11->_rawIdentifier;
    v11->_rawIdentifier = v16;
  }

  return v11;
}

@end