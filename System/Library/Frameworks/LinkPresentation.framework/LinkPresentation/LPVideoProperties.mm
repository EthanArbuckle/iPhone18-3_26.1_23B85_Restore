@interface LPVideoProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPVideoProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPVideoProperties allocWithZone:zone];
  if (v4)
  {
    [(LPVideoProperties *)v4 setHasAudio:[(LPVideoProperties *)self hasAudio]];
    _overlappingControlsColor = [(LPVideoProperties *)self _overlappingControlsColor];
    [(LPVideoProperties *)v4 _setOverlappingControlsColor:_overlappingControlsColor];

    accessibilityText = [(LPVisualMediaProperties *)self accessibilityText];
    v7 = [accessibilityText copy];
    [(LPVisualMediaProperties *)v4 setAccessibilityText:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = LPVideoProperties;
  if ([(LPVisualMediaProperties *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (v6[16] == self->_hasAudio && ([v6 accessibilityText], v8 = objc_claimAutoreleasedReturnValue(), -[LPVisualMediaProperties accessibilityText](self, "accessibilityText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objectsAreEqual_1(v8, v9), v9, v8, (v10 & 1) != 0))
      {
        v5 = objectsAreEqual_1(v7[3], self->_overlappingControlsColor);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end