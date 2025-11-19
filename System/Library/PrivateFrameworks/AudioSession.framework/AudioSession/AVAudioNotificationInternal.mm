@interface AVAudioNotificationInternal
- (AVAudioNotificationInternal)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioNotificationInternal

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->propertyName forKey:@"propertyName"];
  [v4 encodeInteger:self->type forKey:@"type"];
}

- (AVAudioNotificationInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVAudioNotificationInternal;
  v5 = [(AVAudioNotificationInternal *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"propertyName"];
    [(AVAudioNotificationInternal *)v5 setPropertyName:v6];

    -[AVAudioNotificationInternal setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
  }

  return v5;
}

@end