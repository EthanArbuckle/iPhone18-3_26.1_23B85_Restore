@interface MTDateParser
+ (id)dateFormatters;
- (id)dateFromRSSDateString:(id)string;
@end

@implementation MTDateParser

- (id)dateFromRSSDateString:(id)string
{
  stringCopy = string;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[MTDateParser dateFormatters];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      objc_sync_enter(v8);
      v9 = [v8 dateFromString:stringCopy];
      objc_sync_exit(v8);

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

+ (id)dateFormatters
{
  if (qword_100583C70 != -1)
  {
    sub_1003B2CB0();
  }

  v3 = qword_100583C68;

  return v3;
}

@end