@interface _SWHighlightEvent
- (_SWHighlightEvent)initWithCoder:(id)coder;
- (_SWHighlightEvent)initWithHighlight:(id)highlight action:(int64_t)action;
- (_SWHighlightEvent)initWithHighlightURL:(id)l action:(int64_t)action;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWHighlightEvent

- (_SWHighlightEvent)initWithHighlightURL:(id)l action:(int64_t)action
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = _SWHighlightEvent;
  v8 = [(_SWHighlightEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightURL, l);
    v9->_action = action;
  }

  return v9;
}

- (_SWHighlightEvent)initWithHighlight:(id)highlight action:(int64_t)action
{
  v6 = [highlight URL];
  v7 = [(_SWHighlightEvent *)self initWithHighlightURL:v6 action:action];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  highlightURL = [(_SWHighlightEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v6];

  action = [(_SWHighlightEvent *)self action];
  v8 = NSStringFromSelector(sel_action);
  [coderCopy encodeInteger:action forKey:v8];
}

- (_SWHighlightEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_action);
  v9 = [coderCopy decodeIntegerForKey:v8];

  if (v7)
  {
    self = [(_SWHighlightEvent *)self initWithHighlightURL:v7 action:v9];
    selfCopy = self;
  }

  else
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SWHighlightEvent initWithCoder:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  highlightURL = [(_SWHighlightEvent *)self highlightURL];
  v6 = [v4 initWithHighlightURL:highlightURL action:{-[_SWHighlightEvent action](self, "action")}];

  return v6;
}

@end