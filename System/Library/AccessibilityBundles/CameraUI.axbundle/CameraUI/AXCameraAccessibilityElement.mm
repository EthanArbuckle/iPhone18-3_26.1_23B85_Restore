@interface AXCameraAccessibilityElement
- (CGRect)normalizedFrame;
- (NSString)_subjectDescription;
- (id)accessibilityLabel;
- (id)description;
@end

@implementation AXCameraAccessibilityElement

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDBD770] localizedStringForLocation:-[AXCameraAccessibilityElement location](self isSubjectImplicit:{"location"), 0}];
  if (v3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    _subjectDescription = [(AXCameraAccessibilityElement *)self _subjectDescription];
    _subjectDescription2 = [v4 localizedStringWithFormat:v3, _subjectDescription];
  }

  else
  {
    _subjectDescription2 = [(AXCameraAccessibilityElement *)self _subjectDescription];
  }

  return _subjectDescription2;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AXCameraAccessibilityElement;
  v3 = [(AXCameraAccessibilityElement *)&v8 description];
  accessibilityLabel = [(AXCameraAccessibilityElement *)self accessibilityLabel];
  [(AXCameraAccessibilityElement *)self normalizedFrame];
  v5 = AXMStringFromNormalizedCGRect();
  v6 = [v3 stringByAppendingFormat:@" %@ (%@)", accessibilityLabel, v5];

  return v6;
}

- (NSString)_subjectDescription
{
  faceName = [(AXCameraAccessibilityElement *)self faceName];
  v4 = [faceName length];

  if (v4)
  {
    faceName2 = [(AXCameraAccessibilityElement *)self faceName];
LABEL_6:
    v7 = faceName2;
    goto LABEL_7;
  }

  if ([(AXCameraAccessibilityElement *)self isFace])
  {
    v6 = @"unknown.face";
LABEL_5:
    faceName2 = accessibilityCameraUILocalizedString(v6);
    goto LABEL_6;
  }

  if (![(AXCameraAccessibilityElement *)self isPerson])
  {
    if ([(AXCameraAccessibilityElement *)self isObjectClassification])
    {
      faceName2 = [(AXCameraAccessibilityElement *)self classificationLocalizedValue];
      goto LABEL_6;
    }

    v6 = @"prominent.object";
    goto LABEL_5;
  }

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityCameraUILocalizedString(@"people.count");
  v7 = [v9 localizedStringWithFormat:v10, 1];

LABEL_7:

  return v7;
}

- (CGRect)normalizedFrame
{
  x = self->_normalizedFrame.origin.x;
  y = self->_normalizedFrame.origin.y;
  width = self->_normalizedFrame.size.width;
  height = self->_normalizedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end