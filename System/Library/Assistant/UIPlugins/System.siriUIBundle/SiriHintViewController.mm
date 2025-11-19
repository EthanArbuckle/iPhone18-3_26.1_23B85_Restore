@interface SiriHintViewController
- (double)desiredHeightForWidth:(double)a3;
- (id)_attributedString;
- (id)_attributedStringForText:(id)a3 regions:(id)a4;
- (void)_handleHintViewTap:(id)a3;
- (void)loadView;
@end

@implementation SiriHintViewController

- (id)_attributedStringForText:(id)a3 regions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v39 = NSFontAttributeName;
  v7 = &FBSOpenApplicationErrorCodeToString_ptr;
  v8 = +[UIFont siriui_thinWeightBodySizeFont];
  v40 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  v28 = v9;
  v29 = v5;
  v30 = [[NSMutableAttributedString alloc] initWithString:v5 attributes:v9];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
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
        v16 = [v15 property];
        if (([v16 isEqualToString:v13] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v31))
        {
          v17 = NSFontAttributeName;
          v18 = [v7[127] siriui_mediumWeightBodySizeFont];
          v19 = v18;
          if (NSFontAttributeName && v18)
          {
            [v15 start];
            v21 = v20 = v12;
            v33 = [v21 unsignedIntegerValue];
            v22 = [v15 length];
            v23 = v11;
            v24 = v13;
            v25 = [v22 unsignedIntegerValue];

            v12 = v20;
            v7 = &FBSOpenApplicationErrorCodeToString_ptr;
            v26 = v25;
            v13 = v24;
            v11 = v23;
            [v30 addAttribute:v17 value:v19 range:{v33, v26}];
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
  v3 = [(SiriHintViewController *)self aceObject];
  v4 = [v3 text];
  v5 = [v3 regions];
  v6 = [(SiriHintViewController *)self _attributedStringForText:v4 regions:v5];

  return v6;
}

- (double)desiredHeightForWidth:(double)a3
{
  v5 = 0.0;
  if (([(SiriHintViewController *)self isVirgin]& 1) == 0)
  {
    v6 = [(SiriHintViewController *)self _attributedString];
    [SiriHintView sizeThatFitsString:v6 forWidth:a3];
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
    v3 = [(SiriHintViewController *)self _attributedString];
    [(SiriHintView *)v5 setAttributedText:v3];

    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleHintViewTap:"];
    [(SiriHintView *)v5 addGestureRecognizer:v4];
  }

  [(SiriHintViewController *)self setView:v5];
}

- (void)_handleHintViewTap:(id)a3
{
  v4 = [(SiriHintViewController *)self aceObject];
  v6 = [v4 commands];

  if ([v6 count])
  {
    v5 = [(SiriHintViewController *)self delegate];
    [v5 siriViewController:self performAceCommands:v6];
  }
}

@end