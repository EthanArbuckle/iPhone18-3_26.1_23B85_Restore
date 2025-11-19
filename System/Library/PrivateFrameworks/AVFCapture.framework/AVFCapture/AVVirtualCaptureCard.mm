@interface AVVirtualCaptureCard
+ (id)sharedVirtualCaptureCard;
- (AVVirtualCaptureCard)init;
- (BOOL)setCapacity:(int64_t)a3 error:(id *)a4;
- (int64_t)capacity;
- (int64_t)freeSpace;
- (void)dealloc;
- (void)showSystemUserInterface;
@end

@implementation AVVirtualCaptureCard

+ (id)sharedVirtualCaptureCard
{
  if (sharedVirtualCaptureCard_onceToken != -1)
  {
    +[AVVirtualCaptureCard sharedVirtualCaptureCard];
  }

  return sharedVirtualCaptureCard_sAVVirtualCaptureCard;
}

AVVirtualCaptureCard *__48__AVVirtualCaptureCard_sharedVirtualCaptureCard__block_invoke()
{
  result = objc_alloc_init(AVVirtualCaptureCard);
  sharedVirtualCaptureCard_sAVVirtualCaptureCard = result;
  return result;
}

- (AVVirtualCaptureCard)init
{
  v4.receiver = self;
  v4.super_class = AVVirtualCaptureCard;
  v2 = [(AVVirtualCaptureCard *)&v4 init];
  if (v2 && FigVirtualCaptureCardRemoteCreate())
  {

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  virtualCaptureCard = self->_virtualCaptureCard;
  if (virtualCaptureCard)
  {
    CFRelease(virtualCaptureCard);
  }

  v4.receiver = self;
  v4.super_class = AVVirtualCaptureCard;
  [(AVVirtualCaptureCard *)&v4 dealloc];
}

- (void)showSystemUserInterface
{
  virtualCaptureCard = self->_virtualCaptureCard;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {

    v3(virtualCaptureCard);
  }
}

- (int64_t)capacity
{
  cf = 0;
  CMBaseObject = FigVirtualCaptureCardGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(CMBaseObject, *MEMORY[0x1E6963380], *MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4)
  {
    SInt64 = 0;
    if (!cf)
    {
      return SInt64;
    }

    goto LABEL_4;
  }

  SInt64 = FigCFNumberGetSInt64();
  v5 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v5);
  }

  return SInt64;
}

- (int64_t)freeSpace
{
  cf = 0;
  CMBaseObject = FigVirtualCaptureCardGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(CMBaseObject, *MEMORY[0x1E6963388], *MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4)
  {
    SInt64 = 0;
    if (!cf)
    {
      return SInt64;
    }

    goto LABEL_4;
  }

  SInt64 = FigCFNumberGetSInt64();
  v5 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v5);
  }

  return SInt64;
}

- (BOOL)setCapacity:(int64_t)a3 error:(id *)a4
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  CMBaseObject = FigVirtualCaptureCardGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = v7(CMBaseObject, *MEMORY[0x1E6963380], v5);
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = -12782;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (v8)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
  }

LABEL_7:
  if (v5)
  {
    CFRelease(v5);
  }

  return v8 == 0;
}

@end