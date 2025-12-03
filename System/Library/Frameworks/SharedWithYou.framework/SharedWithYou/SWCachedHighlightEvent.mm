@interface SWCachedHighlightEvent
+ (id)cachedEvent:(id)event forHighlight:(id)highlight;
- (SWCachedHighlightEvent)initWithEvent:(id)event forHighlight:(id)highlight;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SWCachedHighlightEvent

+ (id)cachedEvent:(id)event forHighlight:(id)highlight
{
  highlightCopy = highlight;
  eventCopy = event;
  v8 = [[self alloc] initWithEvent:eventCopy forHighlight:highlightCopy];

  return v8;
}

- (SWCachedHighlightEvent)initWithEvent:(id)event forHighlight:(id)highlight
{
  eventCopy = event;
  highlightCopy = highlight;
  v14.receiver = self;
  v14.super_class = SWCachedHighlightEvent;
  v9 = [(SWCachedHighlightEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    objc_storeStrong(&v10->_highlight, highlight);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v10->_uuid;
    v10->_uuid = uUID;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  event = [(SWCachedHighlightEvent *)self event];
  highlight = [(SWCachedHighlightEvent *)self highlight];
  v7 = [v4 initWithEvent:event forHighlight:highlight];

  return v7;
}

@end