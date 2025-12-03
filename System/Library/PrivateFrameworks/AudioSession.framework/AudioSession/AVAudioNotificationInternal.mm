@interface AVAudioNotificationInternal
- (AVAudioNotificationInternal)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioNotificationInternal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->propertyName forKey:@"propertyName"];
  [coderCopy encodeInteger:self->type forKey:@"type"];
}

- (AVAudioNotificationInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AVAudioNotificationInternal;
  v5 = [(AVAudioNotificationInternal *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"propertyName"];
    [(AVAudioNotificationInternal *)v5 setPropertyName:v6];

    -[AVAudioNotificationInternal setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  }

  return v5;
}

@end