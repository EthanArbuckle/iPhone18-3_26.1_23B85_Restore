@interface CVAMetadataWrapperTracks
+ (BOOL)locationFromTrackName:(id)name location:(int64_t *)location;
+ (id)trackNameFromPrefix:(int64_t *)prefix prefix:(id)a4 defaultValue:(id)value;
+ (id)validTracks;
@end

@implementation CVAMetadataWrapperTracks

+ (id)trackNameFromPrefix:(int64_t *)prefix prefix:(id)a4 defaultValue:(id)value
{
  v7 = a4;
  valueCopy = value;
  v9 = valueCopy;
  if (v7)
  {
    if (prefix)
    {
LABEL_3:
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", v7, *prefix];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [valueCopy copy];
    if (prefix)
    {
      goto LABEL_3;
    }
  }

  v10 = v7;
LABEL_6:
  v11 = v10;

  return v11;
}

+ (id)validTracks
{
  if (qword_27E3C8608 == -1)
  {
    v3 = qword_27E3C8600;
  }

  else
  {
    sub_24019CC04();
    v3 = qword_27E3C8600;
  }

  return v3;
}

+ (BOOL)locationFromTrackName:(id)name location:(int64_t *)location
{
  LOBYTE(v4) = 0;
  if (name && location)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = [name componentsSeparatedByString:@"."];
    v8 = [v6 arrayWithArray:v7];

    if ([v8 count] >= 2)
    {
      v9 = +[CVAMetadataWrapperTracks validTracks];
      lastObject = [v8 lastObject];
      [v8 removeLastObject];
      v11 = [v8 componentsJoinedByString:@"."];
      v4 = [v9 containsObject:v11];
      if (v4)
      {
        *location = [lastObject integerValue];
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

@end