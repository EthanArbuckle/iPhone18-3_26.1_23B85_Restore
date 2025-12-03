@interface NEPolicySessionFileHandle
- (NEPolicySessionFileHandle)initWithPolicySession:(id)session name:(id)name;
- (id)description;
- (id)dictionary;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation NEPolicySessionFileHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(NEPolicySessionFileHandle *)self name];
  handle = [(NEFileHandle *)self handle];
  v6 = [v3 stringWithFormat:@"Policy Session %@ socket (%d)", name, objc_msgSend(handle, "fileDescriptor")];

  return v6;
}

- (id)dictionary
{
  v6.receiver = self;
  v6.super_class = NEPolicySessionFileHandle;
  dictionary = [(NEFileHandle *)&v6 dictionary];
  if (dictionary)
  {
    name = self->_name;
    if (name)
    {
      xpc_dictionary_set_string(dictionary, "session-name", [(NSString *)name UTF8String]);
    }
  }

  return dictionary;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NEPolicySessionFileHandle;
  v5 = [(NEFileHandle *)&v10 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    string = xpc_dictionary_get_string(dictionaryCopy, "session-name");
    if (string)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:string encoding:4];
      v8 = v5[3];
      v5[3] = v7;
    }
  }

  return v5;
}

- (NEPolicySessionFileHandle)initWithPolicySession:(id)session name:(id)name
{
  nameCopy = name;
  dupSocket = [session dupSocket];
  if ((dupSocket & 0x80000000) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NEPolicySessionFileHandle;
    v9 = [(NEFileHandle *)&v13 initWithFileDescriptor:dupSocket launchOwnerWhenReadable:0];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_name, name);
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

@end