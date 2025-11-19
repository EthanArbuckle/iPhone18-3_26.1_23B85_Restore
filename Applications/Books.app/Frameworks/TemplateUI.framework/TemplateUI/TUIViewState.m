@interface TUIViewState
- (TUIViewState)initWithDictionary:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)viewStateForIdentifier:(id)a3;
@end

@implementation TUIViewState

- (TUIViewState)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIViewState;
  v6 = [(TUIViewState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewStatesByIdentifier, a3);
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUIMutableViewState alloc];
  v5 = [(TUIViewState *)self viewStatesByIdentifier];
  v6 = [v5 mutableCopy];
  v7 = [(TUIViewState *)v4 initWithDictionary:v6];

  return v7;
}

- (id)viewStateForIdentifier:(id)a3
{
  if (a3)
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