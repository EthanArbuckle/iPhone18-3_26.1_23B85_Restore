@interface NSAttributedString
+ (NSAttributedString)attributedStringWithText:(id)text highlightRanges:(id)ranges font:(id)font highlightedFont:(id)highlightedFont highlightedTextColor:(id)color unhighlightedTextColor:(id)textColor;
+ (id)unsafeBoldCharacterSet;
- (NSAttributedString)_maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords;
- (id)_maps_attributedStringByAppendingRidesharingSpecialPricingBadge:(id)badge representativeContentFont:(id)font;
- (id)_maps_attributedStringWithExcessiveHeightCharacterSupport:(double)support;
@end

@implementation NSAttributedString

- (NSAttributedString)_maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords
{
  v2 = [(NSAttributedString *)self mutableCopy];
  string = [v2 string];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_1014C0133;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v22 = vnegq_f64(v4);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007F988;
  v13[3] = &unk_10164FDD0;
  v13[4] = &v14;
  [string enumerateSubstringsInRange:0 options:objc_msgSend(string usingBlock:{"length"), 3, v13}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F9A0;
  v12[3] = &unk_10164FDD0;
  v12[4] = &v18;
  [string enumerateSubstringsInRange:0 options:objc_msgSend(string usingBlock:{"length"), 259, v12}];
  v5 = v19[4];
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL && v19[5] <= 1 && v15[3] > 2)
  {
    v9 = +[NSCharacterSet whitespaceCharacterSet];
    v10 = v5 - 1;
    v11 = [string rangeOfCharacterFromSet:v9 options:0 range:{v10, 1}];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v2 replaceCharactersInRange:v10 withString:{1, @" "}];
    }

    v6 = [v2 copy];
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

- (id)_maps_attributedStringWithExcessiveHeightCharacterSupport:(double)support
{
  string = [(NSAttributedString *)self string];
  if ([string _maps_containsExcessiveHeightCharacters])
  {
    v6 = [(NSAttributedString *)self mutableCopy];
    v7 = [string length];
    v8 = [v6 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = +[NSParagraphStyle defaultParagraphStyle];
      v10 = [v12 mutableCopy];
    }

    [v10 setLineHeightMultiple:support];
    [v6 addAttribute:NSParagraphStyleAttributeName value:v10 range:{0, v7}];
    selfCopy = [v6 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_maps_attributedStringByAppendingRidesharingSpecialPricingBadge:(id)badge representativeContentFont:(id)font
{
  fontCopy = font;
  badgeCopy = badge;
  [fontCopy lineHeight];
  v8 = [badgeCopy badgeImageWithMaximumDimension:?];

  if (v8)
  {
    v9 = [[NSTextAttachment alloc] initWithData:0 ofType:0];
    [v9 setImage:v8];
    [fontCopy lineHeight];
    v11 = v10;
    [v8 size];
    v13 = v11 - v12;
    [fontCopy descender];
    v15 = v14 + v13 * 0.5;
    [v8 size];
    [v9 setBounds:{0.0, v15, v16, v17}];
    v18 = [NSAttributedString attributedStringWithAttachment:v9];
    v19 = objc_opt_class();
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"SUBTITLE - SURGE ICON INDICATOR [Ridesharing format string]" value:@"localized string not found" table:0];
    v25[0] = @"subtitle";
    v25[1] = @"surgeIcon";
    v26[0] = self;
    v26[1] = v18;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    selfCopy = [v19 _mapkit_attributedStringWithBindingFormat:v21 replacements:v22 attributes:0];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (NSAttributedString)attributedStringWithText:(id)text highlightRanges:(id)ranges font:(id)font highlightedFont:(id)highlightedFont highlightedTextColor:(id)color unhighlightedTextColor:(id)textColor
{
  textCopy = text;
  rangesCopy = ranges;
  fontCopy = font;
  highlightedFontCopy = highlightedFont;
  colorCopy = color;
  textColorCopy = textColor;
  if ([textCopy length])
  {
    v18 = +[NSAttributedString unsafeBoldCharacterSet];
    v19 = [NSMutableAttributedString alloc];
    v43 = NSFontAttributeName;
    v44 = fontCopy;
    v20 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v21 = [v19 initWithString:textCopy attributes:v20];

    if (textColorCopy)
    {
      [v21 addAttribute:NSForegroundColorAttributeName value:textColorCopy range:{0, objc_msgSend(textCopy, "length")}];
    }

    if ([rangesCopy count] && objc_msgSend(textCopy, "rangeOfCharacterFromSet:", v18) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v18;
      v33 = textColorCopy;
      v34 = fontCopy;
      v35 = rangesCopy;
      v36 = textCopy;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = rangesCopy;
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            rangeValue = [*(*(&v38 + 1) + 8 * i) rangeValue];
            if (rangeValue != 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = rangeValue;
              v30 = v28;
              if (&rangeValue[v28] <= [v21 length])
              {
                if (highlightedFontCopy)
                {
                  [v21 addAttribute:NSFontAttributeName value:highlightedFontCopy range:{v29, v30}];
                }

                if (colorCopy)
                {
                  [v21 addAttribute:NSForegroundColorAttributeName value:colorCopy range:{v29, v30}];
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v24);
      }

      rangesCopy = v35;
      textCopy = v36;
      textColorCopy = v33;
      fontCopy = v34;
      v18 = v32;
    }
  }

  else
  {
    v21 = [[NSAttributedString alloc] initWithString:&stru_1016631F0];
  }

  return v21;
}

+ (id)unsafeBoldCharacterSet
{
  if (qword_10195EE08 != -1)
  {
    dispatch_once(&qword_10195EE08, &stru_10164FDA8);
  }

  v3 = qword_10195EE10;

  return v3;
}

@end