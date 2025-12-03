@interface ATXSettingsActionsClientResponse
- (ATXSettingsActionsClientResponse)initWithActions:(id)actions;
- (ATXSettingsActionsClientResponse)initWithCoder:(id)coder;
@end

@implementation ATXSettingsActionsClientResponse

- (ATXSettingsActionsClientResponse)initWithActions:(id)actions
{
  actionsCopy = actions;
  v9.receiver = self;
  v9.super_class = ATXSettingsActionsClientResponse;
  v5 = [(ATXSettingsActionsClientResponse *)&v9 init];
  if (v5)
  {
    v6 = [actionsCopy copy];
    actions = v5->_actions;
    v5->_actions = v6;
  }

  return v5;
}

- (ATXSettingsActionsClientResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(ATXSettingsActionsClientResponse *)self initWithActions:v6];

  return v7;
}

@end