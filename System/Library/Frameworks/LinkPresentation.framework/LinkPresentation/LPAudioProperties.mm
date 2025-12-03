@interface LPAudioProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPAudioProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPAudioProperties allocWithZone:zone];
  if (v4)
  {
    accessibilityText = [(LPAudioProperties *)self accessibilityText];
    v6 = [accessibilityText copy];
    [(LPAudioProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPAudioProperties;
  if ([(LPAudioProperties *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_2(equalCopy[1], self->_accessibilityText);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end