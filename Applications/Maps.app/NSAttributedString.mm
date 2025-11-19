@interface NSAttributedString
+ (NSAttributedString)attributedStringWithText:(id)a3 highlightRanges:(id)a4 font:(id)a5 highlightedFont:(id)a6 highlightedTextColor:(id)a7 unhighlightedTextColor:(id)a8;
+ (id)unsafeBoldCharacterSet;
- (NSAttributedString)_maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords;
- (id)_maps_attributedStringByAppendingRidesharingSpecialPricingBadge:(id)a3 representativeContentFont:(id)a4;
- (id)_maps_attributedStringWithExcessiveHeightCharacterSupport:(double)a3;
@end

@implementation NSAttributedString

- (NSAttributedString)_maps_attributedStringByReplacingWhitespaceToAvoidOrphanWords
{
  v2 = [(NSAttributedString *)self mutableCopy];
  v3 = [v2 string];
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
  [v3 enumerateSubstringsInRange:0 options:objc_msgSend(v3 usingBlock:{"length"), 3, v13}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F9A0;
  v12[3] = &unk_10164FDD0;
  v12[4] = &v18;
  [v3 enumerateSubstringsInRange:0 options:objc_msgSend(v3 usingBlock:{"length"), 259, v12}];
  v5 = v19[4];
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL && v19[5] <= 1 && v15[3] > 2)
  {
    v9 = +[NSCharacterSet whitespaceCharacterSet];
    v10 = v5 - 1;
    v11 = [v3 rangeOfCharacterFromSet:v9 options:0 range:{v10, 1}];

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

- (id)_maps_attributedStringWithExcessiveHeightCharacterSupport:(double)a3
{
  v5 = [(NSAttributedString *)self string];
  if ([v5 _maps_containsExcessiveHeightCharacters])
  {
    v6 = [(NSAttributedString *)self mutableCopy];
    v7 = [v5 length];
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

    [v10 setLineHeightMultiple:a3];
    [v6 addAttribute:NSParagraphStyleAttributeName value:v10 range:{0, v7}];
    v11 = [v6 copy];
  }

  else
  {
    v11 = self;
  }

  return v11;
}

- (id)_maps_attributedStringByAppendingRidesharingSpecialPricingBadge:(id)a3 representativeContentFont:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 lineHeight];
  v8 = [v7 badgeImageWithMaximumDimension:?];

  if (v8)
  {
    v9 = [[NSTextAttachment alloc] initWithData:0 ofType:0];
    [v9 setImage:v8];
    [v6 lineHeight];
    v11 = v10;
    [v8 size];
    v13 = v11 - v12;
    [v6 descender];
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
    v23 = [v19 _mapkit_attributedStringWithBindingFormat:v21 replacements:v22 attributes:0];
  }

  else
  {
    v23 = self;
  }

  return v23;
}

+ (NSAttributedString)attributedStringWithText:(id)a3 highlightRanges:(id)a4 font:(id)a5 highlightedFont:(id)a6 highlightedTextColor:(id)a7 unhighlightedTextColor:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v37 = a7;
  v17 = a8;
  if ([v13 length])
  {
    v18 = +[NSAttributedString unsafeBoldCharacterSet];
    v19 = [NSMutableAttributedString alloc];
    v43 = NSFontAttributeName;
    v44 = v15;
    v20 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v21 = [v19 initWithString:v13 attributes:v20];

    if (v17)
    {
      [v21 addAttribute:NSForegroundColorAttributeName value:v17 range:{0, objc_msgSend(v13, "length")}];
    }

    if ([v14 count] && objc_msgSend(v13, "rangeOfCharacterFromSet:", v18) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v18;
      v33 = v17;
      v34 = v15;
      v35 = v14;
      v36 = v13;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = v14;
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

            v27 = [*(*(&v38 + 1) + 8 * i) rangeValue];
            if (v27 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = v27;
              v30 = v28;
              if (&v27[v28] <= [v21 length])
              {
                if (v16)
                {
                  [v21 addAttribute:NSFontAttributeName value:v16 range:{v29, v30}];
                }

                if (v37)
                {
                  [v21 addAttribute:NSForegroundColorAttributeName value:v37 range:{v29, v30}];
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v24);
      }

      v14 = v35;
      v13 = v36;
      v17 = v33;
      v15 = v34;
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