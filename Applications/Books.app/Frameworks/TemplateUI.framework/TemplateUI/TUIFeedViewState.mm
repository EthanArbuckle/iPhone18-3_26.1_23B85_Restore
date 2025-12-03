@interface TUIFeedViewState
- (TUIFeedViewState)initWithOther:(id)other;
- (id)embeddedScrollAnchorForIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TUIFeedViewState

- (TUIFeedViewState)initWithOther:(id)other
{
  otherCopy = other;
  v13.receiver = self;
  v13.super_class = TUIFeedViewState;
  v5 = [(TUIFeedViewState *)&v13 init];
  if (v5)
  {
    feedScrollAnchor = [otherCopy feedScrollAnchor];
    v7 = [feedScrollAnchor copy];
    feedScrollAnchor = v5->_feedScrollAnchor;
    v5->_feedScrollAnchor = v7;

    embeddedScrollAnchors = [otherCopy embeddedScrollAnchors];
    v10 = [embeddedScrollAnchors copy];
    embeddedScrollAnchors = v5->_embeddedScrollAnchors;
    v5->_embeddedScrollAnchors = v10;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUIMutableFeedViewState alloc];

  return [(TUIMutableFeedViewState *)v4 initWithOther:self];
}

- (id)embeddedScrollAnchorForIdentifier:(id)identifier
{
  if (identifier)
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