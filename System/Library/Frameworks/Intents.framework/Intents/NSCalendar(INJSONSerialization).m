@interface NSCalendar(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (__CFString)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSCalendar(INJSONSerialization)

- (__CFString)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v1 = [a1 calendarIdentifier];
  if ([v1 isEqualToString:*MEMORY[0x1E695D850]])
  {
    v2 = @"GREGORIAN";
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695D820]])
  {
    v2 = @"BUDDHIST";
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695D828]])
  {
    v2 = @"CHINESE";
  }

  else
  {
    if (([v1 isEqualToString:*MEMORY[0x1E695D830]] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E695D848]) & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E695D840]) & 1) == 0)
    {
      if ([v1 isEqualToString:*MEMORY[0x1E695D860]])
      {
        v2 = @"HEBREW";
        goto LABEL_11;
      }

      if (([v1 isEqualToString:*MEMORY[0x1E695D868]] & 1) == 0)
      {
        if ([v1 isEqualToString:*MEMORY[0x1E695D870]])
        {
          v2 = @"HINDU";
          goto LABEL_11;
        }

        if ([v1 isEqualToString:*MEMORY[0x1E695D878]])
        {
          v2 = @"ISLAMIC";
          goto LABEL_11;
        }

        if (([v1 isEqualToString:*MEMORY[0x1E695D880]] & 1) == 0)
        {
          if ([v1 isEqualToString:*MEMORY[0x1E695D898]])
          {
            v2 = @"JAPANESE";
            goto LABEL_11;
          }

          if ([v1 isEqualToString:*MEMORY[0x1E695D8C0]])
          {
            v2 = @"PERSIAN";
            goto LABEL_11;
          }

          if ([v1 isEqualToString:*MEMORY[0x1E695D8C8]])
          {
            v2 = @"REPUBLIC_OF_CHINA";
            goto LABEL_11;
          }

          if (([v1 isEqualToString:*MEMORY[0x1E695D888]] & 1) == 0 && objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E695D890]))
          {
            v2 = @"ISLAMIC_UMALQURA";
            goto LABEL_11;
          }
        }
      }
    }

    v2 = 0;
  }

LABEL_11:

  return v2;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v10 isEqualToString:@"BUDDHIST"];
  v12 = MEMORY[0x1E695D820];
  if ((v11 & 1) == 0)
  {
    if ([v10 isEqualToString:@"CHINESE"])
    {
      v12 = MEMORY[0x1E695D828];
      goto LABEL_8;
    }

    if ([v10 isEqualToString:@"HEBREW"])
    {
      v12 = MEMORY[0x1E695D860];
      goto LABEL_8;
    }

    if ([v10 isEqualToString:@"HIJRI"])
    {
LABEL_16:
      v14 = 0;
      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"HINDU"])
    {
      v12 = MEMORY[0x1E695D870];
    }

    else if ([v10 isEqualToString:@"ISLAMIC_UMALQURA"])
    {
      v12 = MEMORY[0x1E695D890];
    }

    else if ([v10 isEqualToString:@"ISLAMIC"])
    {
      v12 = MEMORY[0x1E695D878];
    }

    else if ([v10 isEqualToString:@"GREGORIAN"])
    {
      v12 = MEMORY[0x1E695D850];
    }

    else if ([v10 isEqualToString:@"JAPANESE"])
    {
      v12 = MEMORY[0x1E695D898];
    }

    else
    {
      if ([v10 isEqualToString:@"JULIAN"])
      {
        goto LABEL_16;
      }

      if ([v10 isEqualToString:@"PERSIAN"])
      {
        v12 = MEMORY[0x1E695D8C0];
      }

      else if ([v10 isEqualToString:@"REPUBLIC_OF_CHINA"])
      {
        v12 = MEMORY[0x1E695D8C8];
      }
    }
  }

LABEL_8:

  v13 = *v12;
  if (v13)
  {
    v10 = v13;
    v14 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v13];
LABEL_10:

    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
LABEL_12:

  return v14;
}

@end