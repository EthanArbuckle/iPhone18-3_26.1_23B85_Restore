@interface MKWalletMerchantStylingInfo
- (BOOL)isEqual:(id)a3;
- (MKWalletMerchantStylingInfo)initWithCoder:(id)a3;
- (MKWalletMerchantStylingInfo)initWithStyleAttributes:(id)a3;
- (id)_featureStyleAttributes;
- (id)description;
- (id)imageForSize:(unint64_t)a3 scale:(double)a4 transparent:(BOOL)a5;
- (id)tintColorForScale:(double)a3;
@end

@implementation MKWalletMerchantStylingInfo

- (id)description
{
  v2 = [(MKWalletMerchantStylingInfo *)self _featureStyleAttributes];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD60] string];
    if ([v2 countAttrs])
    {
      v4 = 0;
      v5 = 0;
      do
      {
        -[__CFString appendFormat:](v3, "appendFormat:", @"%u,%d; ", *([v2 v] + v4), *(objc_msgSend(v2, "v") + v4 + 4));
        ++v5;
        v4 += 8;
      }

      while (v5 < [v2 countAttrs]);
    }
  }

  else
  {
    v3 = @"(null)";
  }

  return v3;
}

- (id)tintColorForScale:(double)a3
{
  v4 = [(MKWalletMerchantStylingInfo *)self _featureStyleAttributes];
  v5 = [MKIconManager newFillColorForStyleAttributes:v4 forScale:a3];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] colorWithCGColor:v5];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageForSize:(unint64_t)a3 scale:(double)a4 transparent:(BOOL)a5
{
  v5 = a5;
  v8 = [(MKWalletMerchantStylingInfo *)self _featureStyleAttributes];
  v9 = [MKIconManager imageForStyle:v8 size:a3 forScale:0 format:v5 transparent:a4];

  return v9;
}

- (id)_featureStyleAttributes
{
  v2 = [objc_alloc(MEMORY[0x1E69A25E0]) initWithData:self->_styleAttributesData];
  v3 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithPlaceStyleAttributes:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[1];
    if (v5 | self->_styleAttributesData)
    {
      v6 = [v5 isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MKWalletMerchantStylingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantStylingInfo;
  v5 = [(MKWalletMerchantStylingInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    styleAttributesData = v5->_styleAttributesData;
    v5->_styleAttributesData = v6;
  }

  return v5;
}

- (MKWalletMerchantStylingInfo)initWithStyleAttributes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantStylingInfo;
  v5 = [(MKWalletMerchantStylingInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 data];
    styleAttributesData = v5->_styleAttributesData;
    v5->_styleAttributesData = v6;
  }

  return v5;
}

@end