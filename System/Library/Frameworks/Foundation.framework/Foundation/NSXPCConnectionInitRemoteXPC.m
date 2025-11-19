@interface NSXPCConnectionInitRemoteXPC
@end

@implementation NSXPCConnectionInitRemoteXPC

void *___NSXPCConnectionInitRemoteXPC_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteXPC.framework/RemoteXPC", 256);
  qword_1ED43F9A0 = result;
  if (result)
  {
    _xpc_remote_connection_activate = dlsym(result, "xpc_remote_connection_activate");
    _xpc_remote_connection_cancel = dlsym(qword_1ED43F9A0, "xpc_remote_connection_cancel");
    _xpc_remote_connection_create_remote_service_listener = dlsym(qword_1ED43F9A0, "xpc_remote_connection_create_remote_service_listener");
    off_1ED43F9A8 = dlsym(qword_1ED43F9A0, "xpc_remote_connection_create_with_remote_service");
    off_1ED43F9B0 = dlsym(qword_1ED43F9A0, "xpc_remote_connection_send_barrier");
    off_1ED43F9B8 = dlsym(qword_1ED43F9A0, "xpc_remote_connection_send_message");
    off_1ED43F9C0 = dlsym(qword_1ED43F9A0, "xpc_remote_connection_send_message_with_reply");
    off_1ED43F9C8 = dlsym(qword_1ED43F9A0, "xpc_remote_connection_send_message_with_reply_sync");
    _xpc_remote_connection_set_event_handler = dlsym(qword_1ED43F9A0, "xpc_remote_connection_set_event_handler");
    _xpc_remote_connection_set_target_queue = dlsym(qword_1ED43F9A0, "xpc_remote_connection_set_target_queue");
    result = dlsym(qword_1ED43F9A0, "_xpc_type_remote_connection");
    _XPC_TYPE_REMOTE_CONNECTION = result;
  }

  return result;
}

@end