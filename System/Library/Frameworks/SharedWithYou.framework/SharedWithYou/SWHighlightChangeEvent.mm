@interface SWHighlightChangeEvent
- (SWHighlightChangeEvent)initWithCoder:(id)coder;
- (SWHighlightChangeEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightChangeEventTrigger)trigger;
- (SWHighlightChangeEvent)initWithHighlight:(id)highlight type:(int64_t)type;
- (SWHighlightChangeEvent)initWithHighlightURL:(id)l type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWHighlightChangeEvent

- (SWHighlightChangeEvent)initWithHighlightURL:(id)l type:(int64_t)type
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = SWHighlightChangeEvent;
  v8 = [(SWHighlightChangeEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightURL, l);
    v9->_changeEventType = type;
  }

  return v9;
}

- (SWHighlightChangeEvent)initWithHighlight:(id)highlight type:(int64_t)type
{
  v6 = [highlight URL];
  v7 = [(SWHighlightChangeEvent *)self initWithHighlightURL:v6 type:type];

  return v7;
}

- (SWHighlightChangeEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightChangeEventTrigger)trigger
{
  v6 = [(SWHighlight *)highlight URL];
  v7 = [(SWHighlightChangeEvent *)self initWithHighlightURL:v6 type:trigger];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  highlightURL = [(SWHighlightChangeEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v6];

  changeEventType = [(SWHighlightChangeEvent *)self changeEventType];
  v8 = NSStringFromSelector(sel_changeEventType);
  [coderCopy encodeInteger:changeEventType forKey:v8];
}

- (SWHighlightChangeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_changeEventType);
  v9 = [coderCopy decodeIntegerForKey:v8];

  if (v7)
  {
    self = [(SWHighlightChangeEvent *)self initWithHighlightURL:v7 type:v9];
    selfCopy = self;
  }

  else
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightChangeEvent initWithCoder:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  highlightURL = [(SWHighlightChangeEvent *)self highlightURL];
  v6 = [v4 initWithHighlightURL:highlightURL type:{-[SWHighlightChangeEvent changeEventType](self, "changeEventType")}];

  return v6;
}

@end