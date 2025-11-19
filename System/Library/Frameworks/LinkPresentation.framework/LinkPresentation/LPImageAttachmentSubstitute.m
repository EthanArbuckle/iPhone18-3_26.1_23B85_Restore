@interface LPImageAttachmentSubstitute
- (LPImageAttachmentSubstitute)initWithCoder:(id)a3;
- (LPImageAttachmentSubstitute)initWithImage:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPImageAttachmentSubstitute

- (LPImageAttachmentSubstitute)initWithImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = LPImageAttachmentSubstitute;
  v3 = [(LPImage *)&v7 _initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPImageAttachmentSubstitute)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPImageAttachmentSubstitute;
  v5 = [(LPImage *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"richLinkImageAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = LPImageAttachmentSubstitute;
  [(LPImage *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_index forKey:@"richLinkImageAttachmentSubstituteIndex"];
}

@end