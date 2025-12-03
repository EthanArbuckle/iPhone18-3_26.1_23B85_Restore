@interface INShowPersonInteractionsIntent
- (INShowPersonInteractionsIntent)initWithCoder:(id)coder;
- (INShowPersonInteractionsIntent)initWithPerson:(id)person focusItemIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INShowPersonInteractionsIntent

- (INShowPersonInteractionsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"focusItemIdentifier"];
  v7 = [(INShowPersonInteractionsIntent *)self initWithPerson:v5 focusItemIdentifier:v6];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(INIntent *)v7 setIdentifier:v8];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INShowPersonInteractionsIntent;
  coderCopy = coder;
  [(INIntent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_person forKey:{@"person", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_focusItemIdentifier forKey:@"focusItemIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = INShowPersonInteractionsIntent;
  v4 = [(INIntent *)&v8 copyWithZone:zone];
  person = [(INShowPersonInteractionsIntent *)self person];
  [v4 setPerson:person];

  focusItemIdentifier = [(INShowPersonInteractionsIntent *)self focusItemIdentifier];
  [v4 setFocusItemIdentifier:focusItemIdentifier];

  return v4;
}

- (INShowPersonInteractionsIntent)initWithPerson:(id)person focusItemIdentifier:(id)identifier
{
  personCopy = person;
  identifierCopy = identifier;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12.receiver = self;
  v12.super_class = INShowPersonInteractionsIntent;
  v10 = [(INIntent *)&v12 initWithIdentifier:uUIDString backingStore:0];

  if (v10)
  {
    [(INShowPersonInteractionsIntent *)v10 setPerson:personCopy];
    [(INShowPersonInteractionsIntent *)v10 setFocusItemIdentifier:identifierCopy];
  }

  return v10;
}

@end