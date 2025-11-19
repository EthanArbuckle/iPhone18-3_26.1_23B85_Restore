@interface NEFileHandle
- (OS_xpc_object)dictionary;
- (id)initFromDictionary:(id)a3;
@end

@implementation NEFileHandle

- (OS_xpc_object)dictionary
{
  v3 = [(NEFileHandle *)self handle];
  v4 = [v3 fileDescriptor];

  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "type", [(NEFileHandle *)self type]);
    v6 = [(NEFileHandle *)self handle];
    xpc_dictionary_set_fd(v5, "file-descriptor", [v6 fileDescriptor]);

    xpc_dictionary_set_BOOL(v5, "launch-owner-when-readable", [(NEFileHandle *)self launchOwnerWhenReadable]);
  }

  return v5;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_dup_fd(v4, "file-descriptor");
  v6 = xpc_dictionary_get_BOOL(v4, "launch-owner-when-readable");

  if ((v5 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    self = [(NEFileHandle *)self initWithFileDescriptor:v5 launchOwnerWhenReadable:v6];
    v7 = self;
  }

  return v7;
}

@end