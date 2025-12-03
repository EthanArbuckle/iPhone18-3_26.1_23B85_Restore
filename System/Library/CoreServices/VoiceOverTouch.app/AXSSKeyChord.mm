@interface AXSSKeyChord
+ (id)quickNavKeyChordWithInfo:(id)info arrowMask:(int64_t)mask;
@end

@implementation AXSSKeyChord

+ (id)quickNavKeyChordWithInfo:(id)info arrowMask:(int64_t)mask
{
  maskCopy = mask;
  infoCopy = info;
  v6 = +[NSMutableArray array];
  if ([infoCopy isControlKeyPressed])
  {
    [v6 addObject:@"⌃"];
  }

  if ([infoCopy isOptionKeyPressed])
  {
    [v6 addObject:@"⌥"];
  }

  if ([infoCopy isCommandKeyPressed])
  {
    [v6 addObject:@"⌘"];
    if ((maskCopy & 1) == 0)
    {
LABEL_7:
      if ((maskCopy & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((maskCopy & 1) == 0)
  {
    goto LABEL_7;
  }

  [v6 addObject:@"←"];
  if ((maskCopy & 2) == 0)
  {
LABEL_8:
    if ((maskCopy & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v6 addObject:@"→"];
  if ((maskCopy & 4) == 0)
  {
LABEL_9:
    if ((maskCopy & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  [v6 addObject:@"↑"];
  if ((maskCopy & 8) != 0)
  {
LABEL_10:
    [v6 addObject:@"↓"];
  }

LABEL_11:
  v7 = [AXSSKeyChord keyChordWithKeys:v6];

  return v7;
}

@end