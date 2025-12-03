@interface LPImageAttachmentSubstitute
- (LPImageAttachmentSubstitute)initWithCoder:(id)coder;
- (LPImageAttachmentSubstitute)initWithImage:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPImageAttachmentSubstitute

- (LPImageAttachmentSubstitute)initWithImage:(id)image
{
  v7.receiver = self;
  v7.super_class = LPImageAttachmentSubstitute;
  v3 = [(LPImage *)&v7 _initWithImage:image];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPImageAttachmentSubstitute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = LPImageAttachmentSubstitute;
  v5 = [(LPImage *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkImageAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = LPImageAttachmentSubstitute;
  [(LPImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkImageAttachmentSubstituteIndex"];
}

@end