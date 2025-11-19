@interface ATXStableContactRepresentation
- (ATXStableContactRepresentation)initWithStableContactIdentifier:(id)a3 cnContactId:(id)a4 rawIdentifier:(id)a5;
@end

@implementation ATXStableContactRepresentation

- (ATXStableContactRepresentation)initWithStableContactIdentifier:(id)a3 cnContactId:(id)a4 rawIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ATXStableContactRepresentation;
  v11 = [(ATXStableContactRepresentation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    stableContactIdentifier = v11->_stableContactIdentifier;
    v11->_stableContactIdentifier = v12;

    v14 = [v9 copy];
    cnContactId = v11->_cnContactId;
    v11->_cnContactId = v14;

    v16 = [v10 copy];
    rawIdentifier = v11->_rawIdentifier;
    v11->_rawIdentifier = v16;
  }

  return v11;
}

@end