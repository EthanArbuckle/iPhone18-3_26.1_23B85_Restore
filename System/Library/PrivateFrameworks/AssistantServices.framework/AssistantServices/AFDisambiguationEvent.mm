@interface AFDisambiguationEvent
- (AFDisambiguationEvent)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFDisambiguationEvent

- (id)description
{
  selectionType = self->_selectionType;
  if (selectionType > 2)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_1E7342590[selectionType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier: %@, Selection Type: %@, Date: %@", self->_itemIdentifier, v3, self->_date];
}

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [v5 encodeInteger:self->_selectionType forKey:@"_selectionType"];
  [v5 encodeObject:self->_date forKey:@"_date"];
}

- (AFDisambiguationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AFDisambiguationEvent;
  v5 = [(AFDisambiguationEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v5->_selectionType = [v4 decodeIntegerForKey:@"_selectionType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

@end