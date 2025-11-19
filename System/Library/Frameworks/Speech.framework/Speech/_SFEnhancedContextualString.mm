@interface _SFEnhancedContextualString
- (_SFEnhancedContextualString)initWithCoder:(id)a3;
- (_SFEnhancedContextualString)initWithContext:(id)a3 tagName:(id)a4 isLoggable:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFEnhancedContextualString

- (void)encodeWithCoder:(id)a3
{
  context = self->_context;
  v5 = a3;
  [v5 encodeObject:context forKey:@"_context"];
  [v5 encodeObject:self->_tagName forKey:@"_tagName"];
  [v5 encodeBool:self->_isLoggable forKey:@"_isLoggable"];
}

- (_SFEnhancedContextualString)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFEnhancedContextualString;
  v5 = [(_SFEnhancedContextualString *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tagName"];
    tagName = v5->_tagName;
    v5->_tagName = v8;

    v5->_isLoggable = [v4 decodeBoolForKey:@"_isLoggable"];
  }

  return v5;
}

- (_SFEnhancedContextualString)initWithContext:(id)a3 tagName:(id)a4 isLoggable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _SFEnhancedContextualString;
  v11 = [(_SFEnhancedContextualString *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
    objc_storeStrong(&v12->_tagName, a4);
    v12->_isLoggable = a5;
  }

  return v12;
}

@end