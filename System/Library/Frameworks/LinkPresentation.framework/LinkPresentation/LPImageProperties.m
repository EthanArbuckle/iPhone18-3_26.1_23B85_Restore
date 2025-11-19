@interface LPImageProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation LPImageProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPImageProperties allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPImageProperties *)self accessibilityText];
    v6 = [v5 copy];
    [(LPImageProperties *)v4 setAccessibilityText:v6];

    [(LPImageProperties *)v4 setType:[(LPImageProperties *)self type]];
    v7 = [(LPImageProperties *)self overlaidTextColor];
    [(LPImageProperties *)v4 setOverlaidTextColor:v7];

    v8 = [(LPImageProperties *)self dominantColor];
    [(LPImageProperties *)v4 setDominantColor:v8];

    [(LPImageProperties *)v4 setHasSingleDominantColor:[(LPImageProperties *)self hasSingleDominantColor]];
    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPImageProperties;
  if ([(LPImageProperties *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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