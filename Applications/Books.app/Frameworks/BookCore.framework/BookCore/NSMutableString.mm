@interface NSMutableString
- (void)AEReplaceTemplatePlaceholder:(id)a3 withString:(id)a4;
- (void)bkMakeSubstitutionsWithDictionary:(id)a3;
- (void)bkReplaceTemplatePlaceholder:(id)a3 withString:(id)a4;
@end

@implementation NSMutableString

- (void)AEReplaceTemplatePlaceholder:(id)a3 withString:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(__CFString *)v12 length];
  v8 = [(NSMutableString *)self length];
  if (v7)
  {
    v9 = self;
    v10 = v6;
    v11 = v12;
  }

  else
  {
    v11 = &stru_2D2930;
    v9 = self;
    v10 = v6;
  }

  [(NSMutableString *)v9 replaceOccurrencesOfString:v10 withString:v11 options:0 range:0, v8];
}

- (void)bkReplaceTemplatePlaceholder:(id)a3 withString:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(__CFString *)v12 length];
  v8 = [(NSMutableString *)self length];
  if (v7)
  {
    v9 = self;
    v10 = v6;
    v11 = v12;
  }

  else
  {
    v11 = &stru_2D2930;
    v9 = self;
    v10 = v6;
  }

  [(NSMutableString *)v9 replaceOccurrencesOfString:v10 withString:v11 options:0 range:0, v8];
}

- (void)bkMakeSubstitutionsWithDictionary:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D95EC;
  v3[3] = &unk_2CCDD0;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

@end