@interface BICImageSet
+ (id)primaryEntryFromEntries:(id)entries;
- (id)imageColor;
- (id)primaryEntry;
@end

@implementation BICImageSet

- (id)primaryEntry
{
  imageEntries = [(BICImageSet *)self imageEntries];
  v3 = [BICImageSet primaryEntryFromEntries:imageEntries];

  return v3;
}

+ (id)primaryEntryFromEntries:(id)entries
{
  entriesCopy = entries;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  quality = 0;
  level = 0;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(entriesCopy);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      if ([v11 potentialPrimary])
      {
        if ([v11 quality] > quality)
        {
          v12 = v11;

          level = [v12 level];
          quality = [v12 quality];
LABEL_9:
          v8 = v12;
          continue;
        }

        if ([v11 quality] == quality && objc_msgSend(v11, "level") > level)
        {
          v12 = v11;

          level = [v12 level];
          goto LABEL_9;
        }
      }
    }

    v5 = [entriesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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