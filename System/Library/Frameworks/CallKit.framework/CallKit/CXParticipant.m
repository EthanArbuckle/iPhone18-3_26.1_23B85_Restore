@interface CXParticipant
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParticipant:(id)a3;
- (CXParticipant)initWithCoder:(id)a3;
- (CXParticipant)initWithName:(id)a3;
- (CXParticipant)initWithName:(id)a3 imageURL:(id)a4;
- (CXParticipant)initWithParticipant:(id)a3;
- (NSURL)imageURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)wrappedByObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setImageURL:(id)a3;
@end

@implementation CXParticipant

- (CXParticipant)initWithName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXParticipant initWithName:]", @"name"}];
  }

  v9.receiver = self;
  v9.super_class = CXParticipant;
  v5 = [(CXParticipant *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (CXParticipant)initWithName:(id)a3 imageURL:(id)a4
{
  v6 = a4;
  v7 = [(CXParticipant *)self initWithName:a3];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = CXGetSandboxExtendedFileURL(v6);
    sandboxExtendedImageURL = v8->_sandboxExtendedImageURL;
    v8->_sandboxExtendedImageURL = v9;
  }

  return v8;
}

- (CXParticipant)initWithParticipant:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXParticipant;
  v5 = [(CXParticipant *)&v11 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 sandboxExtendedImageURL];
    sandboxExtendedImageURL = v5->_sandboxExtendedImageURL;
    v5->_sandboxExtendedImageURL = v8;
  }

  return v5;
}

- (NSURL)imageURL
{
  v2 = [(CXParticipant *)self sandboxExtendedImageURL];
  v3 = [v2 URL];

  return v3;
}

- (void)setImageURL:(id)a3
{
  if (a3)
  {
    v4 = CXGetSandboxExtendedFileURL(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(CXParticipant *)self setSandboxExtendedImageURL:v4];
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  v6 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v6];

  sandboxExtendedImageURL = self->_sandboxExtendedImageURL;
  v8 = NSStringFromSelector(sel_sandboxExtendedImageURL);
  [v5 encodeObject:sandboxExtendedImageURL forKey:v8];
}

- (CXParticipant)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CXParticipant;
  v5 = [(CXParticipant *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_name);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    name = v5->_name;
    v5->_name = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_sandboxExtendedImageURL);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];

    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 connection], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
      {
        sandboxExtendedImageURL = [v4 connection];
        v15 = [v12 URL];
        v16 = [sandboxExtendedImageURL cx_clientSandboxCanAccessFileURL:v15];

        if (v16)
        {
          v17 = v12;
          p_super = &v5->_sandboxExtendedImageURL->super;
          v5->_sandboxExtendedImageURL = v17;
        }

        else
        {
          p_super = CXDefaultLog();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_1B47F3000, p_super, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v19 = v12;
        sandboxExtendedImageURL = v5->_sandboxExtendedImageURL;
        v5->_sandboxExtendedImageURL = v19;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CXParticipant allocWithZone:a3];

  return [(CXParticipant *)v4 initWithParticipant:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CXMutableParticipant allocWithZone:a3];

  return [(CXParticipant *)v4 initWithParticipant:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_name);
  v5 = [(CXParticipant *)self name];
  [v3 appendFormat:@" %@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_imageURL);
  v7 = [(CXParticipant *)self imageURL];
  [v3 appendFormat:@" %@=%@", v6, v7];

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CXParticipant *)self name];
  v4 = [v3 hash];
  v5 = [(CXParticipant *)self sandboxExtendedImageURL];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXParticipant *)self isEqualToParticipant:v4];
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = [v4 name];
  if (name | v6 && ![(NSString *)name isEqual:v6])
  {
    v9 = 0;
  }

  else
  {
    sandboxExtendedImageURL = self->_sandboxExtendedImageURL;
    v8 = [v4 sandboxExtendedImageURL];
    if (sandboxExtendedImageURL | v8)
    {
      v9 = [(CXSandboxExtendedURL *)sandboxExtendedImageURL isEqual:v8];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)wrappedByObject
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedByObject);

  return WeakRetained;
}

@end