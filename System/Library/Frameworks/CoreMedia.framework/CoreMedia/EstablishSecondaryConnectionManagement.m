@interface EstablishSecondaryConnectionManagement
@end

@implementation EstablishSecondaryConnectionManagement

void __figXPCServer_EstablishSecondaryConnectionManagement_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x19A8DA4F0](a2);
  if (v4 == MEMORY[0x1E69E9E68])
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    context = 0;
    v17 = 0;
    cf = 0;
    memset(v18, 0, sizeof(v18));
    FigServer_CopyProcessName(*(v7 + 16), &cf);
    CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, v18, 128, 0x600u);
    v10 = *(v8 + 88);
    v11 = *(v7 + 152) + 1;
    *(v7 + 152) = v11;
    asprintf(&v17, "%s(%s-%d.%d)-secondary-messages", v10, CStringPtrMaybeUsingPreallocatedBuffer, *(v7 + 16), v11);
    v12 = FigDispatchQueueCreateWithPriority(v17, 0, *(v8 + 120));
    FigThreadMakeDispatchQueueAbortable(v12);
    free(v17);
    FigSimpleMutexLock(*(v7 + 80));
    CFArrayAppendValue(*(v7 + 144), a2);
    FigSimpleMutexUnlock(*(v7 + 80));
    xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v12);
    figXPC_CreateNewConnectionInfo(v7, v12, &context);
    v13 = context;
    xpc_connection_set_context(a2, context);
    xpc_connection_set_finalizer_f(a2, figXPC_ConnectionInfoFinalizer);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __figXPC_HandleNewSecondaryConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_214;
    handler[4] = v13;
    handler[5] = v8;
    handler[6] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_activate(a2);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v12)
    {
      dispatch_release(v12);
    }
  }

  else if (a2 == MEMORY[0x1E69E9E20] && v4 == MEMORY[0x1E69E9E98])
  {
    v6 = xpc_connection_copy_invalidation_reason();

    free(v6);
  }
}

@end