@interface TUIAXAttributes
- (TUIAXAttributes)initWithAXAttributes:(id)a3;
@end

@implementation TUIAXAttributes

- (TUIAXAttributes)initWithAXAttributes:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TUIAXAttributes;
  v5 = [(TUIAXAttributes *)&v27 init];
  if (v5)
  {
    *&v5->_flags = *&v5->_flags & 0xFFFE | [v4 axDisabled];
    if ([v4 isAXElement])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFFD | v6;
    if ([v4 axTouchContainer])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFFB | v7;
    if ([v4 axButton])
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFF7 | v8;
    if ([v4 axImage])
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFEF | v9;
    if ([v4 axHeading])
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFDF | v10;
    if ([v4 axAdjustable])
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFFBF | v11;
    if ([v4 axToggle])
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFF7F | v12;
    if ([v4 axStaticText])
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFEFF | v13;
    v14 = [v4 axIdentifier];
    v15 = [v14 copy];
    axIdentifier = v5->_axIdentifier;
    v5->_axIdentifier = v15;

    v17 = [v4 axLabel];
    v18 = [v17 copy];
    axLabel = v5->_axLabel;
    v5->_axLabel = v18;

    v20 = [v4 axValue];
    v21 = [v20 copy];
    axValue = v5->_axValue;
    v5->_axValue = v21;

    v23 = [v4 axHint];
    v24 = [v23 copy];
    axHint = v5->_axHint;
    v5->_axHint = v24;
  }

  return v5;
}

@end