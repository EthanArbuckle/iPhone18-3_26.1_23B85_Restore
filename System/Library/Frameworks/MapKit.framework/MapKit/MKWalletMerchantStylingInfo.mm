@interface MKWalletMerchantStylingInfo
- (BOOL)isEqual:(id)equal;
- (MKWalletMerchantStylingInfo)initWithCoder:(id)coder;
- (MKWalletMerchantStylingInfo)initWithStyleAttributes:(id)attributes;
- (id)_featureStyleAttributes;
- (id)description;
- (id)imageForSize:(unint64_t)size scale:(double)scale transparent:(BOOL)transparent;
- (id)tintColorForScale:(double)scale;
@end

@implementation MKWalletMerchantStylingInfo

- (id)description
{
  _featureStyleAttributes = [(MKWalletMerchantStylingInfo *)self _featureStyleAttributes];
  if (_featureStyleAttributes)
  {
    string = [MEMORY[0x1E696AD60] string];
    if ([_featureStyleAttributes countAttrs])
    {
      v4 = 0;
      v5 = 0;
      do
      {
        -[__CFString appendFormat:](string, "appendFormat:", @"%u,%d; ", *([_featureStyleAttributes v] + v4), *(objc_msgSend(_featureStyleAttributes, "v") + v4 + 4));
        ++v5;
        v4 += 8;
      }

      while (v5 < [_featureStyleAttributes countAttrs]);
    }
  }

  else
  {
    string = @"(null)";
  }

  return string;
}

- (id)tintColorForScale:(double)scale
{
  _featureStyleAttributes = [(MKWalletMerchantStylingInfo *)self _featureStyleAttributes];
  v5 = [MKIconManager newFillColorForStyleAttributes:_featureStyleAttributes forScale:scale];

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

- (id)imageForSize:(unint64_t)size scale:(double)scale transparent:(BOOL)transparent
{
  transparentCopy = transparent;
  _featureStyleAttributes = [(MKWalletMerchantStylingInfo *)self _featureStyleAttributes];
  v9 = [MKIconManager imageForStyle:_featureStyleAttributes size:size forScale:0 format:transparentCopy transparent:scale];

  return v9;
}

- (id)_featureStyleAttributes
{
  v2 = [objc_alloc(MEMORY[0x1E69A25E0]) initWithData:self->_styleAttributesData];
  v3 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithPlaceStyleAttributes:v2];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy[1];
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

- (MKWalletMerchantStylingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantStylingInfo;
  v5 = [(MKWalletMerchantStylingInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    styleAttributesData = v5->_styleAttributesData;
    v5->_styleAttributesData = v6;
  }

  return v5;
}

- (MKWalletMerchantStylingInfo)initWithStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = MKWalletMerchantStylingInfo;
  v5 = [(MKWalletMerchantStylingInfo *)&v9 init];
  if (v5)
  {
    data = [attributesCopy data];
    styleAttributesData = v5->_styleAttributesData;
    v5->_styleAttributesData = data;
  }

  return v5;
}

@end