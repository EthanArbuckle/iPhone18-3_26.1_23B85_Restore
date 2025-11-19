@interface CPAssistantCellConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (CPAssistantCellConfiguration)initWithCoder:(id)a3;
- (CPAssistantCellConfiguration)initWithPosition:(CPAssistantCellPosition)position visibility:(CPAssistantCellVisibility)visibility assistantAction:(CPAssistantCellActionType)assistantAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPAssistantCellConfiguration

- (CPAssistantCellConfiguration)initWithPosition:(CPAssistantCellPosition)position visibility:(CPAssistantCellVisibility)visibility assistantAction:(CPAssistantCellActionType)assistantAction
{
  v9.receiver = self;
  v9.super_class = CPAssistantCellConfiguration;
  result = [(CPAssistantCellConfiguration *)&v9 init];
  if (result)
  {
    result->_position = position;
    result->_visibility = visibility;
    result->_assistantAction = assistantAction;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPAssistantCellConfiguration *)self isEqualToConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  position = self->_position;
  if (position == [v4 position] && (visibility = self->_visibility, visibility == objc_msgSend(v4, "visibility")))
  {
    assistantAction = self->_assistantAction;
    v8 = assistantAction == [v4 assistantAction];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CPAssistantCellConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CPAssistantCellConfiguration;
  v5 = [(CPAssistantCellConfiguration *)&v7 init];
  if (v5)
  {
    v5->_position = [v4 decodeIntegerForKey:@"kCPAssistantCellConfigurationPositionKey"];
    v5->_visibility = [v4 decodeIntegerForKey:@"kCPAssistantCellConfigurationVisibilityKey"];
    v5->_assistantAction = [v4 decodeIntegerForKey:@"kCPAssistantCellConfigurationIntentKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CPAssistantCellConfiguration position](self forKey:{"position"), @"kCPAssistantCellConfigurationPositionKey"}];
  [v4 encodeInteger:-[CPAssistantCellConfiguration visibility](self forKey:{"visibility"), @"kCPAssistantCellConfigurationVisibilityKey"}];
  [v4 encodeInteger:-[CPAssistantCellConfiguration assistantAction](self forKey:{"assistantAction"), @"kCPAssistantCellConfigurationIntentKey"}];
}

@end