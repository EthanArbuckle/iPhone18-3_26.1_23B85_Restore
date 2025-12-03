@interface FMTextFieldUtil
+ (BOOL)updateTextField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
+ (BOOL)updateTextView:(id)view shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
@end

@implementation FMTextFieldUtil

+ (BOOL)updateTextView:(id)view shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  stringCopy = string;
  text = [viewCopy text];
  text2 = [viewCopy text];
  v12 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:text2];

  if (!qword_1006C4080)
  {
    v13 = +[NSMutableCharacterSet decimalDigitCharacterSet];
    [v13 addCharactersInString:@"+"];
    v14 = qword_1006C4080;
    qword_1006C4080 = v13;
  }

  v15 = [stringCopy stringByTrimmingCharactersInSet:?];
  v16 = [v15 length];

  if (v16 || [stringCopy isEqualToString:@"+"] && objc_msgSend(v12, "length"))
  {
    goto LABEL_4;
  }

  if ([stringCopy length])
  {
    v21 = [text length];
    v19 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
    v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

    v23 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
    [viewCopy setText:v23];

    beginningOfDocument = [viewCopy beginningOfDocument];
    if (v21 == location)
    {
      text3 = [viewCopy text];
      v18 = [viewCopy positionFromPosition:beginningOfDocument offset:{objc_msgSend(text3, "length")}];
    }

    else
    {
      v18 = [viewCopy positionFromPosition:beginningOfDocument offset:location + 1];
    }

    goto LABEL_17;
  }

  if (length != 1 || [stringCopy length])
  {
LABEL_4:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  if (location == [text length] - 1)
  {
    if ([v12 length])
    {
      v26 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 1}];
    }

    else
    {
      v26 = v12;
    }

    v19 = v26;
    v28 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v26];
    [viewCopy setText:v28];
    v17 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  v29 = location;
  if (location >= 1)
  {
    v29 = location;
    while (1)
    {
      v30 = [text substringWithRange:{v29, 1}];
      v31 = [v30 rangeOfCharacterFromSet:qword_1006C4080];

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v29-- <= 1)
      {
        v29 = 0;
        break;
      }
    }
  }

  v19 = [text stringByReplacingCharactersInRange:v29 withString:{1, &stru_100645910}];
  v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

  v33 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
  [viewCopy setText:v33];

  beginningOfDocument2 = [viewCopy beginningOfDocument];
  v18 = [viewCopy positionFromPosition:beginningOfDocument2 offset:location];

  if (v18)
  {
    goto LABEL_18;
  }

  sub_10053D0C4(a2, self, &v37);
  beginningOfDocument = v37;
LABEL_17:

LABEL_18:
  v12 = v22;
  v27 = [viewCopy positionFromPosition:v18 offset:0];
  v17 = v27;
  if (v18 && v27)
  {
    v28 = [viewCopy textRangeFromPosition:v18 toPosition:v27];
    [viewCopy setSelectedTextRange:v28];
LABEL_21:
  }

LABEL_5:

  return 0;
}

+ (BOOL)updateTextField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  text2 = [fieldCopy text];
  v12 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:text2];

  if (!qword_1006C4088)
  {
    v13 = +[NSMutableCharacterSet decimalDigitCharacterSet];
    [v13 addCharactersInString:@"+"];
    v14 = qword_1006C4088;
    qword_1006C4088 = v13;
  }

  v15 = [stringCopy stringByTrimmingCharactersInSet:?];
  v16 = [v15 length];

  if (v16 || [stringCopy isEqualToString:@"+"] && objc_msgSend(v12, "length"))
  {
    goto LABEL_4;
  }

  if ([stringCopy length])
  {
    v21 = [text length];
    v19 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
    v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

    v23 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
    [fieldCopy setText:v23];

    beginningOfDocument = [fieldCopy beginningOfDocument];
    if (v21 == location)
    {
      text3 = [fieldCopy text];
      v18 = [fieldCopy positionFromPosition:beginningOfDocument offset:{objc_msgSend(text3, "length")}];
    }

    else
    {
      v18 = [fieldCopy positionFromPosition:beginningOfDocument offset:location + 1];
    }

    goto LABEL_17;
  }

  if (length != 1 || [stringCopy length])
  {
LABEL_4:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  if (location == [text length] - 1)
  {
    if ([v12 length])
    {
      v26 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 1}];
    }

    else
    {
      v26 = v12;
    }

    v19 = v26;
    v28 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v26];
    [fieldCopy setText:v28];
    v17 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  v29 = location;
  if (location >= 1)
  {
    v29 = location;
    while (1)
    {
      v30 = [text substringWithRange:{v29, 1}];
      v31 = [v30 rangeOfCharacterFromSet:qword_1006C4088];

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v29-- <= 1)
      {
        v29 = 0;
        break;
      }
    }
  }

  v19 = [text stringByReplacingCharactersInRange:v29 withString:{1, &stru_100645910}];
  v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

  v33 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
  [fieldCopy setText:v33];

  beginningOfDocument2 = [fieldCopy beginningOfDocument];
  v18 = [fieldCopy positionFromPosition:beginningOfDocument2 offset:location];

  if (v18)
  {
    goto LABEL_18;
  }

  sub_10053D13C(a2, self, &v37);
  beginningOfDocument = v37;
LABEL_17:

LABEL_18:
  v12 = v22;
  v27 = [fieldCopy positionFromPosition:v18 offset:0];
  v17 = v27;
  if (v18 && v27)
  {
    v28 = [fieldCopy textRangeFromPosition:v18 toPosition:v27];
    [fieldCopy setSelectedTextRange:v28];
LABEL_21:
  }

LABEL_5:

  return 0;
}

@end