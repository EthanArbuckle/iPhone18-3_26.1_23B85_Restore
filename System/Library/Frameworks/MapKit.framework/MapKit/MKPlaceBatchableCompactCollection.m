@interface MKPlaceBatchableCompactCollection
- (BOOL)isEqual:(id)a3;
- (MKPlaceBatchableCompactCollection)initWithIdentifier:(id)a3;
- (MKPlaceBatchableCompactCollection)initWithWorldwideViewModel:(id)a3;
- (id)description;
@end

@implementation MKPlaceBatchableCompactCollection

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MKPlaceBatchableCompactCollection *)self guideLocationIdentifier];
    v8 = [(MKPlaceBatchableCompactCollection *)v6 guideLocationIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(MKPlaceBatchableCompactCollection *)self viewModel];
      v10 = [v9 isEqual:v6];
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
  v4 = [(MKPlaceBatchableCompactCollection *)self guideLocationIdentifier];
  v5 = [v4 muid];
  v6 = [(MKPlaceCompactCollectionViewModel *)self->_viewModel title];
  v7 = [v6 string];
  v8 = [v3 stringWithFormat:@"%llu - %@", v5, v7];

  return v8;
}

- (MKPlaceBatchableCompactCollection)initWithWorldwideViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKPlaceBatchableCompactCollection;
  v6 = [(MKPlaceBatchableCompactCollection *)&v9 init];
  v7 = v6;
  if (v5)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

- (MKPlaceBatchableCompactCollection)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKPlaceBatchableCompactCollection;
  v6 = [(MKPlaceBatchableCompactCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guideLocationIdentifier, a3);
  }

  return v7;
}

@end