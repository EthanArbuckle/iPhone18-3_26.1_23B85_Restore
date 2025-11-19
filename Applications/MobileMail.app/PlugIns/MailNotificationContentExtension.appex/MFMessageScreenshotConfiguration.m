@interface MFMessageScreenshotConfiguration
- (CGSize)size;
- (MFMessageScreenshotConfiguration)init;
- (MFMessageScreenshotConfiguration)initWithCoder:(id)a3;
- (UIEdgeInsets)margins;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setShowBanners:{-[MFMessageScreenshotConfiguration showBanners](self, "showBanners")}];
  [v4 setShowSourceMailbox:{-[MFMessageScreenshotConfiguration showSourceMailbox](self, "showSourceMailbox")}];
  [(MFMessageScreenshotConfiguration *)self size];
  [v4 setSize:?];
  [(MFMessageScreenshotConfiguration *)self margins];
  [v4 setMargins:?];
  v5 = [(MFMessageScreenshotConfiguration *)self traitCollection];
  [v4 setTraitCollection:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(MFMessageScreenshotConfiguration *)self traitCollection];
  [v9 encodeObject:v4 forKey:@"kMFCodingKeyTraitCollection"];

  v5 = [NSNumber numberWithBool:[(MFMessageScreenshotConfiguration *)self showBanners]];
  [v9 encodeObject:v5 forKey:@"kMFCodingKeyShowBanners"];

  v6 = [NSNumber numberWithBool:[(MFMessageScreenshotConfiguration *)self showSourceMailbox]];
  [v9 encodeObject:v6 forKey:@"kMFCodingKeyShowSourceMailbox"];

  [(MFMessageScreenshotConfiguration *)self size];
  v7 = [NSValue valueWithCGSize:?];
  [v9 encodeObject:v7 forKey:@"kMFCodingKeySize"];

  [(MFMessageScreenshotConfiguration *)self margins];
  v8 = [NSValue valueWithUIEdgeInsets:?];
  [v9 encodeObject:v8 forKey:@"kMFCodingKeyMargins"];
}

- (MFMessageScreenshotConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageScreenshotConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyShowSourceMailbox"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      v8 = 1;
    }

    v5->_showSourceMailbox = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyShowBanners"];

    if (v9)
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 1;
    }

    v5->_showBanners = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeySize"];
    [v11 CGSizeValue];
    v5->_size.width = v12;
    v5->_size.height = v13;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyMargins"];
    [v14 UIEdgeInsetsValue];
    v5->_margins.top = v15;
    v5->_margins.left = v16;
    v5->_margins.bottom = v17;
    v5->_margins.right = v18;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMFCodingKeyTraitCollection"];
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