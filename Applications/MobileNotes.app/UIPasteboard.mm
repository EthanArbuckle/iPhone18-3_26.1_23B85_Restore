@interface UIPasteboard
- (id)ic_dataForPasteboardTypes:(id)a3;
@end

@implementation UIPasteboard

- (id)ic_dataForPasteboardTypes:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isEqualToString:{@"com.apple.uikit.image", v14}] & 1) == 0)
        {
          v12 = [(UIPasteboard *)self dataForPasteboardType:v11 inItemSet:0];
          [v5 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

@end