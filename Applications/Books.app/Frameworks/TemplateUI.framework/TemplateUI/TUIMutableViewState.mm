@interface TUIMutableViewState
- (TUIMutableViewState)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setViewState:(id)state forIdentifier:(id)identifier;
@end

@implementation TUIMutableViewState

- (TUIMutableViewState)init
{
  v3 = objc_opt_new();
  v4 = [(TUIViewState *)self initWithDictionary:v3];

  return v4;
}

- (void)setViewState:(id)state forIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    stateCopy = state;
    viewStatesByIdentifier = [(TUIViewState *)self viewStatesByIdentifier];
    [viewStatesByIdentifier setObject:stateCopy forKeyedSubscript:identifierCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUIViewState alloc];
  viewStatesByIdentifier = [(TUIViewState *)self viewStatesByIdentifier];
  v6 = [viewStatesByIdentifier copy];
  v7 = [(TUIViewState *)v4 initWithDictionary:v6];

  return v7;
}

@end