@interface ATXSettingsActionsClientResponse
- (ATXSettingsActionsClientResponse)initWithActions:(id)a3;
- (ATXSettingsActionsClientResponse)initWithCoder:(id)a3;
@end

@implementation ATXSettingsActionsClientResponse

- (ATXSettingsActionsClientResponse)initWithActions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXSettingsActionsClientResponse;
  v5 = [(ATXSettingsActionsClientResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actions = v5->_actions;
    v5->_actions = v6;
  }

  return v5;
}

- (ATXSettingsActionsClientResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];

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