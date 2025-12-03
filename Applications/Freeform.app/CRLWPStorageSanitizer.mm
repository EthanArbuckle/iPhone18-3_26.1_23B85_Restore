@interface CRLWPStorageSanitizer
+ (id)filterMarkAttributes:(id)attributes;
+ (id)filterText:(id)text removingAttachments:(BOOL)attachments removingControlCharacters:(BOOL)characters;
@end

@implementation CRLWPStorageSanitizer

+ (id)filterText:(id)text removingAttachments:(BOOL)attachments removingControlCharacters:(BOOL)characters
{
  charactersCopy = characters;
  attachmentsCopy = attachments;
  textCopy = text;
  if (qword_101A34A68 != -1)
  {
    sub_1013471AC();
  }

  v53 = qword_101A34A48;
  if (!attachmentsCopy || !charactersCopy)
  {
    if (attachmentsCopy || charactersCopy)
    {
      if (!attachmentsCopy || charactersCopy)
      {
        goto LABEL_12;
      }

      v8 = &qword_101A34A60;
    }

    else
    {
      v8 = &qword_101A34A58;
    }
  }

  else
  {
    v8 = &qword_101A34A50;
  }

  v9 = *v8;

  v53 = v9;
LABEL_12:
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, textCopy);
  v12 = v11;
  if (v11)
  {
    [v11 string];
  }

  else
  {
    v13 = objc_opt_class();
    sub_100014370(v13, textCopy);
  }
  v14 = ;
  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013471C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013471D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347284();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v15);
    }

    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPStorageSanitizer filterText:removingAttachments:removingControlCharacters:]");
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageSanitizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:103 isFatal:0 description:"invalid nil value for '%{public}s'", "theStr"];
  }

  v18 = textCopy;
  v52 = v18;
  v19 = 0;
  while ([v14 length])
  {
    if ([v14 characterAtIndex:0] != 65279)
    {
      break;
    }

    if ((v19 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v52 mutableCopy];

        mutableString = [v20 mutableString];

        v18 = v20;
        v14 = mutableString;
      }

      else
      {
        v22 = [NSMutableString stringWithString:v14];

        v20 = v22;
        v14 = v20;
      }

      v18 = v20;
    }

    v19 = 1;
    [v18 replaceCharactersInRange:0 withString:{1, &stru_1018BCA28}];
  }

  v51 = v12;
  if ([v14 length])
  {
    v23 = 0;
    do
    {
      v24 = [v14 length];
      v25 = &v24[-v23];
      v26 = [v14 rangeOfCharacterFromSet:v53 options:0 range:{v23, &v24[-v23]}];
      v28 = v27;
      v29 = sub_1002ADC44(v26, v14, v23, v25, 0xD800uLL, 0x400uLL);
      v31 = v30;
      v32 = sub_1002ADC44(v29, v14, v23, v25, 0xDC00uLL, 0x400uLL);
      if (v29 >= v26 || v29 >= v32)
      {
        v35 = v32 < v26;
        v36 = v32 < v29;
        if (v35 && v36)
        {
          v31 = v33;
        }

        else
        {
          v31 = v28;
        }

        if (v35 && v36)
        {
          v29 = v32;
        }

        else
        {
          v29 = v26;
        }
      }

      else if (v29 + 1 < [v14 length] && (objc_msgSend(v14, "characterAtIndex:", v29 + 1) & 0xFC00) == 0xDC00)
      {
        v37 = [v14 length];
        if (v29 + 2 <= v37)
        {
          v38 = v37;
        }

        else
        {
          v38 = (v29 + 2);
        }

        if (v29 + 2 >= v37)
        {
          v29 = v37;
        }

        else
        {
          v29 += 2;
        }

        v39 = &v38[-v29];
        goto LABEL_65;
      }

      if (v29 == 0x7FFFFFFFFFFFFFFFLL || v31 == 0)
      {
        break;
      }

      v41 = [v14 length];
      if ((v19 & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = [v52 mutableCopy];

          mutableString2 = [v42 mutableString];

          v18 = v42;
          v14 = mutableString2;
        }

        else
        {
          v44 = [NSMutableString stringWithString:v14];

          v42 = v44;
          v14 = v42;
        }

        v18 = v42;
      }

      v39 = &v41[-v29 - v31];
      [v18 replaceCharactersInRange:v29 withString:{v31, &stru_1018BCA28}];
      v19 = 1;
LABEL_65:
      v23 = v29;
    }

    while (v39);
  }

  if (v51)
  {
    string = [v18 string];
    v46 = [v14 isEqualToString:string];

    if ((v46 & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013472AC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013472D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101347374();
      }

      v47 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v47);
      }

      v48 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPStorageSanitizer filterText:removingAttachments:removingControlCharacters:]");
      v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorageSanitizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:208 isFatal:0 description:"Internal inconsistency in attributed string"];
    }
  }

  return v18;
}

+ (id)filterMarkAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, attributesCopy);
  v6 = [v5 mutableCopy];

  v7 = attributesCopy;
  if ([v6 length])
  {
    v8 = [v6 attributesAtIndex:0 effectiveRange:0];
    v9 = [v8 objectForKeyedSubscript:NSUnderlineStyleAttributeName];
    if ([v9 integerValue])
    {
      [v6 removeAttribute:NSUnderlineStyleAttributeName range:{0, objc_msgSend(v6, "length")}];
      [v6 removeAttribute:NSUnderlineColorAttributeName range:{0, objc_msgSend(v6, "length")}];
    }

    v10 = [v8 objectForKeyedSubscript:NSBackgroundColorAttributeName];

    if (v10)
    {
      [v6 removeAttribute:NSBackgroundColorAttributeName range:{0, objc_msgSend(v6, "length")}];
    }

    v7 = v6;
  }

  return v7;
}

@end