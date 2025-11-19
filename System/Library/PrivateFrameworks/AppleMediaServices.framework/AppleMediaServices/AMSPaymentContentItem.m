@interface AMSPaymentContentItem
- (AMSPaymentContentItem)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setImage:(CGImage *)a3;
@end

@implementation AMSPaymentContentItem

- (AMSPaymentContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AMSPaymentContentItem;
  v5 = [(AMSPaymentContentItem *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessiblityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"padding"];
    padding = v5->_padding;
    v5->_padding = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_title forKey:@"title"];
  [v8 encodeObject:self->_label forKey:@"label"];
  accessibilityIdentifier = self->_accessibilityIdentifier;
  if (accessibilityIdentifier)
  {
    [v8 encodeObject:accessibilityIdentifier forKey:@"accessiblityIdentifier"];
  }

  if (self->_image)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithCGImage:?];
    [v8 encodeObject:v5 forKey:@"image"];
  }

  padding = self->_padding;
  v7 = v8;
  if (padding)
  {
    [v8 encodeObject:padding forKey:@"padding"];
    v7 = v8;
  }
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = AMSPaymentContentItem;
  [(AMSPaymentContentItem *)&v3 dealloc];
}

- (void)setImage:(CGImage *)a3
{
  image = self->_image;
  if (image != a3)
  {
    CGImageRelease(image);
    self->_image = CGImageRetain(a3);
  }
}

@end