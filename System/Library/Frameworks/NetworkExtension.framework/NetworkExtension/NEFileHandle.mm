@interface NEFileHandle
- (OS_xpc_object)dictionary;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation NEFileHandle

- (OS_xpc_object)dictionary
{
  handle = [(NEFileHandle *)self handle];
  fileDescriptor = [handle fileDescriptor];

  if (fileDescriptor < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "type", [(NEFileHandle *)self type]);
    handle2 = [(NEFileHandle *)self handle];
    xpc_dictionary_set_fd(v5, "file-descriptor", [handle2 fileDescriptor]);

    xpc_dictionary_set_BOOL(v5, "launch-owner-when-readable", [(NEFileHandle *)self launchOwnerWhenReadable]);
  }

  return v5;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = xpc_dictionary_dup_fd(dictionaryCopy, "file-descriptor");
  v6 = xpc_dictionary_get_BOOL(dictionaryCopy, "launch-owner-when-readable");

  if ((v5 & 0x80000000) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NEFileHandle *)self initWithFileDescriptor:v5 launchOwnerWhenReadable:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end