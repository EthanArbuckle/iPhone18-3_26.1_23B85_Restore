@interface AMSPaymentContentItem
- (AMSPaymentContentItem)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(CGImage *)image;
@end

@implementation AMSPaymentContentItem

- (AMSPaymentContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = AMSPaymentContentItem;
  v5 = [(AMSPaymentContentItem *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessiblityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"padding"];
    padding = v5->_padding;
    v5->_padding = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    v18 = v17;
    if (v17 && [(__CFData *)v17 length]&& (v19 = CGImageSourceCreateWithData(v18, 0)) != 0)
    {
      v20 = v19;
      if (CGImageSourceGetCount(v19))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v20, 0, 0);
      }

      else
      {
        ImageAtIndex = 0;
      }

      CFRelease(v20);
    }

    else
    {
      ImageAtIndex = 0;
    }

    v5->_image = ImageAtIndex;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  accessibilityIdentifier = self->_accessibilityIdentifier;
  if (accessibilityIdentifier)
  {
    [coderCopy encodeObject:accessibilityIdentifier forKey:@"accessiblityIdentifier"];
  }

  if (self->_image)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithCGImage:?];
    [coderCopy encodeObject:v5 forKey:@"image"];
  }

  padding = self->_padding;
  v7 = coderCopy;
  if (padding)
  {
    [coderCopy encodeObject:padding forKey:@"padding"];
    v7 = coderCopy;
  }
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = AMSPaymentContentItem;
  [(AMSPaymentContentItem *)&v3 dealloc];
}

- (void)setImage:(CGImage *)image
{
  image = self->_image;
  if (image != image)
  {
    CGImageRelease(image);
    self->_image = CGImageRetain(image);
  }
}

@end