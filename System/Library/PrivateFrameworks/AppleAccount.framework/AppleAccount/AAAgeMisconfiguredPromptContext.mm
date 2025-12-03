@interface AAAgeMisconfiguredPromptContext
- (AAAgeMisconfiguredPromptContext)initWithAltDSID:(id)d bundleID:(id)iD title:(id)title message:(id)message;
- (AAAgeMisconfiguredPromptContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAAgeMisconfiguredPromptContext

- (AAAgeMisconfiguredPromptContext)initWithAltDSID:(id)d bundleID:(id)iD title:(id)title message:(id)message
{
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = AAAgeMisconfiguredPromptContext;
  v15 = [(AAAgeMisconfiguredPromptContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_altDSID, d);
    objc_storeStrong(&v16->_bundleID, iD);
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_message, message);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  altDSID = self->_altDSID;
  coderCopy = coder;
  [coderCopy encodeObject:altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_title forKey:@"_promptTitle"];
  [coderCopy encodeObject:self->_message forKey:@"_promptMessage"];
}

- (AAAgeMisconfiguredPromptContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AAAgeMisconfiguredPromptContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_promptTitle"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_promptMessage"];
    message = v5->_message;
    v5->_message = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AAAgeMisconfiguredPromptContext);
  v5 = [(NSString *)self->_altDSID copy];
  altDSID = v4->_altDSID;
  v4->_altDSID = v5;

  v7 = [(NSString *)self->_bundleID copy];
  bundleID = v4->_bundleID;
  v4->_bundleID = v7;

  v9 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v9;

  v11 = [(NSString *)self->_message copy];
  message = v4->_message;
  v4->_message = v11;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  altDSID = [(AAAgeMisconfiguredPromptContext *)self altDSID];
  bundleID = [(AAAgeMisconfiguredPromptContext *)self bundleID];
  title = [(AAAgeMisconfiguredPromptContext *)self title];
  message = [(AAAgeMisconfiguredPromptContext *)self message];
  v9 = [v3 stringWithFormat:@"<%@: %p> altDSID: %{sensitive}@\n - bundle: %@\n - title: %@\n - message: %@", v4, self, altDSID, bundleID, title, message];

  return v9;
}

@end