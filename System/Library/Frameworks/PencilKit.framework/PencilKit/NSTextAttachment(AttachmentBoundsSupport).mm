@interface NSTextAttachment(AttachmentBoundsSupport)
- (BOOL)pkAttachmentBoundsMightBeInvalid;
- (BOOL)pkInserting;
- (void)setPkAttachmentBoundsMightBeInvalid:()AttachmentBoundsSupport;
- (void)setPkInserting:()AttachmentBoundsSupport;
@end

@implementation NSTextAttachment(AttachmentBoundsSupport)

- (BOOL)pkAttachmentBoundsMightBeInvalid
{
  v1 = objc_getAssociatedObject(self, &attachmentBoundsKey);
  v2 = v1 != 0;

  return v2;
}

- (void)setPkAttachmentBoundsMightBeInvalid:()AttachmentBoundsSupport
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  objc_setAssociatedObject(self, &attachmentBoundsKey, v3, 0x301);
}

- (void)setPkInserting:()AttachmentBoundsSupport
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  objc_setAssociatedObject(self, &insertingKey, v3, 0x301);
}

- (BOOL)pkInserting
{
  v1 = objc_getAssociatedObject(self, &insertingKey);
  v2 = v1 != 0;

  return v2;
}

@end