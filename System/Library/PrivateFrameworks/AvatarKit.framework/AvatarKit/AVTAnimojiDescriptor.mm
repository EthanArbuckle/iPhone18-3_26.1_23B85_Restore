@interface AVTAnimojiDescriptor
- (AVTAnimojiDescriptor)initWithAnimoji:(id)animoji;
- (AVTAnimojiDescriptor)initWithCoder:(id)coder;
- (AVTAnimojiDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (AVTAnimojiDescriptor)initWithName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTAnimojiDescriptor

- (AVTAnimojiDescriptor)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AVTAnimojiDescriptor;
  v5 = [(AVTAnimojiDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (AVTAnimojiDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v13 = 0;
  v7 = [representationCopy avt_objectForKey:@"animoji" ofClass:objc_opt_class() didFail:&v13 error:error];
  v8 = v7;
  if ((v13 & 1) != 0 || !v7)
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = representationCopy;
      _os_log_impl(&dword_1BB472000, v10, OS_LOG_TYPE_DEFAULT, "can't unarchive animoji name from: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(AVTAnimojiDescriptor *)self initWithName:v7];
    selfCopy = self;
  }

  v11 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (AVTAnimojiDescriptor)initWithAnimoji:(id)animoji
{
  name = [animoji name];
  v5 = [(AVTAnimojiDescriptor *)self initWithName:name];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AVTAnimojiDescriptor;
  coderCopy = coder;
  [(AVTAvatarDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
}

- (AVTAnimojiDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AVTAnimojiDescriptor;
  v5 = [(AVTAvatarDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end