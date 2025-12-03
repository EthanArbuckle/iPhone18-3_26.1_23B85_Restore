@interface SWHighlightPersistenceEvent
- (SWHighlightPersistenceEvent)initWithCoder:(id)coder;
- (SWHighlightPersistenceEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightPersistenceEventTrigger)trigger;
- (SWHighlightPersistenceEvent)initWithHighlight:(id)highlight type:(int64_t)type;
- (SWHighlightPersistenceEvent)initWithHighlightURL:(id)l type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWHighlightPersistenceEvent

- (SWHighlightPersistenceEvent)initWithHighlightURL:(id)l type:(int64_t)type
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = SWHighlightPersistenceEvent;
  v8 = [(SWHighlightPersistenceEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightURL, l);
    v9->_persistenceEventType = type;
  }

  return v9;
}

- (SWHighlightPersistenceEvent)initWithHighlight:(id)highlight type:(int64_t)type
{
  v6 = [highlight URL];
  v7 = [(SWHighlightPersistenceEvent *)self initWithHighlightURL:v6 type:type];

  return v7;
}

- (SWHighlightPersistenceEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightPersistenceEventTrigger)trigger
{
  v6 = [(SWHighlight *)highlight URL];
  v7 = [(SWHighlightPersistenceEvent *)self initWithHighlightURL:v6 type:trigger];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  highlightURL = [(SWHighlightPersistenceEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v6];

  persistenceEventType = [(SWHighlightPersistenceEvent *)self persistenceEventType];
  v8 = NSStringFromSelector(sel_persistenceEventType);
  [coderCopy encodeInteger:persistenceEventType forKey:v8];
}

- (SWHighlightPersistenceEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_persistenceEventType);
  v9 = [coderCopy decodeIntegerForKey:v8];

  if (v7)
  {
    self = [(SWHighlightPersistenceEvent *)self initWithHighlightURL:v7 type:v9];
    selfCopy = self;
  }

  else
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightPersistenceEvent initWithCoder:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  highlightURL = [(SWHighlightPersistenceEvent *)self highlightURL];
  v6 = [v4 initWithHighlightURL:highlightURL type:{-[SWHighlightPersistenceEvent persistenceEventType](self, "persistenceEventType")}];

  return v6;
}

@end