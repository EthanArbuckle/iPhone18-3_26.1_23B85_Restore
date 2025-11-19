@interface CFXNotificationCenterCopyDebugInfo
@end

@implementation CFXNotificationCenterCopyDebugInfo

void ___CFXNotificationCenterCopyDebugInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  CFStringAppend(*(a1 + 32), @"{\n");
  CFStringAppendFormat(*(a1 + 32), 0, @"    token = %llx\n", *(a2 + 48));
  CFStringAppendFormat(*(a1 + 32), 0, @"    name = %@\n", *a2);
  v4 = @"    object = %@\n";
  if ((*(a2 + 25) & 4) == 0 && (CFXNotificationRegistrarGetOptions(*(*(a1 + 40) + 16)) & 2) == 0)
  {
    v4 = @"    object = %p\n";
  }

  CFStringAppendFormat(*(a1 + 32), 0, v4, *(a2 + 8));
  if ((*(a2 + 24) & 0x400) != 0)
  {
    CFStringAppendFormat(*(a1 + 32), 0, @"    observer = %@\n", *(a2 + 16));
  }

  else
  {
    CFStringAppendFormat(*(a1 + 32), 0, @"    observer = %p\n", *(a2 + 16));
  }

  CFStringAppendFormat(*(a1 + 32), 0, @"    options = 0x%lx\n", *(a2 + 24));
  v5 = *(a2 + 24);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *(a2 + 32);
    if (*(v8 + 16))
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    memset(&v14, 0, sizeof(v14));
    dladdr(v9, &v14);
    v11 = *(a1 + 32);
    if (v14.dli_sname)
    {
      CFStringAppendFormat(v11, 0, @"    block = %s (%p)\n", v14.dli_sname, v8);
    }

    else
    {
      CFStringAppendFormat(v11, 0, @"    block = %p\n", v8);
    }
  }

  else if ((v5 & 0x40000) != 0)
  {
    v10 = *(a1 + 32);
    Name = sel_getName(*(a2 + 32));
    CFStringAppendFormat(v10, 0, @"    selector = %s\n", Name);
  }

  else if ((v5 & 0x80000) != 0)
  {
    memset(&v14, 0, sizeof(v14));
    dladdr(*(a2 + 32), &v14);
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    if (v14.dli_sname)
    {
      CFStringAppendFormat(v6, 0, @"    callback = %s (%p)\n", v14.dli_sname, v7);
    }

    else
    {
      CFStringAppendFormat(v6, 0, @"    callback = %p\n", v7);
    }
  }

  CFStringAppend(*(a1 + 32), @"}\n");
  v12 = *MEMORY[0x1E69E9840];
}

@end