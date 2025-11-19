@interface TUIMutableFeedViewState
- (TUIMutableFeedViewState)initWithOther:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEmbeddedScrollAnchor:(id)a3 forIdentifier:(id)a4;
@end

@implementation TUIMutableFeedViewState

- (TUIMutableFeedViewState)initWithOther:(id)a3
{
  v8.receiver = self;
  v8.super_class = TUIMutableFeedViewState;
  v3 = [(TUIFeedViewState *)&v8 initWithOther:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(TUIFeedViewState *)v3 embeddedScrollAnchors];
    v6 = [v5 mutableCopy];
    [(TUIFeedViewState *)v4 setEmbeddedScrollAnchors:v6];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUIFeedViewState alloc];

  return [(TUIFeedViewState *)v4 initWithOther:self];
}

- (void)setEmbeddedScrollAnchor:(id)a3 forIdentifier:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(TUIFeedViewState *)self embeddedScrollAnchors];

    if (!v8)
    {
      v9 = objc_opt_new();
      [(TUIFeedViewState *)self setEmbeddedScrollAnchors:v9];
    }

    v10 = [(TUIFeedViewState *)self embeddedScrollAnchors];
    [v10 setObject:v7 forKeyedSubscript:v6];
  }
}

@end