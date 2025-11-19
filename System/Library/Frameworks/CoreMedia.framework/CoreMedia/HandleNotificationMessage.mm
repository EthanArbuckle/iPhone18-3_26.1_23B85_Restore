@interface HandleNotificationMessage
@end

@implementation HandleNotificationMessage

void __figXPCConnection_HandleNotificationMessage_block_invoke(uint64_t a1)
{
  v7 = 0;
  cf = 0;
  FigXPCMessageCopyCFDictionary(*(a1 + 32), ".payload", &cf);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2(*(a1 + 48), *(a1 + 56), *(a1 + 32), cf, &v7);
    if (v3 == 1)
    {
      goto LABEL_8;
    }

    if (v3 == 4)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v7;
    }
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, *(a1 + 56), *(a1 + 48), cf);
LABEL_8:
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(*(a1 + 32));
  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __figXPCConnection_HandleNotificationMessage_block_invoke_2(uint64_t a1)
{
  v3 = 0;
  cf = 0;
  FigXPCMessageCopyCFDictionary(*(a1 + 32), ".payload", &cf);
  (*(a1 + 40))(0, *(a1 + 48), *(a1 + 32), cf, &v3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  FigXPCRelease(*(a1 + 32));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }
}

@end