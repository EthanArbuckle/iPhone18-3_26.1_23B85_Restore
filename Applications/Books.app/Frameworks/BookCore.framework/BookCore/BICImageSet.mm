@interface BICImageSet
+ (id)primaryEntryFromEntries:(id)a3;
- (id)imageColor;
- (id)primaryEntry;
@end

@implementation BICImageSet

- (id)primaryEntry
{
  v2 = [(BICImageSet *)self imageEntries];
  v3 = [BICImageSet primaryEntryFromEntries:v2];

  return v3;
}

+ (id)primaryEntryFromEntries:(id)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      if ([v11 potentialPrimary])
      {
        if ([v11 quality] > v6)
        {
          v12 = v11;

          v7 = [v12 level];
          v6 = [v12 quality];
LABEL_9:
          v8 = v12;
          continue;
        }

        if ([v11 quality] == v6 && objc_msgSend(v11, "level") > v7)
        {
          v12 = v11;

          v7 = [v12 level];
          goto LABEL_9;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v5);
LABEL_17:

  return v8;
}

- (id)imageColor
{
  if ([(BICImageSet *)self imageColorARGBHex]== 0xFFFFFF)
  {
    v3 = 0;
  }

  else
  {
    v3 = [UIColor bc_colorWithARGBHexValue:[(BICImageSet *)self imageColorARGBHex]];
  }

  return v3;
}

@end