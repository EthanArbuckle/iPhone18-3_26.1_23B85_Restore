@interface SiriHintViewController
- (double)desiredHeightForWidth:(double)width;
- (id)_attributedString;
- (id)_attributedStringForText:(id)text regions:(id)regions;
- (void)_handleHintViewTap:(id)tap;
- (void)loadView;
@end

@implementation SiriHintViewController

- (id)_attributedStringForText:(id)text regions:(id)regions
{
  textCopy = text;
  regionsCopy = regions;
  v39 = NSFontAttributeName;
  v7 = &FBSOpenApplicationErrorCodeToString_ptr;
  v8 = +[UIFont siriui_thinWeightBodySizeFont];
  v40 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v28 = v9;
  v29 = textCopy;
  v30 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:v9];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = regionsCopy;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    v13 = SARegionPropertyHIGHLIGHTED_QUERY_PARAMValue;
    v31 = SARegionPropertySUGGESTED_UTTERANCEValue;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        property = [v15 property];
        if (([property isEqualToString:v13] & 1) != 0 || objc_msgSend(property, "isEqualToString:", v31))
        {
          v17 = NSFontAttributeName;
          siriui_mediumWeightBodySizeFont = [v7[127] siriui_mediumWeightBodySizeFont];
          v19 = siriui_mediumWeightBodySizeFont;
          if (NSFontAttributeName && siriui_mediumWeightBodySizeFont)
          {
            [v15 start];
            v21 = v20 = v12;
            unsignedIntegerValue = [v21 unsignedIntegerValue];
            v22 = [v15 length];
            v23 = v11;
            v24 = v13;
            unsignedIntegerValue2 = [v22 unsignedIntegerValue];

            v12 = v20;
            v7 = &FBSOpenApplicationErrorCodeToString_ptr;
            v26 = unsignedIntegerValue2;
            v13 = v24;
            v11 = v23;
            [v30 addAttribute:v17 value:v19 range:{unsignedIntegerValue, v26}];
          }
        }

        else
        {
          v19 = 0;
          v17 = 0;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  return v30;
}

- (id)_attributedString
{
  aceObject = [(SiriHintViewController *)self aceObject];
  text = [aceObject text];
  regions = [aceObject regions];
  v6 = [(SiriHintViewController *)self _attributedStringForText:text regions:regions];

  return v6;
}

- (double)desiredHeightForWidth:(double)width
{
  v5 = 0.0;
  if (([(SiriHintViewController *)self isVirgin]& 1) == 0)
  {
    _attributedString = [(SiriHintViewController *)self _attributedString];
    [SiriHintView sizeThatFitsString:_attributedString forWidth:width];
    v5 = v7;
  }

  return v5;
}

- (void)loadView
{
  if ([(SiriHintViewController *)self isVirgin])
  {
    v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    v5 = [[SiriHintView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    _attributedString = [(SiriHintViewController *)self _attributedString];
    [(SiriHintView *)v5 setAttributedText:_attributedString];

    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleHintViewTap:"];
    [(SiriHintView *)v5 addGestureRecognizer:v4];
  }

  [(SiriHintViewController *)self setView:v5];
}

- (void)_handleHintViewTap:(id)tap
{
  aceObject = [(SiriHintViewController *)self aceObject];
  commands = [aceObject commands];

  if ([commands count])
  {
    delegate = [(SiriHintViewController *)self delegate];
    [delegate siriViewController:self performAceCommands:commands];
  }
}

@end