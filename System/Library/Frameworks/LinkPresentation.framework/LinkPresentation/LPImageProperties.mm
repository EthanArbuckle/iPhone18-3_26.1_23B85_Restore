@interface LPImageProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation LPImageProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPImageProperties allocWithZone:zone];
  if (v4)
  {
    accessibilityText = [(LPImageProperties *)self accessibilityText];
    v6 = [accessibilityText copy];
    [(LPImageProperties *)v4 setAccessibilityText:v6];

    [(LPImageProperties *)v4 setType:[(LPImageProperties *)self type]];
    overlaidTextColor = [(LPImageProperties *)self overlaidTextColor];
    [(LPImageProperties *)v4 setOverlaidTextColor:overlaidTextColor];

    dominantColor = [(LPImageProperties *)self dominantColor];
    [(LPImageProperties *)v4 setDominantColor:dominantColor];

    [(LPImageProperties *)v4 setHasSingleDominantColor:[(LPImageProperties *)self hasSingleDominantColor]];
    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPImageProperties;
  if ([(LPImageProperties *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v5 = (objectsAreEqual(v6[2], self->_accessibilityText) & 1) != 0 && v6[3] == self->_type && objectsAreEqual(v6[4], self->_overlaidTextColor) && objectsAreEqual(v6[5], self->_dominantColor) && *(v6 + 8) == self->_hasSingleDominantColor;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accessibilityText hash];
  v4 = [(UIColor *)self->_overlaidTextColor hash]^ v3;
  return v4 ^ [(UIColor *)self->_dominantColor hash];
}

@end