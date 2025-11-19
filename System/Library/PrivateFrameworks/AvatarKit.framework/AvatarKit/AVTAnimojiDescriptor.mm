@interface AVTAnimojiDescriptor
- (AVTAnimojiDescriptor)initWithAnimoji:(id)a3;
- (AVTAnimojiDescriptor)initWithCoder:(id)a3;
- (AVTAnimojiDescriptor)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (AVTAnimojiDescriptor)initWithName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTAnimojiDescriptor

- (AVTAnimojiDescriptor)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVTAnimojiDescriptor;
  v5 = [(AVTAnimojiDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (AVTAnimojiDescriptor)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0;
  v7 = [v6 avt_objectForKey:@"animoji" ofClass:objc_opt_class() didFail:&v13 error:a4];
  v8 = v7;
  if ((v13 & 1) != 0 || !v7)
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1BB472000, v10, OS_LOG_TYPE_DEFAULT, "can't unarchive animoji name from: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    self = [(AVTAnimojiDescriptor *)self initWithName:v7];
    v9 = self;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AVTAnimojiDescriptor)initWithAnimoji:(id)a3
{
  v4 = [a3 name];
  v5 = [(AVTAnimojiDescriptor *)self initWithName:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVTAnimojiDescriptor;
  v4 = a3;
  [(AVTAvatarDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
}

- (AVTAnimojiDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVTAnimojiDescriptor;
  v5 = [(AVTAvatarDescriptor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end