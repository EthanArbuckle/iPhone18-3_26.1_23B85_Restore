@interface _SFEnhancedContextualString
- (_SFEnhancedContextualString)initWithCoder:(id)coder;
- (_SFEnhancedContextualString)initWithContext:(id)context tagName:(id)name isLoggable:(BOOL)loggable;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFEnhancedContextualString

- (void)encodeWithCoder:(id)coder
{
  context = self->_context;
  coderCopy = coder;
  [coderCopy encodeObject:context forKey:@"_context"];
  [coderCopy encodeObject:self->_tagName forKey:@"_tagName"];
  [coderCopy encodeBool:self->_isLoggable forKey:@"_isLoggable"];
}

- (_SFEnhancedContextualString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _SFEnhancedContextualString;
  v5 = [(_SFEnhancedContextualString *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_tagName"];
    tagName = v5->_tagName;
    v5->_tagName = v8;

    v5->_isLoggable = [coderCopy decodeBoolForKey:@"_isLoggable"];
  }

  return v5;
}

- (_SFEnhancedContextualString)initWithContext:(id)context tagName:(id)name isLoggable:(BOOL)loggable
{
  contextCopy = context;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = _SFEnhancedContextualString;
  v11 = [(_SFEnhancedContextualString *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, context);
    objc_storeStrong(&v12->_tagName, name);
    v12->_isLoggable = loggable;
  }

  return v12;
}

@end