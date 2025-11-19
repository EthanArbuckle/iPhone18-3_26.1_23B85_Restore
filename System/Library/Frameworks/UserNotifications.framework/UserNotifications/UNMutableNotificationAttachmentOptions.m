@interface UNMutableNotificationAttachmentOptions
- (id)copyWithZone:(_NSZone *)a3;
- (void)setThumbnailGeneratorUserInfo:(id)a3;
@end

@implementation UNMutableNotificationAttachmentOptions

- (void)setThumbnailGeneratorUserInfo:(id)a3
{
  v4 = [a3 copy];
  thumbnailGeneratorUserInfo = self->super._thumbnailGeneratorUserInfo;
  self->super._thumbnailGeneratorUserInfo = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UNNotificationAttachmentOptions alloc];

  return [(UNNotificationAttachmentOptions *)v4 _initWithOptions:self];
}

@end