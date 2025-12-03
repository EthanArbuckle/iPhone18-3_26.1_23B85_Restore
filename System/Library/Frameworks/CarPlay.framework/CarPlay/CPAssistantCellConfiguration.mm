@interface CPAssistantCellConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (CPAssistantCellConfiguration)initWithCoder:(id)coder;
- (CPAssistantCellConfiguration)initWithPosition:(CPAssistantCellPosition)position visibility:(CPAssistantCellVisibility)visibility assistantAction:(CPAssistantCellActionType)assistantAction;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPAssistantCellConfiguration *)self isEqualToConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  position = self->_position;
  if (position == [configurationCopy position] && (visibility = self->_visibility, visibility == objc_msgSend(configurationCopy, "visibility")))
  {
    assistantAction = self->_assistantAction;
    v8 = assistantAction == [configurationCopy assistantAction];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CPAssistantCellConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CPAssistantCellConfiguration;
  v5 = [(CPAssistantCellConfiguration *)&v7 init];
  if (v5)
  {
    v5->_position = [coderCopy decodeIntegerForKey:@"kCPAssistantCellConfigurationPositionKey"];
    v5->_visibility = [coderCopy decodeIntegerForKey:@"kCPAssistantCellConfigurationVisibilityKey"];
    v5->_assistantAction = [coderCopy decodeIntegerForKey:@"kCPAssistantCellConfigurationIntentKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CPAssistantCellConfiguration position](self forKey:{"position"), @"kCPAssistantCellConfigurationPositionKey"}];
  [coderCopy encodeInteger:-[CPAssistantCellConfiguration visibility](self forKey:{"visibility"), @"kCPAssistantCellConfigurationVisibilityKey"}];
  [coderCopy encodeInteger:-[CPAssistantCellConfiguration assistantAction](self forKey:{"assistantAction"), @"kCPAssistantCellConfigurationIntentKey"}];
}

@end