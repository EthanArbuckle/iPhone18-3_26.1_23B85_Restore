@interface TUIMutableViewState
- (TUIMutableViewState)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setViewState:(id)a3 forIdentifier:(id)a4;
@end

@implementation TUIMutableViewState

- (TUIMutableViewState)init
{
  v3 = objc_opt_new();
  v4 = [(TUIViewState *)self initWithDictionary:v3];

  return v4;
}

- (void)setViewState:(id)a3 forIdentifier:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(TUIViewState *)self viewStatesByIdentifier];
    [v8 setObject:v7 forKeyedSubscript:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUIViewState alloc];
  v5 = [(TUIViewState *)self viewStatesByIdentifier];
  v6 = [v5 copy];
  v7 = [(TUIViewState *)v4 initWithDictionary:v6];

  return v7;
}

@end