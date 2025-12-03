@interface _MFMailComposeContentVariation
- (_MFMailComposeContentVariation)initWithCoder:(id)coder;
- (_MFMailComposeContentVariation)initWithName:(id)name;
- (void)addAttachmentIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MFMailComposeContentVariation

- (_MFMailComposeContentVariation)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = _MFMailComposeContentVariation;
  v5 = [(_MFMailComposeContentVariation *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

- (void)addAttachmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MFMailComposeContentVariation.m" lineNumber:31 description:@"The actual type of the identifier is required to be a string for NSSecureCoding conformance."];
  }

  attachmentIdentifiers = self->_attachmentIdentifiers;
  if (!attachmentIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attachmentIdentifiers;
    self->_attachmentIdentifiers = v6;

    attachmentIdentifiers = self->_attachmentIdentifiers;
  }

  [(NSMutableArray *)attachmentIdentifiers addObject:identifierCopy];
}

- (_MFMailComposeContentVariation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _MFMailComposeContentVariation;
  v5 = [(_MFMailComposeContentVariation *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    if ([coderCopy containsValueForKey:@"body"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
      body = v5->_body;
      v5->_body = v8;

      v5->_bodyIsHTML = [coderCopy decodeBoolForKey:@"bodyIsHTML"];
    }

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"attachmentIdentifiers"];
    attachmentIdentifiers = v5->_attachmentIdentifiers;
    v5->_attachmentIdentifiers = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  body = self->_body;
  if (body)
  {
    [coderCopy encodeObject:body forKey:@"body"];
    [coderCopy encodeBool:self->_bodyIsHTML forKey:@"bodyIsHTML"];
  }

  attachmentIdentifiers = self->_attachmentIdentifiers;
  if (attachmentIdentifiers)
  {
    [coderCopy encodeObject:attachmentIdentifiers forKey:@"attachmentIdentifiers"];
  }
}

@end