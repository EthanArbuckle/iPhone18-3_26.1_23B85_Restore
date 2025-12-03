@interface TUIAXAttributes
- (TUIAXAttributes)initWithAXAttributes:(id)attributes;
@end

@implementation TUIAXAttributes

- (TUIAXAttributes)initWithAXAttributes:(id)attributes
{
  attributesCopy = attributes;
  v27.receiver = self;
  v27.super_class = TUIAXAttributes;
  v5 = [(TUIAXAttributes *)&v27 init];
  if (v5)
  {
    *&v5->_flags = *&v5->_flags & 0xFFFE | [attributesCopy axDisabled];
    if ([attributesCopy isAXElement])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFFD | v6;
    if ([attributesCopy axTouchContainer])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFFB | v7;
    if ([attributesCopy axButton])
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFF7 | v8;
    if ([attributesCopy axImage])
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFEF | v9;
    if ([attributesCopy axHeading])
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFDF | v10;
    if ([attributesCopy axAdjustable])
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFBF | v11;
    if ([attributesCopy axToggle])
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFF7F | v12;
    if ([attributesCopy axStaticText])
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFEFF | v13;
    axIdentifier = [attributesCopy axIdentifier];
    v15 = [axIdentifier copy];
    axIdentifier = v5->_axIdentifier;
    v5->_axIdentifier = v15;

    axLabel = [attributesCopy axLabel];
    v18 = [axLabel copy];
    axLabel = v5->_axLabel;
    v5->_axLabel = v18;

    axValue = [attributesCopy axValue];
    v21 = [axValue copy];
    axValue = v5->_axValue;
    v5->_axValue = v21;

    axHint = [attributesCopy axHint];
    v24 = [axHint copy];
    axHint = v5->_axHint;
    v5->_axHint = v24;
  }

  return v5;
}

@end