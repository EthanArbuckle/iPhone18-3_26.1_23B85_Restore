@interface CNChangeHistoryGroupChange
- (CNChangeHistoryGroupChange)initWithCoder:(id)a3;
- (CNChangeHistoryGroupChange)initWithIdentifier:(id)a3 changeType:(int64_t)a4 changeAnchor:(id)a5 changeID:(id)a6 externalID:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryGroupChange

- (CNChangeHistoryGroupChange)initWithIdentifier:(id)a3 changeType:(int64_t)a4 changeAnchor:(id)a5 changeID:(id)a6 externalID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = CNChangeHistoryGroupChange;
  v16 = [(CNChangeHistoryGroupChange *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    groupIdentifier = v16->_groupIdentifier;
    v16->_groupIdentifier = v17;

    v16->_changeType = a4;
    v19 = [v13 copy];
    changeAnchor = v16->_changeAnchor;
    v16->_changeAnchor = v19;

    v21 = [v14 copy];
    changeID = v16->_changeID;
    v16->_changeID = v21;

    v23 = [v15 copy];
    externalID = v16->_externalID;
    v16->_externalID = v23;

    v25 = v16;
  }

  return v16;
}

- (CNChangeHistoryGroupChange)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNChangeHistoryGroupChange;
  v5 = [(CNChangeHistoryGroupChange *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    v7 = [v6 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v5->_changeType = [v4 decodeIntegerForKey:@"_changeType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_changeAnchor"];
    v10 = [v9 copy];
    changeAnchor = v5->_changeAnchor;
    v5->_changeAnchor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_changeID"];
    v13 = [v12 copy];
    changeID = v5->_changeID;
    v5->_changeID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_externalID"];
    v16 = [v15 copy];
    externalID = v5->_externalID;
    v5->_externalID = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  groupIdentifier = self->_groupIdentifier;
  v5 = a3;
  [v5 encodeObject:groupIdentifier forKey:@"_groupIdentifier"];
  [v5 encodeInteger:self->_changeType forKey:@"_changeType"];
  [v5 encodeObject:self->_changeAnchor forKey:@"_changeAnchor"];
  [v5 encodeObject:self->_changeID forKey:@"_changeID"];
  [v5 encodeObject:self->_externalID forKey:@"_externalID"];
}

- (id)description
{
  v3 = MEMORY[0x1E69966B0];
  v4 = [(CNChangeHistoryGroupChange *)self groupIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryGroupChange changeType](self, "changeType")}];
  v6 = [(CNChangeHistoryGroupChange *)self changeAnchor];
  v7 = [(CNChangeHistoryGroupChange *)self changeID];
  v8 = [(CNChangeHistoryGroupChange *)self externalID];
  v9 = [(CNChangeHistoryGroupChange *)self group];
  v10 = [v3 descriptionForObject:self withNamesAndObjects:{@"groupIdentifier", v4, @"changeType", v5, @"changeAnchor", v6, @"changeID", v7, @"externalID", v8, @"group", v9, 0}];

  return v10;
}

@end