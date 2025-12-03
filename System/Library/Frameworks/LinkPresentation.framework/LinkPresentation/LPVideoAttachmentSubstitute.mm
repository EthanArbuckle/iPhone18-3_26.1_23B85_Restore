@interface LPVideoAttachmentSubstitute
- (LPVideoAttachmentSubstitute)initWithCoder:(id)coder;
- (LPVideoAttachmentSubstitute)initWithVideo:(id)video;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPVideoAttachmentSubstitute

- (LPVideoAttachmentSubstitute)initWithVideo:(id)video
{
  v7.receiver = self;
  v7.super_class = LPVideoAttachmentSubstitute;
  v3 = [(LPVideo *)&v7 _initWithVideo:video];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPVideoAttachmentSubstitute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = LPVideoAttachmentSubstitute;
  v5 = [(LPVideo *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkVideoAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = LPVideoAttachmentSubstitute;
  [(LPVideo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkVideoAttachmentSubstituteIndex"];
}

@end