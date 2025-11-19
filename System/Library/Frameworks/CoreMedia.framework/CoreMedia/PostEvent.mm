@interface PostEvent
@end

@implementation PostEvent

void __ftd_PostEvent_block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v5[2] = __ftd_PostEvent_block_invoke_2;
  v5[3] = &unk_1E74A5460;
  v6 = v2;
  v7 = *(a1 + 56);
  v5[4] = &v8;
  dispatch_sync(v3, v5);
  if (*(v9 + 24))
  {
    (*(*(*(a1 + 40) + 16) + 16))();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(*(a1 + 32));
  _Block_object_dispose(&v8, 8);
}

CFIndex __ftd_PostEvent_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 32);
  v4.length = CFArrayGetCount(v2);
  v4.location = 0;
  result = CFArrayGetFirstIndexOfValue(v2, v4, *(a1 + 48));
  if (result != -1 && **(a1 + 48) == *(a1 + 56))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

@end