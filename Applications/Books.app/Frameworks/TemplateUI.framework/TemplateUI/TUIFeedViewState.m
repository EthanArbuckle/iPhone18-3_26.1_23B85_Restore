@interface TUIFeedViewState
- (TUIFeedViewState)initWithOther:(id)a3;
- (id)embeddedScrollAnchorForIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TUIFeedViewState

- (TUIFeedViewState)initWithOther:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUIFeedViewState;
  v5 = [(TUIFeedViewState *)&v13 init];
  if (v5)
  {
    v6 = [v4 feedScrollAnchor];
    v7 = [v6 copy];
    feedScrollAnchor = v5->_feedScrollAnchor;
    v5->_feedScrollAnchor = v7;

    v9 = [v4 embeddedScrollAnchors];
    v10 = [v9 copy];
    embeddedScrollAnchors = v5->_embeddedScrollAnchors;
    v5->_embeddedScrollAnchors = v10;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUIMutableFeedViewState alloc];

  return [(TUIMutableFeedViewState *)v4 initWithOther:self];
}

- (id)embeddedScrollAnchorForIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_embeddedScrollAnchors objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end