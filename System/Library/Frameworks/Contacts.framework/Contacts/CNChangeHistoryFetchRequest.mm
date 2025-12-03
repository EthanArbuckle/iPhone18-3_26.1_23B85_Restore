@interface CNChangeHistoryFetchRequest
- (CNChangeHistoryAnchor)startingAnchor;
- (CNChangeHistoryFetchRequest)init;
- (CNChangeHistoryFetchRequest)initWithClientIdentifier:(id)identifier;
- (CNChangeHistoryFetchRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setStartingAnchor:(id)anchor;
@end

@implementation CNChangeHistoryFetchRequest

- (CNChangeHistoryFetchRequest)init
{
  v6.receiver = self;
  v6.super_class = CNChangeHistoryFetchRequest;
  v2 = [(CNChangeHistoryFetchRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultType = 2;
    v2->_shouldUnifyResults = 1;
    v4 = v2;
  }

  return v3;
}

- (CNChangeHistoryFetchRequest)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CNChangeHistoryFetchRequest;
  v5 = [(CNChangeHistoryFetchRequest *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_resultType = 2;
    v7 = [identifierCopy copy];
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v7;

    v6->_includeGroupChanges = 0;
    v6->_includeChangeAnchors = 0;
    v6->_includeChangeIDs = 0;
    v6->_includeExternalIDs = 0;
    v6->_includeImagesChanged = 0;
    v6->_includeLabeledValueChanges = 0;
    v6->_includeLinkingChanges = 0;
    v6->_includeMeCardChanges = 0;
    v6->_shouldUnifyResults = 1;
    v6->_mutableObjects = 0;
    v6->_enforceClientIdentifier = 1;
    v9 = v6;
  }

  return v6;
}

- (CNChangeHistoryFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CNChangeHistoryFetchRequest;
  v5 = [(CNChangeHistoryFetchRequest *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientIdentifier"];
    v7 = [v6 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v5->_shouldUnifyResults = [coderCopy decodeBoolForKey:@"_shouldUnifyResults"];
    v5->_includeGroupChanges = [coderCopy decodeBoolForKey:@"_includeGroupChanges"];
    v5->_includeChangeAnchors = [coderCopy decodeBoolForKey:@"_includeChangeAnchors"];
    v5->_includeChangeIDs = [coderCopy decodeBoolForKey:@"_includeChangeIDs"];
    v5->_includeExternalIDs = [coderCopy decodeBoolForKey:@"_includeExternalIDs"];
    v5->_includeImagesChanged = [coderCopy decodeBoolForKey:@"_includeImagesChanged"];
    v5->_includeLabeledValueChanges = [coderCopy decodeBoolForKey:@"_includeLabeledValueChanges"];
    v5->_includeLinkingChanges = [coderCopy decodeBoolForKey:@"_includeLinkingChanges"];
    v5->_includeMeCardChanges = [coderCopy decodeBoolForKey:@"_includeMeCardChanges"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v10 = [v9 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v5->_enforceClientIdentifier = [coderCopy decodeBoolForKey:@"_enforceClientIdentifier"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startingToken"];
    v13 = [v12 copy];
    startingToken = v5->_startingToken;
    v5->_startingToken = v13;

    v5->_resultType = [coderCopy decodeIntegerForKey:@"_resultType"];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_excludedTransactionAuthors"];
    v19 = [v18 copy];
    excludedTransactionAuthors = v5->_excludedTransactionAuthors;
    v5->_excludedTransactionAuthors = v19;

    v21 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientIdentifier = self->_clientIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:clientIdentifier forKey:@"_clientIdentifier"];
  [coderCopy encodeBool:self->_shouldUnifyResults forKey:@"_shouldUnifyResults"];
  [coderCopy encodeBool:self->_includeGroupChanges forKey:@"_includeGroupChanges"];
  [coderCopy encodeBool:self->_includeChangeAnchors forKey:@"_includeChangeAnchors"];
  [coderCopy encodeBool:self->_includeChangeIDs forKey:@"_includeChangeIDs"];
  [coderCopy encodeBool:self->_includeExternalIDs forKey:@"_includeExternalIDs"];
  [coderCopy encodeBool:self->_includeImagesChanged forKey:@"_includeImagesChanged"];
  [coderCopy encodeBool:self->_includeLabeledValueChanges forKey:@"_includeLabeledValueChanges"];
  [coderCopy encodeBool:self->_includeLinkingChanges forKey:@"_includeLinkingChanges"];
  [coderCopy encodeBool:self->_includeMeCardChanges forKey:@"_includeMeCardChanges"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
  [coderCopy encodeBool:self->_enforceClientIdentifier forKey:@"_enforceClientIdentifier"];
  [coderCopy encodeObject:self->_startingToken forKey:@"_startingToken"];
  [coderCopy encodeInteger:self->_resultType forKey:@"_resultType"];
  [coderCopy encodeObject:self->_excludedTransactionAuthors forKey:@"_excludedTransactionAuthors"];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"resultType" integerValue:{-[CNChangeHistoryFetchRequest resultType](self, "resultType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest shouldUnifyResults](self, "shouldUnifyResults")}];
  v6 = [v3 appendName:@"shouldUnifyResults" object:v5];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeGroupChanges](self, "includeGroupChanges")}];
  v8 = [v3 appendName:@"includeGroupChanges" object:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeExternalIDs](self, "includeExternalIDs")}];
  v10 = [v3 appendName:@"includeExternalIDs" object:v9];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeLabeledValueChanges](self, "includeLabeledValueChanges")}];
  v12 = [v3 appendName:@"includeLabeledValueChanges" object:v11];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeLinkingChanges](self, "includeLinkingChanges")}];
  v14 = [v3 appendName:@"includeLinkingChanges" object:v13];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeMeCardChanges](self, "includeMeCardChanges")}];
  v16 = [v3 appendName:@"includeMeCardChanges" object:v15];

  containerIdentifier = [(CNChangeHistoryFetchRequest *)self containerIdentifier];
  v18 = [v3 appendName:@"containerIdentifier" object:containerIdentifier];

  startingAnchor = [(CNChangeHistoryFetchRequest *)self startingAnchor];

  if (startingAnchor)
  {
    startingAnchor2 = [(CNChangeHistoryFetchRequest *)self startingAnchor];
    v21 = [v3 appendName:@"startingAnchor" object:startingAnchor2];
  }

  v22 = [v3 appendName:@"shouldEnforceClientIdentifier" BOOLValue:{-[CNChangeHistoryFetchRequest shouldEnforceClientIdentifer](self, "shouldEnforceClientIdentifer")}];
  excludedTransactionAuthors = [(CNChangeHistoryFetchRequest *)self excludedTransactionAuthors];
  v24 = [v3 appendName:@"excludedTransactionAuthors" object:excludedTransactionAuthors];

  clientIdentifier = [(CNChangeHistoryFetchRequest *)self clientIdentifier];
  v26 = [v3 appendName:@"clientIdentifier" object:clientIdentifier];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeChangeAnchors](self, "includeChangeAnchors")}];
  v28 = [v3 appendName:@"includeChangeAnchors" object:v27];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeChangeIDs](self, "includeChangeIDs")}];
  v30 = [v3 appendName:@"includeChangeIDs" object:v29];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryFetchRequest includeImagesChanged](self, "includeImagesChanged")}];
  v32 = [v3 appendName:@"includeImagesChanged" object:v31];

  build = [v3 build];

  return build;
}

- (CNChangeHistoryAnchor)startingAnchor
{
  v3 = [CNChangeHistoryAnchor alloc];
  startingToken = [(CNChangeHistoryFetchRequest *)self startingToken];
  v5 = [(CNChangeHistoryAnchor *)v3 initWithHistoryToken:startingToken error:0];

  return v5;
}

- (void)setStartingAnchor:(id)anchor
{
  historyToken = [anchor historyToken];
  [(CNChangeHistoryFetchRequest *)self setStartingToken:historyToken];
}

@end