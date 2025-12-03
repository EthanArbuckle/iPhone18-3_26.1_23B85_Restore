@interface NSMutableString
- (void)_speakThisAppendString:(id)string withPause:(BOOL)pause;
@end

@implementation NSMutableString

- (void)_speakThisAppendString:(id)string withPause:(BOOL)pause
{
  stringCopy = string;
  if (![stringCopy length])
  {
    goto LABEL_12;
  }

  if (pause)
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
  if ([stringCopy isAXAttributedString] && objc_msgSend(stringCopy, "hasAttribute:", UIAccessibilityTokenConvertTextToLowercase))
  {
    lowercaseString = [stringCopy lowercaseString];

    v8 = lowercaseString;
  }

  else
  {
    v8 = stringCopy;
  }

  stringCopy = v8;
  [(NSMutableString *)self appendString:v8];
LABEL_12:
}

@end