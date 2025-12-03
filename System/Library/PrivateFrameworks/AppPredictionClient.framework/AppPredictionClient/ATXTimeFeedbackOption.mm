@interface ATXTimeFeedbackOption
- (ATXTimeFeedbackOption)initWithCoder:(id)coder;
- (ATXTimeFeedbackOption)initWithTitle:(id)title identifier:(id)identifier symbolName:(id)name isDestructive:(BOOL)destructive;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeFeedbackOption

- (ATXTimeFeedbackOption)initWithTitle:(id)title identifier:(id)identifier symbolName:(id)name isDestructive:(BOOL)destructive
{
  titleCopy = title;
  identifierCopy = identifier;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = ATXTimeFeedbackOption;
  v13 = [(ATXTimeFeedbackOption *)&v22 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [nameCopy copy];
    symbolName = v13->_symbolName;
    v13->_symbolName = v18;

    v13->_isDestructive = destructive;
    v20 = v13;
  }

  return v13;
}

- (ATXTimeFeedbackOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v8 = [coderCopy decodeBoolForKey:@"isDestructive"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ATXTimeFeedbackOption *)self initWithTitle:v5 identifier:v6 symbolName:v7 isDestructive:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_symbolName forKey:@"symbolName"];
  [coderCopy encodeBool:self->_isDestructive forKey:@"isDestructive"];
}

@end