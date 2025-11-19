@interface _SWHighlightEvent
- (_SWHighlightEvent)initWithCoder:(id)a3;
- (_SWHighlightEvent)initWithHighlight:(id)a3 action:(int64_t)a4;
- (_SWHighlightEvent)initWithHighlightURL:(id)a3 action:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWHighlightEvent

- (_SWHighlightEvent)initWithHighlightURL:(id)a3 action:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _SWHighlightEvent;
  v8 = [(_SWHighlightEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightURL, a3);
    v9->_action = a4;
  }

  return v9;
}

- (_SWHighlightEvent)initWithHighlight:(id)a3 action:(int64_t)a4
{
  v6 = [a3 URL];
  v7 = [(_SWHighlightEvent *)self initWithHighlightURL:v6 action:a4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_SWHighlightEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(_SWHighlightEvent *)self action];
  v8 = NSStringFromSelector(sel_action);
  [v4 encodeInteger:v7 forKey:v8];
}

- (_SWHighlightEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_action);
  v9 = [v4 decodeIntegerForKey:v8];

  if (v7)
  {
    self = [(_SWHighlightEvent *)self initWithHighlightURL:v7 action:v9];
    v10 = self;
  }

  else
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SWHighlightEvent initWithCoder:v11];
    }

    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_SWHighlightEvent *)self highlightURL];
  v6 = [v4 initWithHighlightURL:v5 action:{-[_SWHighlightEvent action](self, "action")}];

  return v6;
}

@end