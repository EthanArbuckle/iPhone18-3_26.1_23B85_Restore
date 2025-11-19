@interface AXSSKeyChord
+ (id)quickNavKeyChordWithInfo:(id)a3 arrowMask:(int64_t)a4;
@end

@implementation AXSSKeyChord

+ (id)quickNavKeyChordWithInfo:(id)a3 arrowMask:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NSMutableArray array];
  if ([v5 isControlKeyPressed])
  {
    [v6 addObject:@"⌃"];
  }

  if ([v5 isOptionKeyPressed])
  {
    [v6 addObject:@"⌥"];
  }

  if ([v5 isCommandKeyPressed])
  {
    [v6 addObject:@"⌘"];
    if ((v4 & 1) == 0)
    {
LABEL_7:
      if ((v4 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  [v6 addObject:@"←"];
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v6 addObject:@"→"];
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  [v6 addObject:@"↑"];
  if ((v4 & 8) != 0)
  {
LABEL_10:
    [v6 addObject:@"↓"];
  }

LABEL_11:
  v7 = [AXSSKeyChord keyChordWithKeys:v6];

  return v7;
}

@end