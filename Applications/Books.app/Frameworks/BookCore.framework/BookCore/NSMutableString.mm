@interface NSMutableString
- (void)AEReplaceTemplatePlaceholder:(id)placeholder withString:(id)string;
- (void)bkMakeSubstitutionsWithDictionary:(id)dictionary;
- (void)bkReplaceTemplatePlaceholder:(id)placeholder withString:(id)string;
@end

@implementation NSMutableString

- (void)AEReplaceTemplatePlaceholder:(id)placeholder withString:(id)string
{
  stringCopy = string;
  placeholderCopy = placeholder;
  v7 = [(__CFString *)stringCopy length];
  v8 = [(NSMutableString *)self length];
  if (v7)
  {
    selfCopy2 = self;
    v10 = placeholderCopy;
    v11 = stringCopy;
  }

  else
  {
    v11 = &stru_2D2930;
    selfCopy2 = self;
    v10 = placeholderCopy;
  }

  [(NSMutableString *)selfCopy2 replaceOccurrencesOfString:v10 withString:v11 options:0 range:0, v8];
}

- (void)bkReplaceTemplatePlaceholder:(id)placeholder withString:(id)string
{
  stringCopy = string;
  placeholderCopy = placeholder;
  v7 = [(__CFString *)stringCopy length];
  v8 = [(NSMutableString *)self length];
  if (v7)
  {
    selfCopy2 = self;
    v10 = placeholderCopy;
    v11 = stringCopy;
  }

  else
  {
    v11 = &stru_2D2930;
    selfCopy2 = self;
    v10 = placeholderCopy;
  }

  [(NSMutableString *)selfCopy2 replaceOccurrencesOfString:v10 withString:v11 options:0 range:0, v8];
}

- (void)bkMakeSubstitutionsWithDictionary:(id)dictionary
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D95EC;
  v3[3] = &unk_2CCDD0;
  v3[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v3];
}

@end