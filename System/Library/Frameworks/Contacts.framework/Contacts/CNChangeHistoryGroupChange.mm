@interface CNChangeHistoryGroupChange
- (CNChangeHistoryGroupChange)initWithCoder:(id)coder;
- (CNChangeHistoryGroupChange)initWithIdentifier:(id)identifier changeType:(int64_t)type changeAnchor:(id)anchor changeID:(id)d externalID:(id)iD;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryGroupChange

- (CNChangeHistoryGroupChange)initWithIdentifier:(id)identifier changeType:(int64_t)type changeAnchor:(id)anchor changeID:(id)d externalID:(id)iD
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  dCopy = d;
  iDCopy = iD;
  v27.receiver = self;
  v27.super_class = CNChangeHistoryGroupChange;
  v16 = [(CNChangeHistoryGroupChange *)&v27 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    groupIdentifier = v16->_groupIdentifier;
    v16->_groupIdentifier = v17;

    v16->_changeType = type;
    v19 = [anchorCopy copy];
    changeAnchor = v16->_changeAnchor;
    v16->_changeAnchor = v19;

    v21 = [dCopy copy];
    changeID = v16->_changeID;
    v16->_changeID = v21;

    v23 = [iDCopy copy];
    externalID = v16->_externalID;
    v16->_externalID = v23;

    v25 = v16;
  }

  return v16;
}

- (CNChangeHistoryGroupChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNChangeHistoryGroupChange;
  v5 = [(CNChangeHistoryGroupChange *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    v7 = [v6 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v5->_changeType = [coderCopy decodeIntegerForKey:@"_changeType"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_changeAnchor"];
    v10 = [v9 copy];
    changeAnchor = v5->_changeAnchor;
    v5->_changeAnchor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_changeID"];
    v13 = [v12 copy];
    changeID = v5->_changeID;
    v5->_changeID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalID"];
    v16 = [v15 copy];
    externalID = v5->_externalID;
    v5->_externalID = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  groupIdentifier = self->_groupIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:groupIdentifier forKey:@"_groupIdentifier"];
  [coderCopy encodeInteger:self->_changeType forKey:@"_changeType"];
  [coderCopy encodeObject:self->_changeAnchor forKey:@"_changeAnchor"];
  [coderCopy encodeObject:self->_changeID forKey:@"_changeID"];
  [coderCopy encodeObject:self->_externalID forKey:@"_externalID"];
}

- (id)description
{
  v3 = MEMORY[0x1E69966B0];
  groupIdentifier = [(CNChangeHistoryGroupChange *)self groupIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryGroupChange changeType](self, "changeType")}];
  changeAnchor = [(CNChangeHistoryGroupChange *)self changeAnchor];
  changeID = [(CNChangeHistoryGroupChange *)self changeID];
  externalID = [(CNChangeHistoryGroupChange *)self externalID];
  group = [(CNChangeHistoryGroupChange *)self group];
  v10 = [v3 descriptionForObject:self withNamesAndObjects:{@"groupIdentifier", groupIdentifier, @"changeType", v5, @"changeAnchor", changeAnchor, @"changeID", changeID, @"externalID", externalID, @"group", group, 0}];

  return v10;
}

@end