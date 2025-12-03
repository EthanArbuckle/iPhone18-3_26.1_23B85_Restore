@interface TUIMutableFeedViewState
- (TUIMutableFeedViewState)initWithOther:(id)other;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEmbeddedScrollAnchor:(id)anchor forIdentifier:(id)identifier;
@end

@implementation TUIMutableFeedViewState

- (TUIMutableFeedViewState)initWithOther:(id)other
{
  v8.receiver = self;
  v8.super_class = TUIMutableFeedViewState;
  v3 = [(TUIFeedViewState *)&v8 initWithOther:other];
  v4 = v3;
  if (v3)
  {
    embeddedScrollAnchors = [(TUIFeedViewState *)v3 embeddedScrollAnchors];
    v6 = [embeddedScrollAnchors mutableCopy];
    [(TUIFeedViewState *)v4 setEmbeddedScrollAnchors:v6];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUIFeedViewState alloc];

  return [(TUIFeedViewState *)v4 initWithOther:self];
}

- (void)setEmbeddedScrollAnchor:(id)anchor forIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    anchorCopy = anchor;
    embeddedScrollAnchors = [(TUIFeedViewState *)self embeddedScrollAnchors];

    if (!embeddedScrollAnchors)
    {
      v9 = objc_opt_new();
      [(TUIFeedViewState *)self setEmbeddedScrollAnchors:v9];
    }

    embeddedScrollAnchors2 = [(TUIFeedViewState *)self embeddedScrollAnchors];
    [embeddedScrollAnchors2 setObject:anchorCopy forKeyedSubscript:identifierCopy];
  }
}

@end