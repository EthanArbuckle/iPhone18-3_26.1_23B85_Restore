@interface TUIViewState
- (TUIViewState)initWithDictionary:(id)dictionary;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)viewStateForIdentifier:(id)identifier;
@end

@implementation TUIViewState

- (TUIViewState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = TUIViewState;
  v6 = [(TUIViewState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewStatesByIdentifier, dictionary);
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUIMutableViewState alloc];
  viewStatesByIdentifier = [(TUIViewState *)self viewStatesByIdentifier];
  v6 = [viewStatesByIdentifier mutableCopy];
  v7 = [(TUIViewState *)v4 initWithDictionary:v6];

  return v7;
}

- (id)viewStateForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_viewStatesByIdentifier objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end