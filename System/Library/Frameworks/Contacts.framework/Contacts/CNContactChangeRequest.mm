@interface CNContactChangeRequest
+ (id)contactChangeRequestWithKind:(int64_t)kind contacts:(id)contacts linkIdentifier:(id)identifier;
- (CNContactChangeRequest)initWithCoder:(id)coder;
- (CNContactChangeRequest)initWithKind:(int64_t)kind contacts:(id)contacts linkIdentifier:(id)identifier;
- (NSArray)contactIdentifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactChangeRequest

+ (id)contactChangeRequestWithKind:(int64_t)kind contacts:(id)contacts linkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactsCopy = contacts;
  v10 = [[self alloc] initWithKind:kind contacts:contactsCopy linkIdentifier:identifierCopy];

  return v10;
}

- (CNContactChangeRequest)initWithKind:(int64_t)kind contacts:(id)contacts linkIdentifier:(id)identifier
{
  contactsCopy = contacts;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CNContactChangeRequest;
  v10 = [(CNContactChangeRequest *)&v16 init];
  if (v10)
  {
    v11 = [contactsCopy copy];
    contacts = v10->_contacts;
    v10->_contacts = v11;

    v10->_kind = kind;
    v13 = [identifierCopy copy];
    linkIdentifier = v10->_linkIdentifier;
    v10->_linkIdentifier = v13;
  }

  return v10;
}

- (CNContactChangeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CNContactChangeRequest;
  v5 = [(CNContactChangeRequest *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_contacts"];
    contacts = v5->_contacts;
    v5->_contacts = v9;

    v5->_kind = [coderCopy decodeIntegerForKey:@"_kind"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_linkIdentifier"];
    v12 = [v11 copy];
    linkIdentifier = v5->_linkIdentifier;
    v5->_linkIdentifier = v12;

    objc_storeStrong(&v5->_linkIdentifier, v12);
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contacts = self->_contacts;
  coderCopy = coder;
  [coderCopy encodeObject:contacts forKey:@"_contacts"];
  [coderCopy encodeInteger:self->_kind forKey:@"_kind"];
  [coderCopy encodeObject:self->_linkIdentifier forKey:@"_linkIdentifier"];
}

- (NSArray)contactIdentifiers
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_contacts, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_contacts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 isUnified])
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          identifier2 = [v9 linkedContactsFromStoreWithIdentifier:{0, 0}];
          v11 = [identifier2 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(identifier2);
                }

                identifier = [*(*(&v17 + 1) + 8 * j) identifier];
                [v3 addObject:identifier];
              }

              v12 = [identifier2 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }

        else
        {
          identifier2 = [v9 identifier];
          [v3 addObject:identifier2];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

@end