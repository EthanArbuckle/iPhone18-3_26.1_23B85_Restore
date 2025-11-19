@interface FMTextFieldUtil
+ (BOOL)updateTextField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
+ (BOOL)updateTextView:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
@end

@implementation FMTextFieldUtil

+ (BOOL)updateTextView:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  v11 = [v8 text];
  v12 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v11];

  if (!qword_1006C4080)
  {
    v13 = +[NSMutableCharacterSet decimalDigitCharacterSet];
    [v13 addCharactersInString:@"+"];
    v14 = qword_1006C4080;
    qword_1006C4080 = v13;
  }

  v15 = [v9 stringByTrimmingCharactersInSet:?];
  v16 = [v15 length];

  if (v16 || [v9 isEqualToString:@"+"] && objc_msgSend(v12, "length"))
  {
    goto LABEL_4;
  }

  if ([v9 length])
  {
    v21 = [v10 length];
    v19 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];
    v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

    v23 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
    [v8 setText:v23];

    v24 = [v8 beginningOfDocument];
    if (v21 == location)
    {
      v25 = [v8 text];
      v18 = [v8 positionFromPosition:v24 offset:{objc_msgSend(v25, "length")}];
    }

    else
    {
      v18 = [v8 positionFromPosition:v24 offset:location + 1];
    }

    goto LABEL_17;
  }

  if (length != 1 || [v9 length])
  {
LABEL_4:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  if (location == [v10 length] - 1)
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
    [v8 setText:v28];
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
      v30 = [v10 substringWithRange:{v29, 1}];
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

  v19 = [v10 stringByReplacingCharactersInRange:v29 withString:{1, &stru_100645910}];
  v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

  v33 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
  [v8 setText:v33];

  v34 = [v8 beginningOfDocument];
  v18 = [v8 positionFromPosition:v34 offset:location];

  if (v18)
  {
    goto LABEL_18;
  }

  sub_10053D0C4(a2, a1, &v37);
  v24 = v37;
LABEL_17:

LABEL_18:
  v12 = v22;
  v27 = [v8 positionFromPosition:v18 offset:0];
  v17 = v27;
  if (v18 && v27)
  {
    v28 = [v8 textRangeFromPosition:v18 toPosition:v27];
    [v8 setSelectedTextRange:v28];
LABEL_21:
  }

LABEL_5:

  return 0;
}

+ (BOOL)updateTextField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  v11 = [v8 text];
  v12 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v11];

  if (!qword_1006C4088)
  {
    v13 = +[NSMutableCharacterSet decimalDigitCharacterSet];
    [v13 addCharactersInString:@"+"];
    v14 = qword_1006C4088;
    qword_1006C4088 = v13;
  }

  v15 = [v9 stringByTrimmingCharactersInSet:?];
  v16 = [v15 length];

  if (v16 || [v9 isEqualToString:@"+"] && objc_msgSend(v12, "length"))
  {
    goto LABEL_4;
  }

  if ([v9 length])
  {
    v21 = [v10 length];
    v19 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];
    v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

    v23 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
    [v8 setText:v23];

    v24 = [v8 beginningOfDocument];
    if (v21 == location)
    {
      v25 = [v8 text];
      v18 = [v8 positionFromPosition:v24 offset:{objc_msgSend(v25, "length")}];
    }

    else
    {
      v18 = [v8 positionFromPosition:v24 offset:location + 1];
    }

    goto LABEL_17;
  }

  if (length != 1 || [v9 length])
  {
LABEL_4:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  if (location == [v10 length] - 1)
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
    [v8 setText:v28];
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
      v30 = [v10 substringWithRange:{v29, 1}];
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

  v19 = [v10 stringByReplacingCharactersInRange:v29 withString:{1, &stru_100645910}];
  v22 = [_TtC6FindMy17FMPhoneNumberUtil unformatWithPhoneNumber:v19];

  v33 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v22];
  [v8 setText:v33];

  v34 = [v8 beginningOfDocument];
  v18 = [v8 positionFromPosition:v34 offset:location];

  if (v18)
  {
    goto LABEL_18;
  }

  sub_10053D13C(a2, a1, &v37);
  v24 = v37;
LABEL_17:

LABEL_18:
  v12 = v22;
  v27 = [v8 positionFromPosition:v18 offset:0];
  v17 = v27;
  if (v18 && v27)
  {
    v28 = [v8 textRangeFromPosition:v18 toPosition:v27];
    [v8 setSelectedTextRange:v28];
LABEL_21:
  }

LABEL_5:

  return 0;
}

@end