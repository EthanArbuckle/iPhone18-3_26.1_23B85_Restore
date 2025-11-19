@interface INProcessGetInstanceUUID
@end

@implementation INProcessGetInstanceUUID

void ___INProcessGetInstanceUUID_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (xpc_get_instance())
  {
    v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    v1 = _INProcessGetInstanceUUID_instanceUUID;
    _INProcessGetInstanceUUID_instanceUUID = v0;
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end