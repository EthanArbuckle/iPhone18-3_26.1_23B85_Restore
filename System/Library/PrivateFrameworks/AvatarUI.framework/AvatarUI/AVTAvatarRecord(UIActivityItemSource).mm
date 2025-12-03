@interface AVTAvatarRecord(UIActivityItemSource)
- (id)activityViewController:()UIActivityItemSource subjectForActivityType:;
- (id)activityViewController:()UIActivityItemSource thumbnailImageForActivityType:suggestedSize:;
@end

@implementation AVTAvatarRecord(UIActivityItemSource)

- (id)activityViewController:()UIActivityItemSource subjectForActivityType:
{
  v1 = MEMORY[0x1E696AEC0];
  identifier = [self identifier];
  v3 = [v1 stringWithFormat:@"avatar_%@.avt", identifier];

  return v3;
}

- (id)activityViewController:()UIActivityItemSource thumbnailImageForActivityType:suggestedSize:
{
  v2 = objc_alloc_init(AVTAvatarRecordImageProvider);
  v3 = +[AVTRenderingScope gridThumbnailScope];
  v4 = [(AVTAvatarRecordImageProvider *)v2 imageForRecord:self scope:v3];

  return v4;
}

@end