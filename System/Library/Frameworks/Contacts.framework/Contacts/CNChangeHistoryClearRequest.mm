@interface CNChangeHistoryClearRequest
- (CNChangeHistoryClearRequest)initWithClientIdentifier:(id)a3;
- (CNChangeHistoryClearRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryClearRequest

- (CNChangeHistoryClearRequest)initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNChangeHistoryClearRequest;
  v5 = [(CNChangeHistoryClearRequest *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (CNChangeHistoryClearRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CNChangeHistoryClearRequest;
  v5 = [(CNChangeHistoryClearRequest *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientIdentifier"];
    v7 = [v6 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_toChangeAnchor"];
    v10 = [v9 copy];
    toChangeAnchor = v5->_toChangeAnchor;
    v5->_toChangeAnchor = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_contactChangeIDs"];
    v16 = [v15 copy];
    contactChangeIDs = v5->_contactChangeIDs;
    v5->_contactChangeIDs = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_groupChangeIDs"];
    v22 = [v21 copy];
    groupChangeIDs = v5->_groupChangeIDs;
    v5->_groupChangeIDs = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v25 = [v24 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v25;

    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientIdentifier = self->_clientIdentifier;
  v5 = a3;
  [v5 encodeObject:clientIdentifier forKey:@"_clientIdentifier"];
  [v5 encodeObject:self->_toChangeAnchor forKey:@"_toChangeAnchor"];
  [v5 encodeObject:self->_contactChangeIDs forKey:@"_contactChangeIDs"];
  [v5 encodeObject:self->_groupChangeIDs forKey:@"_groupChangeIDs"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNChangeHistoryClearRequest *)self clientIdentifier];
  v5 = [v3 appendName:@"clientIdentifier" object:v4];

  v6 = [(CNChangeHistoryClearRequest *)self toChangeAnchor];
  v7 = [v3 appendName:@"toChangeAnchor" object:v6];

  v8 = [(CNChangeHistoryClearRequest *)self contactChangeIDs];
  v9 = [v3 appendName:@"contactChangeIDs" object:v8];

  v10 = [(CNChangeHistoryClearRequest *)self groupChangeIDs];
  v11 = [v3 appendName:@"groupChangeIDs" object:v10];

  v12 = [(CNChangeHistoryClearRequest *)self containerIdentifier];
  v13 = [v3 appendName:@"containerIdentifier" object:v12];

  v14 = [v3 build];

  return v14;
}

@end