@interface EKSerializableAttachment
- (EKSerializableAttachment)initWithAttachment:(id)attachment;
@end

@implementation EKSerializableAttachment

- (EKSerializableAttachment)initWithAttachment:(id)attachment
{
  v4.receiver = self;
  v4.super_class = EKSerializableAttachment;
  return [(EKSerializableAttachment *)&v4 init];
}

@end