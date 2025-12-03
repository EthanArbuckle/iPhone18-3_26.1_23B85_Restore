@interface MFMessageScreenshotConfiguration
- (CGSize)size;
- (MFMessageScreenshotConfiguration)init;
- (MFMessageScreenshotConfiguration)initWithCoder:(id)coder;
- (UIEdgeInsets)margins;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFMessageScreenshotConfiguration

- (MFMessageScreenshotConfiguration)init
{
  v7.receiver = self;
  v7.super_class = MFMessageScreenshotConfiguration;
  v2 = [(MFMessageScreenshotConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 257;
    *(v2 + 24) = CGSizeZero;
    v4 = *&UIEdgeInsetsZero.bottom;
    *(v2 + 40) = *&UIEdgeInsetsZero.top;
    *(v2 + 56) = v4;
    v5 = *(v2 + 2);
    *(v2 + 2) = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setShowBanners:{-[MFMessageScreenshotConfiguration showBanners](self, "showBanners")}];
  [v4 setShowSourceMailbox:{-[MFMessageScreenshotConfiguration showSourceMailbox](self, "showSourceMailbox")}];
  [(MFMessageScreenshotConfiguration *)self size];
  [v4 setSize:?];
  [(MFMessageScreenshotConfiguration *)self margins];
  [v4 setMargins:?];
  traitCollection = [(MFMessageScreenshotConfiguration *)self traitCollection];
  [v4 setTraitCollection:traitCollection];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  traitCollection = [(MFMessageScreenshotConfiguration *)self traitCollection];
  [coderCopy encodeObject:traitCollection forKey:@"kMFCodingKeyTraitCollection"];

  v5 = [NSNumber numberWithBool:[(MFMessageScreenshotConfiguration *)self showBanners]];
  [coderCopy encodeObject:v5 forKey:@"kMFCodingKeyShowBanners"];

  v6 = [NSNumber numberWithBool:[(MFMessageScreenshotConfiguration *)self showSourceMailbox]];
  [coderCopy encodeObject:v6 forKey:@"kMFCodingKeyShowSourceMailbox"];

  [(MFMessageScreenshotConfiguration *)self size];
  v7 = [NSValue valueWithCGSize:?];
  [coderCopy encodeObject:v7 forKey:@"kMFCodingKeySize"];

  [(MFMessageScreenshotConfiguration *)self margins];
  v8 = [NSValue valueWithUIEdgeInsets:?];
  [coderCopy encodeObject:v8 forKey:@"kMFCodingKeyMargins"];
}

- (MFMessageScreenshotConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MFMessageScreenshotConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyShowSourceMailbox"];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_showSourceMailbox = bOOLValue;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyShowBanners"];

    if (v9)
    {
      bOOLValue2 = [v9 BOOLValue];
    }

    else
    {
      bOOLValue2 = 1;
    }

    v5->_showBanners = bOOLValue2;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeySize"];
    [v11 CGSizeValue];
    v5->_size.width = v12;
    v5->_size.height = v13;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyMargins"];
    [v14 UIEdgeInsetsValue];
    v5->_margins.top = v15;
    v5->_margins.left = v16;
    v5->_margins.bottom = v17;
    v5->_margins.right = v18;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyTraitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v19;
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end