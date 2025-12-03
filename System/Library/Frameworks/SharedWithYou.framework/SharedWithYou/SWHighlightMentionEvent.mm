@interface SWHighlightMentionEvent
- (SWHighlightMentionEvent)initWithCoder:(id)coder;
- (SWHighlightMentionEvent)initWithHighlight:(SWHighlight *)highlight mentionedPersonCloudKitShareHandle:(NSString *)handle;
- (SWHighlightMentionEvent)initWithHighlight:(SWHighlight *)highlight mentionedPersonIdentity:(SWPersonIdentity *)identity;
- (SWHighlightMentionEvent)initWithHighlightURL:(id)l mentionedPersonHandle:(id)handle mentionedPersonIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWHighlightMentionEvent

- (SWHighlightMentionEvent)initWithHighlightURL:(id)l mentionedPersonHandle:(id)handle mentionedPersonIdentity:(id)identity
{
  lCopy = l;
  handleCopy = handle;
  identityCopy = identity;
  v15.receiver = self;
  v15.super_class = SWHighlightMentionEvent;
  v12 = [(SWHighlightMentionEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_highlightURL, l);
    objc_storeStrong(&v13->_mentionedPersonHandle, handle);
    objc_storeStrong(&v13->_mentionedPersonIdentity, identity);
  }

  return v13;
}

- (SWHighlightMentionEvent)initWithHighlight:(SWHighlight *)highlight mentionedPersonCloudKitShareHandle:(NSString *)handle
{
  v6 = handle;
  v7 = [(SWHighlight *)highlight URL];
  v8 = [(SWHighlightMentionEvent *)self initWithHighlightURL:v7 mentionedPersonHandle:v6 mentionedPersonIdentity:0];

  return v8;
}

- (SWHighlightMentionEvent)initWithHighlight:(SWHighlight *)highlight mentionedPersonIdentity:(SWPersonIdentity *)identity
{
  v6 = identity;
  v7 = [(SWHighlight *)highlight URL];
  v8 = [(SWHighlightMentionEvent *)self initWithHighlightURL:v7 mentionedPersonHandle:&stru_1F3ABB850 mentionedPersonIdentity:v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  highlightURL = [(SWHighlightMentionEvent *)self highlightURL];
  v6 = NSStringFromSelector(sel_highlightURL);
  [coderCopy encodeObject:highlightURL forKey:v6];

  mentionedPersonHandle = [(SWHighlightMentionEvent *)self mentionedPersonHandle];
  v8 = NSStringFromSelector(sel_mentionedPersonHandle);
  [coderCopy encodeObject:mentionedPersonHandle forKey:v8];

  mentionedPersonIdentity = [(SWHighlightMentionEvent *)self mentionedPersonIdentity];
  v9 = NSStringFromSelector(sel_mentionedPersonIdentity);
  [coderCopy encodeObject:mentionedPersonIdentity forKey:v9];
}

- (SWHighlightMentionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_highlightURL);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_mentionedPersonHandle);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_mentionedPersonIdentity);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  if (v7)
  {
    self = [(SWHighlightMentionEvent *)self initWithHighlightURL:v7 mentionedPersonHandle:v10 mentionedPersonIdentity:v13];
    selfCopy = self;
  }

  else
  {
    v15 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightMentionEvent initWithCoder:v15];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  highlightURL = [(SWHighlightMentionEvent *)self highlightURL];
  mentionedPersonHandle = [(SWHighlightMentionEvent *)self mentionedPersonHandle];
  mentionedPersonIdentity = [(SWHighlightMentionEvent *)self mentionedPersonIdentity];
  v8 = [v4 initWithHighlightURL:highlightURL mentionedPersonHandle:mentionedPersonHandle mentionedPersonIdentity:mentionedPersonIdentity];

  return v8;
}

@end