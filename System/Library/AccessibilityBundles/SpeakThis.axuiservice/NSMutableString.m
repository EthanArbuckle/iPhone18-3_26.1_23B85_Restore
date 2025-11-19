@interface NSMutableString
- (void)_speakThisAppendString:(id)a3 withPause:(BOOL)a4;
@end

@implementation NSMutableString

- (void)_speakThisAppendString:(id)a3 withPause:(BOOL)a4
{
  v9 = a3;
  if (![v9 length])
  {
    goto LABEL_12;
  }

  if (a4)
  {
    v6 = @",\n ";
  }

  else
  {
    if (![(NSMutableString *)self length])
    {
      goto LABEL_7;
    }

    v6 = @" ";
  }

  [(NSMutableString *)self appendString:v6];
LABEL_7:
  if ([v9 isAXAttributedString] && objc_msgSend(v9, "hasAttribute:", UIAccessibilityTokenConvertTextToLowercase))
  {
    v7 = [v9 lowercaseString];

    v8 = v7;
  }

  else
  {
    v8 = v9;
  }

  v9 = v8;
  [(NSMutableString *)self appendString:v8];
LABEL_12:
}

@end