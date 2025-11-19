@interface ATXTimeFeedbackOption
- (ATXTimeFeedbackOption)initWithCoder:(id)a3;
- (ATXTimeFeedbackOption)initWithTitle:(id)a3 identifier:(id)a4 symbolName:(id)a5 isDestructive:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeFeedbackOption

- (ATXTimeFeedbackOption)initWithTitle:(id)a3 identifier:(id)a4 symbolName:(id)a5 isDestructive:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = ATXTimeFeedbackOption;
  v13 = [(ATXTimeFeedbackOption *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [v12 copy];
    symbolName = v13->_symbolName;
    v13->_symbolName = v18;

    v13->_isDestructive = a6;
    v20 = v13;
  }

  return v13;
}

- (ATXTimeFeedbackOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v8 = [v4 decodeBoolForKey:@"isDestructive"];

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
    v11 = 0;
  }

  else
  {
    self = [(ATXTimeFeedbackOption *)self initWithTitle:v5 identifier:v6 symbolName:v7 isDestructive:v8];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_symbolName forKey:@"symbolName"];
  [v5 encodeBool:self->_isDestructive forKey:@"isDestructive"];
}

@end