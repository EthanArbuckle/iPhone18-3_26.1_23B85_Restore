@interface LPVideoAttachmentSubstitute
- (LPVideoAttachmentSubstitute)initWithCoder:(id)a3;
- (LPVideoAttachmentSubstitute)initWithVideo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPVideoAttachmentSubstitute

- (LPVideoAttachmentSubstitute)initWithVideo:(id)a3
{
  v7.receiver = self;
  v7.super_class = LPVideoAttachmentSubstitute;
  v3 = [(LPVideo *)&v7 _initWithVideo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPVideoAttachmentSubstitute)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPVideoAttachmentSubstitute;
  v5 = [(LPVideo *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"richLinkVideoAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = LPVideoAttachmentSubstitute;
  [(LPVideo *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_index forKey:@"richLinkVideoAttachmentSubstituteIndex"];
}

@end