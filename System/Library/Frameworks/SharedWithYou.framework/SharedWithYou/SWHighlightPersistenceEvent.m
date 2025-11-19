@interface SWHighlightPersistenceEvent
- (SWHighlightPersistenceEvent)initWithCoder:(id)a3;
- (SWHighlightPersistenceEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightPersistenceEventTrigger)trigger;
- (SWHighlightPersistenceEvent)initWithHighlight:(id)a3 type:(int64_t)a4;
- (SWHighlightPersistenceEvent)initWithHighlightURL:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWHighlightPersistenceEvent

- (SWHighlightPersistenceEvent)initWithHighlightURL:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SWHighlightPersistenceEvent;
  v8 = [(SWHighlightPersistenceEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightURL, a3);
    v9->_persistenceEventType = a4;
  }

  return v9;
}

- (SWHighlightPersistenceEvent)initWithHighlight:(id)a3 type:(int64_t)a4
{
  v6 = [a3 URL];
  v7 = [(SWHighlightPersistenceEvent *)self initWithHighlightURL:v6 type:a4];

  return v7;
}

- (SWHighlightPersistenceEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightPersistenceEventTrigger)trigger
{
  v6 = [(SWHighlight *)highlight URL];
  v7 = [(SWHighlightPersistenceEvent *)self initWithHighlightURL:v6 type:trigger];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWHighlightPersistenceEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWHighlightPersistenceEvent *)self persistenceEventType];
  v8 = NSStringFromSelector(sel_persistenceEventType);
  [v4 encodeInteger:v7 forKey:v8];
}

- (SWHighlightPersistenceEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_persistenceEventType);
  v9 = [v4 decodeIntegerForKey:v8];

  if (v7)
  {
    self = [(SWHighlightPersistenceEvent *)self initWithHighlightURL:v7 type:v9];
    v10 = self;
  }

  else
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightPersistenceEvent initWithCoder:v11];
    }

    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SWHighlightPersistenceEvent *)self highlightURL];
  v6 = [v4 initWithHighlightURL:v5 type:{-[SWHighlightPersistenceEvent persistenceEventType](self, "persistenceEventType")}];

  return v6;
}

@end