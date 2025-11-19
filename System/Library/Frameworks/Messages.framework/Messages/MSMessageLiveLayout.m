@interface MSMessageLiveLayout
- (MSMessageLiveLayout)init;
- (MSMessageLiveLayout)initWithAlternateLayout:(MSMessageTemplateLayout *)alternateLayout;
- (MSMessageLiveLayout)initWithCoder:(id)a3;
- (id)_sanitizedCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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
  v7 = [(MSMessageLayout *)&v11 _init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 3, alternateLayout);
  }

  return v8;
}

- (MSMessageLiveLayout)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"alternateLayout"];
  v9 = [(MSMessageLiveLayout *)self initWithAlternateLayout:v8];
  v10 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v10 setWithArray:v11];

  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"requiredCapabilities"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSMessageLiveLayout *)v9 setRequiredCapabilities:v13];
  }

  -[MSMessageLiveLayout setLiveEditableInEntryView:](v9, "setLiveEditableInEntryView:", [v4 decodeBoolForKey:@"liveEditableInEntryView"]);
  -[MSMessageLiveLayout setSendAlternateLayoutAsText:](v9, "setSendAlternateLayoutAsText:", [v4 decodeBoolForKey:@"sendAlternateLayoutAsText"]);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  alternateLayout = self->_alternateLayout;
  v5 = a3;
  [v5 encodeObject:alternateLayout forKey:@"alternateLayout"];
  [v5 encodeObject:self->_requiredCapabilities forKey:@"requiredCapabilities"];
  [v5 encodeBool:self->_liveEditableInEntryView forKey:@"liveEditableInEntryView"];
  [v5 encodeBool:self->_sendAlternateLayoutAsText forKey:@"sendAlternateLayoutAsText"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(MSMessageTemplateLayout *)self->_alternateLayout copyWithZone:?];
  v6 = [[MSMessageLiveLayout allocWithZone:?], "initWithAlternateLayout:", v5];
  v7 = [(MSMessageLiveLayout *)self requiredCapabilities];
  [(MSMessageLiveLayout *)v6 setRequiredCapabilities:v7];

  [(MSMessageLiveLayout *)v6 setLiveEditableInEntryView:[(MSMessageLiveLayout *)self liveEditableInEntryView]];
  [(MSMessageLiveLayout *)v6 setSendAlternateLayoutAsText:[(MSMessageLiveLayout *)self sendAlternateLayoutAsText]];

  return v6;
}

- (id)_sanitizedCopy
{
  v3 = [MSMessageLiveLayout alloc];
  v4 = [(MSMessageLiveLayout *)self alternateLayout];
  v5 = [v4 _sanitizedCopy];
  v6 = [(MSMessageLiveLayout *)v3 initWithAlternateLayout:v5];

  v7 = [(MSMessageLiveLayout *)self requiredCapabilities];
  [(MSMessageLiveLayout *)v6 setRequiredCapabilities:v7];

  [(MSMessageLiveLayout *)v6 setLiveEditableInEntryView:[(MSMessageLiveLayout *)self liveEditableInEntryView]];
  [(MSMessageLiveLayout *)v6 setSendAlternateLayoutAsText:[(MSMessageLiveLayout *)self sendAlternateLayoutAsText]];

  return v6;
}

@end