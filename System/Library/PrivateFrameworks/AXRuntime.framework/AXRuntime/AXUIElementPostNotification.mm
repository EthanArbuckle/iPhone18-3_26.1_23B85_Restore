@interface AXUIElementPostNotification
@end

@implementation AXUIElementPostNotification

void ___AXUIElementPostNotification_block_invoke_2()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *buffer = 0u;
  v5 = 0u;
  v1 = *(*(*(v0 + 32) + 8) + 24);
  if (v1)
  {
    v37.length = *(v0 + 72);
    v37.location = 0;
    CFDataGetBytes(v1, v37, buffer);
  }

  _AXMIGPostNotification(*(*(v0 + 40) + 16), *(v0 + 76), *(v0 + 48), *(v0 + 56), *(v0 + 80), buffer, *(v0 + 72), *(v0 + 64), *(v0 + 84), *(*(v0 + 40) + 24));
  v2 = *(v0 + 84);
  if (v2)
  {
    munmap(*(v0 + 64), v2);
  }

  CFRelease(*(v0 + 40));
  v3 = *(*(*(v0 + 32) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(v0 + 32) + 8) + 24) = 0;
  }
}

void ___AXUIElementPostNotification_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("post-ax-notify", v2);
  v1 = _AXUIElementPostNotification_DifferentQueue;
  _AXUIElementPostNotification_DifferentQueue = v0;
}

@end