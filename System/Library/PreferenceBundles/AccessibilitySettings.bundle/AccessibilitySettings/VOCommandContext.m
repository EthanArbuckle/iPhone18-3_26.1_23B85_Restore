@interface VOCommandContext
+ (id)commandCategoryContextWithCategory:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)commandContextWithCommand:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)genericContextWithCommandManager:(id)a3 command:(id)a4 resolver:(id)a5;
+ (id)gestureContextWithGesture:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)keyboardShortcutContextWithKeyChord:(id)a3 commandManager:(id)a4 resolver:(id)a5;
+ (id)quickNavShortcutContextWithKeyChord:(id)a3 commandManager:(id)a4 resolver:(id)a5;
- (id)description;
- (id)gestureDescription:(id)a3;
@end

@implementation VOCommandContext

+ (id)genericContextWithCommandManager:(id)a3 command:(id)a4 resolver:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:5];
  [(VOCommandContext *)v10 setCommandManager:v9];

  [(VOCommandContext *)v10 setCommand:v8];
  [(VOCommandContext *)v10 setResolver:v7];

  return v10;
}

+ (id)commandCategoryContextWithCategory:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:1];
  [(VOCommandContext *)v10 setCommandCategory:v9];

  [(VOCommandContext *)v10 setCommandManager:v8];
  [(VOCommandContext *)v10 setResolver:v7];

  return v10;
}

+ (id)commandContextWithCommand:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:1];
  [(VOCommandContext *)v10 setCommand:v9];

  [(VOCommandContext *)v10 setCommandManager:v8];
  [(VOCommandContext *)v10 setResolver:v7];

  return v10;
}

+ (id)gestureContextWithGesture:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:2];
  [(VOCommandContext *)v10 setGesture:v9];

  [(VOCommandContext *)v10 setCommandManager:v8];
  [(VOCommandContext *)v10 setResolver:v7];

  return v10;
}

+ (id)keyboardShortcutContextWithKeyChord:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:3];
  [(VOCommandContext *)v10 setKeyChord:v9];

  [(VOCommandContext *)v10 setCommandManager:v8];
  [(VOCommandContext *)v10 setResolver:v7];

  return v10;
}

+ (id)quickNavShortcutContextWithKeyChord:(id)a3 commandManager:(id)a4 resolver:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:4];
  [(VOCommandContext *)v10 setKeyChord:v9];

  [(VOCommandContext *)v10 setCommandManager:v8];
  [(VOCommandContext *)v10 setResolver:v7];

  return v10;
}

- (id)gestureDescription:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(VOCommandContext *)self command];

  if (v5)
  {
    v6 = [(VOCommandContext *)self commandManager];
    v7 = [(VOCommandContext *)self command];
    v8 = [(VOCommandContext *)self resolver];
    v9 = [v6 gestureBindingsForCommand:v7 withResolver:v8];
    v10 = [v9 allObjects];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) localizedName];
          if ([v16 length])
          {
            [v4 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v17 = [NSListFormatter localizedStringByJoiningStrings:v4, v19];

  return v17;
}

- (id)description
{
  v3 = [(VOCommandContext *)self itemType];
  v4 = [(VOCommandContext *)self commandManager];
  v5 = [(VOCommandContext *)self command];
  v6 = [(VOCommandContext *)self gesture];
  v7 = [(VOCommandContext *)self keyChord];
  v8 = [(VOCommandContext *)self resolver];
  v9 = [NSString stringWithFormat:@"VOCommandContext<%p> type:%ld commandManager:%@ command:%@ gesture:%@ keyChord:%@ resolver:%@", self, v3, v4, v5, v6, v7, v8];

  return v9;
}

@end