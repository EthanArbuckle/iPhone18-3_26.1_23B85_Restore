@interface NEProfilePayloadContentFilter
- (id)validatePayload;
@end

@implementation NEProfilePayloadContentFilter

- (id)validatePayload
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NEProfilePayloadBase *)self payloadAtom];
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "To-Do: NEProfilePayloadContentFilter validatePayload: dict %@", &v7, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

@end