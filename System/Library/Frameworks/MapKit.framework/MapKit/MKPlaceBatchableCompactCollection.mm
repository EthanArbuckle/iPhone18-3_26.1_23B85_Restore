@interface MKPlaceBatchableCompactCollection
- (BOOL)isEqual:(id)equal;
- (MKPlaceBatchableCompactCollection)initWithIdentifier:(id)identifier;
- (MKPlaceBatchableCompactCollection)initWithWorldwideViewModel:(id)model;
- (id)description;
@end

@implementation MKPlaceBatchableCompactCollection

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    guideLocationIdentifier = [(MKPlaceBatchableCompactCollection *)self guideLocationIdentifier];
    guideLocationIdentifier2 = [(MKPlaceBatchableCompactCollection *)v6 guideLocationIdentifier];
    if ([guideLocationIdentifier isEqual:guideLocationIdentifier2])
    {
      viewModel = [(MKPlaceBatchableCompactCollection *)self viewModel];
      v10 = [viewModel isEqual:v6];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  guideLocationIdentifier = [(MKPlaceBatchableCompactCollection *)self guideLocationIdentifier];
  muid = [guideLocationIdentifier muid];
  title = [(MKPlaceCompactCollectionViewModel *)self->_viewModel title];
  string = [title string];
  v8 = [v3 stringWithFormat:@"%llu - %@", muid, string];

  return v8;
}

- (MKPlaceBatchableCompactCollection)initWithWorldwideViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = MKPlaceBatchableCompactCollection;
  v6 = [(MKPlaceBatchableCompactCollection *)&v9 init];
  v7 = v6;
  if (modelCopy)
  {
    objc_storeStrong(&v6->_viewModel, model);
  }

  return v7;
}

- (MKPlaceBatchableCompactCollection)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MKPlaceBatchableCompactCollection;
  v6 = [(MKPlaceBatchableCompactCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guideLocationIdentifier, identifier);
  }

  return v7;
}

@end