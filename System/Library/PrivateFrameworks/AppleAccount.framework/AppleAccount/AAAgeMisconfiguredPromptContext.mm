@interface AAAgeMisconfiguredPromptContext
- (AAAgeMisconfiguredPromptContext)initWithAltDSID:(id)a3 bundleID:(id)a4 title:(id)a5 message:(id)a6;
- (AAAgeMisconfiguredPromptContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAAgeMisconfiguredPromptContext

- (AAAgeMisconfiguredPromptContext)initWithAltDSID:(id)a3 bundleID:(id)a4 title:(id)a5 message:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AAAgeMisconfiguredPromptContext;
  v15 = [(AAAgeMisconfiguredPromptContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_altDSID, a3);
    objc_storeStrong(&v16->_bundleID, a4);
    objc_storeStrong(&v16->_title, a5);
    objc_storeStrong(&v16->_message, a6);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  altDSID = self->_altDSID;
  v5 = a3;
  [v5 encodeObject:altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_title forKey:@"_promptTitle"];
  [v5 encodeObject:self->_message forKey:@"_promptMessage"];
}

- (AAAgeMisconfiguredPromptContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAAgeMisconfiguredPromptContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_promptTitle"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_promptMessage"];
    message = v5->_message;
    v5->_message = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v5 = [(AAAgeMisconfiguredPromptContext *)self altDSID];
  v6 = [(AAAgeMisconfiguredPromptContext *)self bundleID];
  v7 = [(AAAgeMisconfiguredPromptContext *)self title];
  v8 = [(AAAgeMisconfiguredPromptContext *)self message];
  v9 = [v3 stringWithFormat:@"<%@: %p> altDSID: %{sensitive}@\n - bundle: %@\n - title: %@\n - message: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

@end