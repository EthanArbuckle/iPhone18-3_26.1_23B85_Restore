@interface SWHighlightMembershipEvent
- (SWHighlightMembershipEvent)initWithCoder:(id)coder;
- (SWHighlightMembershipEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightMembershipEventTrigger)trigger;
- (SWHighlightMembershipEvent)initWithHighlightURL:(id)l type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWHighlightMembershipEvent

- (SWHighlightMembershipEvent)initWithHighlightURL:(id)l type:(int64_t)type
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = SWHighlightMembershipEvent;
  v8 = [(SWHighlightMembershipEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_highlightURL, l);
    v9->_membershipEventType = type;
  }

  return v9;
}

- (SWHighlightMembershipEvent)initWithHighlight:(SWHighlight *)highlight trigger:(SWHighlightMembershipEventTrigger)trigger
{
  v6 = [(SWHighlight *)highlight URL];
  v7 = [(SWHighlightMembershipEvent *)self initWithHighlightURL:v6 type:trigger];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  highlightURL = [(SWHighlightMembershipEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v6];

  membershipEventType = [(SWHighlightMembershipEvent *)self membershipEventType];
  v8 = NSStringFromSelector(sel_membershipEventType);
  [coderCopy encodeInteger:membershipEventType forKey:v8];
}

- (SWHighlightMembershipEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_membershipEventType);
  v9 = [coderCopy decodeIntegerForKey:v8];

  if (v7)
  {
    self = [(SWHighlightMembershipEvent *)self initWithHighlightURL:v7 type:v9];
    selfCopy = self;
  }

  else
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightMembershipEvent initWithCoder:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  highlightURL = [(SWHighlightMembershipEvent *)self highlightURL];
  v6 = [v4 initWithHighlightURL:highlightURL type:{-[SWHighlightMembershipEvent membershipEventType](self, "membershipEventType")}];

  return v6;
}

@end