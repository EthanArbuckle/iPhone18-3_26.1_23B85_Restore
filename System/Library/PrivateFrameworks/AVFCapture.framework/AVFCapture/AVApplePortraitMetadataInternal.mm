@interface AVApplePortraitMetadataInternal
- (AVApplePortraitMetadataInternal)init;
- (CGRect)focusRectangle;
- (void)dealloc;
@end

@implementation AVApplePortraitMetadataInternal

- (AVApplePortraitMetadataInternal)init
{
  v4.receiver = self;
  v4.super_class = AVApplePortraitMetadataInternal;
  result = [(AVApplePortraitMetadataInternal *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F058] + 16);
    result->focusRectangle.origin = *MEMORY[0x1E695F058];
    result->focusRectangle.size = v3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVApplePortraitMetadataInternal;
  [(AVApplePortraitMetadataInternal *)&v3 dealloc];
}

- (CGRect)focusRectangle
{
  x = self->focusRectangle.origin.x;
  y = self->focusRectangle.origin.y;
  width = self->focusRectangle.size.width;
  height = self->focusRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end