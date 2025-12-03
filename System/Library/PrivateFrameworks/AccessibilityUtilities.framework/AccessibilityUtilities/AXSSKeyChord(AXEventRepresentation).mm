@interface AXSSKeyChord(AXEventRepresentation)
+ (id)keyChordWithEvent:()AXEventRepresentation;
- (id)keyChordByUpdatingModifiersFromEvent:()AXEventRepresentation;
@end

@implementation AXSSKeyChord(AXEventRepresentation)

+ (id)keyChordWithEvent:()AXEventRepresentation
{
  v3 = a3;
  if ([v3 type] == 10)
  {
    keyInfo = [v3 keyInfo];
    v5 = keyInfo;
    if (keyInfo)
    {
      v6 = [keyInfo keyCode] - 40;
      if (v6 > 0x30)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(&off_1E71EBA30 + v6);
      }

      if ([v7 length] || (objc_msgSend(v5, "unmodifiedInput"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "length") == 1))
      {
        v9 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
        if ([v5 modifierState])
        {
          [v9 addObject:@"⌘"];
        }

        if (([v5 modifierState] & 2) != 0)
        {
          [v9 addObject:@"⌥"];
        }

        if (([v5 modifierState] & 4) != 0)
        {
          [v9 addObject:@"⌃"];
        }

        if (([v5 modifierState] & 8) != 0)
        {
          [v9 addObject:@"⇧"];
        }

        if (([v5 modifierState] & 0x10) != 0)
        {
          [v9 addObject:@"⇪"];
        }

        if (([v5 modifierState] & 0x40) != 0)
        {
          [v9 addObject:@"Fn"];
        }

        v8 = [MEMORY[0x1E6989400] keyChordWithKeys:v9];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)keyChordByUpdatingModifiersFromEvent:()AXEventRepresentation
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  keys = [self keys];
  v7 = [v5 setWithArray:keys];

  if ([v4 type] == 10 || objc_msgSend(v4, "type") == 11 || objc_msgSend(v4, "type") == 12)
  {
    keyInfo = [v4 keyInfo];
    v9 = keyInfo;
    if (keyInfo)
    {
      if ([keyInfo modifierState])
      {
        [v7 addObject:@"⌘"];
      }

      else
      {
        [v7 removeObject:@"⌘"];
      }

      if (([v9 modifierState] & 2) != 0)
      {
        [v7 addObject:@"⌥"];
      }

      else
      {
        [v7 removeObject:@"⌥"];
      }

      if (([v9 modifierState] & 4) != 0)
      {
        [v7 addObject:@"⌃"];
      }

      else
      {
        [v7 removeObject:@"⌃"];
      }

      if (([v9 modifierState] & 8) != 0)
      {
        [v7 addObject:@"⇧"];
      }

      else
      {
        [v7 removeObject:@"⇧"];
      }

      if (([v9 modifierState] & 0x10) != 0)
      {
        [v7 addObject:@"⇪"];
      }

      else
      {
        [v7 removeObject:@"⇪"];
      }

      if (([v9 modifierState] & 0x40) != 0)
      {
        [v7 addObject:@"Fn"];
      }

      else
      {
        [v7 removeObject:@"Fn"];
      }
    }
  }

  v10 = MEMORY[0x1E6989400];
  allObjects = [v7 allObjects];
  v12 = [v10 keyChordWithKeys:allObjects];

  return v12;
}

@end