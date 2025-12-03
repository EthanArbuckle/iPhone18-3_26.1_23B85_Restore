@interface CNChangeHistoryClearRequest
- (CNChangeHistoryClearRequest)initWithClientIdentifier:(id)identifier;
- (CNChangeHistoryClearRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryClearRequest

- (CNChangeHistoryClearRequest)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CNChangeHistoryClearRequest;
  v5 = [(CNChangeHistoryClearRequest *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (CNChangeHistoryClearRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CNChangeHistoryClearRequest;
  v5 = [(CNChangeHistoryClearRequest *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientIdentifier"];
    v7 = [v6 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_toChangeAnchor"];
    v10 = [v9 copy];
    toChangeAnchor = v5->_toChangeAnchor;
    v5->_toChangeAnchor = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_contactChangeIDs"];
    v16 = [v15 copy];
    contactChangeIDs = v5->_contactChangeIDs;
    v5->_contactChangeIDs = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_groupChangeIDs"];
    v22 = [v21 copy];
    groupChangeIDs = v5->_groupChangeIDs;
    v5->_groupChangeIDs = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v25 = [v24 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v25;

    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientIdentifier = self->_clientIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:clientIdentifier forKey:@"_clientIdentifier"];
  [coderCopy encodeObject:self->_toChangeAnchor forKey:@"_toChangeAnchor"];
  [coderCopy encodeObject:self->_contactChangeIDs forKey:@"_contactChangeIDs"];
  [coderCopy encodeObject:self->_groupChangeIDs forKey:@"_groupChangeIDs"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  clientIdentifier = [(CNChangeHistoryClearRequest *)self clientIdentifier];
  v5 = [v3 appendName:@"clientIdentifier" object:clientIdentifier];

  toChangeAnchor = [(CNChangeHistoryClearRequest *)self toChangeAnchor];
  v7 = [v3 appendName:@"toChangeAnchor" object:toChangeAnchor];

  contactChangeIDs = [(CNChangeHistoryClearRequest *)self contactChangeIDs];
  v9 = [v3 appendName:@"contactChangeIDs" object:contactChangeIDs];

  groupChangeIDs = [(CNChangeHistoryClearRequest *)self groupChangeIDs];
  v11 = [v3 appendName:@"groupChangeIDs" object:groupChangeIDs];

  containerIdentifier = [(CNChangeHistoryClearRequest *)self containerIdentifier];
  v13 = [v3 appendName:@"containerIdentifier" object:containerIdentifier];

  build = [v3 build];

  return build;
}

@end