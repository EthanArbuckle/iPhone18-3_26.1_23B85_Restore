@interface INShowPersonInteractionsIntent
- (INShowPersonInteractionsIntent)initWithCoder:(id)a3;
- (INShowPersonInteractionsIntent)initWithPerson:(id)a3 focusItemIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INShowPersonInteractionsIntent

- (INShowPersonInteractionsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"focusItemIdentifier"];
  v7 = [(INShowPersonInteractionsIntent *)self initWithPerson:v5 focusItemIdentifier:v6];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(INIntent *)v7 setIdentifier:v8];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INShowPersonInteractionsIntent;
  v4 = a3;
  [(INIntent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_person forKey:{@"person", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_focusItemIdentifier forKey:@"focusItemIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = INShowPersonInteractionsIntent;
  v4 = [(INIntent *)&v8 copyWithZone:a3];
  v5 = [(INShowPersonInteractionsIntent *)self person];
  [v4 setPerson:v5];

  v6 = [(INShowPersonInteractionsIntent *)self focusItemIdentifier];
  [v4 setFocusItemIdentifier:v6];

  return v4;
}

- (INShowPersonInteractionsIntent)initWithPerson:(id)a3 focusItemIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v12.receiver = self;
  v12.super_class = INShowPersonInteractionsIntent;
  v10 = [(INIntent *)&v12 initWithIdentifier:v9 backingStore:0];

  if (v10)
  {
    [(INShowPersonInteractionsIntent *)v10 setPerson:v6];
    [(INShowPersonInteractionsIntent *)v10 setFocusItemIdentifier:v7];
  }

  return v10;
}

@end