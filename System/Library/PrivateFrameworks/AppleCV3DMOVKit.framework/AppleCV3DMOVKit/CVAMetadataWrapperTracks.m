@interface CVAMetadataWrapperTracks
+ (BOOL)locationFromTrackName:(id)a3 location:(int64_t *)a4;
+ (id)trackNameFromPrefix:(int64_t *)a3 prefix:(id)a4 defaultValue:(id)a5;
+ (id)validTracks;
@end

@implementation CVAMetadataWrapperTracks

+ (id)trackNameFromPrefix:(int64_t *)a3 prefix:(id)a4 defaultValue:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if (a3)
    {
LABEL_3:
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", v7, *a3];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [v8 copy];
    if (a3)
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

+ (BOOL)locationFromTrackName:(id)a3 location:(int64_t *)a4
{
  LOBYTE(v4) = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = [a3 componentsSeparatedByString:@"."];
    v8 = [v6 arrayWithArray:v7];

    if ([v8 count] >= 2)
    {
      v9 = +[CVAMetadataWrapperTracks validTracks];
      v10 = [v8 lastObject];
      [v8 removeLastObject];
      v11 = [v8 componentsJoinedByString:@"."];
      v4 = [v9 containsObject:v11];
      if (v4)
      {
        *a4 = [v10 integerValue];
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