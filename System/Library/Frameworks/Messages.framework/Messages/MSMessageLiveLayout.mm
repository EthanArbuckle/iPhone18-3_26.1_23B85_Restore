@interface MSMessageLiveLayout
- (MSMessageLiveLayout)init;
- (MSMessageLiveLayout)initWithAlternateLayout:(MSMessageTemplateLayout *)alternateLayout;
- (MSMessageLiveLayout)initWithCoder:(id)coder;
- (id)_sanitizedCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSMessageLiveLayout

- (MSMessageLiveLayout)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is unavailable. Please use -initWithAlternateLayout: instead."];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MSMessageLiveLayout)initWithAlternateLayout:(MSMessageTemplateLayout *)alternateLayout
{
  v5 = alternateLayout;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An alternate layout is required for display on devices that don't have this app installed." userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = v5;
  v11.receiver = self;
  v11.super_class = MSMessageLiveLayout;
  _init = [(MSMessageLayout *)&v11 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 3, alternateLayout);
  }

  return v8;
}

- (MSMessageLiveLayout)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v7 = [v5 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"alternateLayout"];
  v9 = [(MSMessageLiveLayout *)self initWithAlternateLayout:v8];
  v10 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 setWithArray:v11];

  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"requiredCapabilities"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSMessageLiveLayout *)v9 setRequiredCapabilities:v13];
  }

  -[MSMessageLiveLayout setLiveEditableInEntryView:](v9, "setLiveEditableInEntryView:", [coderCopy decodeBoolForKey:@"liveEditableInEntryView"]);
  -[MSMessageLiveLayout setSendAlternateLayoutAsText:](v9, "setSendAlternateLayoutAsText:", [coderCopy decodeBoolForKey:@"sendAlternateLayoutAsText"]);

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  alternateLayout = self->_alternateLayout;
  coderCopy = coder;
  [coderCopy encodeObject:alternateLayout forKey:@"alternateLayout"];
  [coderCopy encodeObject:self->_requiredCapabilities forKey:@"requiredCapabilities"];
  [coderCopy encodeBool:self->_liveEditableInEntryView forKey:@"liveEditableInEntryView"];
  [coderCopy encodeBool:self->_sendAlternateLayoutAsText forKey:@"sendAlternateLayoutAsText"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(MSMessageTemplateLayout *)self->_alternateLayout copyWithZone:?];
  v6 = [[MSMessageLiveLayout allocWithZone:?], "initWithAlternateLayout:", v5];
  requiredCapabilities = [(MSMessageLiveLayout *)self requiredCapabilities];
  [(MSMessageLiveLayout *)v6 setRequiredCapabilities:requiredCapabilities];

  [(MSMessageLiveLayout *)v6 setLiveEditableInEntryView:[(MSMessageLiveLayout *)self liveEditableInEntryView]];
  [(MSMessageLiveLayout *)v6 setSendAlternateLayoutAsText:[(MSMessageLiveLayout *)self sendAlternateLayoutAsText]];

  return v6;
}

- (id)_sanitizedCopy
{
  v3 = [MSMessageLiveLayout alloc];
  alternateLayout = [(MSMessageLiveLayout *)self alternateLayout];
  _sanitizedCopy = [alternateLayout _sanitizedCopy];
  v6 = [(MSMessageLiveLayout *)v3 initWithAlternateLayout:_sanitizedCopy];

  requiredCapabilities = [(MSMessageLiveLayout *)self requiredCapabilities];
  [(MSMessageLiveLayout *)v6 setRequiredCapabilities:requiredCapabilities];

  [(MSMessageLiveLayout *)v6 setLiveEditableInEntryView:[(MSMessageLiveLayout *)self liveEditableInEntryView]];
  [(MSMessageLiveLayout *)v6 setSendAlternateLayoutAsText:[(MSMessageLiveLayout *)self sendAlternateLayoutAsText]];

  return v6;
}

@end