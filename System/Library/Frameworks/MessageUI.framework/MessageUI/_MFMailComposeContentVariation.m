@interface _MFMailComposeContentVariation
- (_MFMailComposeContentVariation)initWithCoder:(id)a3;
- (_MFMailComposeContentVariation)initWithName:(id)a3;
- (void)addAttachmentIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFMailComposeContentVariation

- (_MFMailComposeContentVariation)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _MFMailComposeContentVariation;
  v5 = [(_MFMailComposeContentVariation *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

- (void)addAttachmentIdentifier:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_MFMailComposeContentVariation.m" lineNumber:31 description:@"The actual type of the identifier is required to be a string for NSSecureCoding conformance."];
  }

  attachmentIdentifiers = self->_attachmentIdentifiers;
  if (!attachmentIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attachmentIdentifiers;
    self->_attachmentIdentifiers = v6;

    attachmentIdentifiers = self->_attachmentIdentifiers;
  }

  [(NSMutableArray *)attachmentIdentifiers addObject:v9];
}

- (_MFMailComposeContentVariation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _MFMailComposeContentVariation;
  v5 = [(_MFMailComposeContentVariation *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    if ([v4 containsValueForKey:@"body"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
      body = v5->_body;
      v5->_body = v8;

      v5->_bodyIsHTML = [v4 decodeBoolForKey:@"bodyIsHTML"];
    }

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"attachmentIdentifiers"];
    attachmentIdentifiers = v5->_attachmentIdentifiers;
    v5->_attachmentIdentifiers = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_name forKey:@"name"];
  body = self->_body;
  if (body)
  {
    [v6 encodeObject:body forKey:@"body"];
    [v6 encodeBool:self->_bodyIsHTML forKey:@"bodyIsHTML"];
  }

  attachmentIdentifiers = self->_attachmentIdentifiers;
  if (attachmentIdentifiers)
  {
    [v6 encodeObject:attachmentIdentifiers forKey:@"attachmentIdentifiers"];
  }
}

@end