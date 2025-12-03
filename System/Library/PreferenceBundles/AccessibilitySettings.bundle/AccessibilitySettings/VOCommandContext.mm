@interface VOCommandContext
+ (id)commandCategoryContextWithCategory:(id)category commandManager:(id)manager resolver:(id)resolver;
+ (id)commandContextWithCommand:(id)command commandManager:(id)manager resolver:(id)resolver;
+ (id)genericContextWithCommandManager:(id)manager command:(id)command resolver:(id)resolver;
+ (id)gestureContextWithGesture:(id)gesture commandManager:(id)manager resolver:(id)resolver;
+ (id)keyboardShortcutContextWithKeyChord:(id)chord commandManager:(id)manager resolver:(id)resolver;
+ (id)quickNavShortcutContextWithKeyChord:(id)chord commandManager:(id)manager resolver:(id)resolver;
- (id)description;
- (id)gestureDescription:(id)description;
@end

@implementation VOCommandContext

+ (id)genericContextWithCommandManager:(id)manager command:(id)command resolver:(id)resolver
{
  resolverCopy = resolver;
  commandCopy = command;
  managerCopy = manager;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:5];
  [(VOCommandContext *)v10 setCommandManager:managerCopy];

  [(VOCommandContext *)v10 setCommand:commandCopy];
  [(VOCommandContext *)v10 setResolver:resolverCopy];

  return v10;
}

+ (id)commandCategoryContextWithCategory:(id)category commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  categoryCopy = category;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:1];
  [(VOCommandContext *)v10 setCommandCategory:categoryCopy];

  [(VOCommandContext *)v10 setCommandManager:managerCopy];
  [(VOCommandContext *)v10 setResolver:resolverCopy];

  return v10;
}

+ (id)commandContextWithCommand:(id)command commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  commandCopy = command;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:1];
  [(VOCommandContext *)v10 setCommand:commandCopy];

  [(VOCommandContext *)v10 setCommandManager:managerCopy];
  [(VOCommandContext *)v10 setResolver:resolverCopy];

  return v10;
}

+ (id)gestureContextWithGesture:(id)gesture commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  gestureCopy = gesture;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:2];
  [(VOCommandContext *)v10 setGesture:gestureCopy];

  [(VOCommandContext *)v10 setCommandManager:managerCopy];
  [(VOCommandContext *)v10 setResolver:resolverCopy];

  return v10;
}

+ (id)keyboardShortcutContextWithKeyChord:(id)chord commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  chordCopy = chord;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:3];
  [(VOCommandContext *)v10 setKeyChord:chordCopy];

  [(VOCommandContext *)v10 setCommandManager:managerCopy];
  [(VOCommandContext *)v10 setResolver:resolverCopy];

  return v10;
}

+ (id)quickNavShortcutContextWithKeyChord:(id)chord commandManager:(id)manager resolver:(id)resolver
{
  resolverCopy = resolver;
  managerCopy = manager;
  chordCopy = chord;
  v10 = objc_alloc_init(VOCommandContext);
  [(VOCommandContext *)v10 setItemType:4];
  [(VOCommandContext *)v10 setKeyChord:chordCopy];

  [(VOCommandContext *)v10 setCommandManager:managerCopy];
  [(VOCommandContext *)v10 setResolver:resolverCopy];

  return v10;
}

- (id)gestureDescription:(id)description
{
  v4 = objc_opt_new();
  command = [(VOCommandContext *)self command];

  if (command)
  {
    commandManager = [(VOCommandContext *)self commandManager];
    command2 = [(VOCommandContext *)self command];
    resolver = [(VOCommandContext *)self resolver];
    v9 = [commandManager gestureBindingsForCommand:command2 withResolver:resolver];
    allObjects = [v9 allObjects];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = allObjects;
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

          localizedName = [*(*(&v19 + 1) + 8 * i) localizedName];
          if ([localizedName length])
          {
            [v4 addObject:localizedName];
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
  itemType = [(VOCommandContext *)self itemType];
  commandManager = [(VOCommandContext *)self commandManager];
  command = [(VOCommandContext *)self command];
  gesture = [(VOCommandContext *)self gesture];
  keyChord = [(VOCommandContext *)self keyChord];
  resolver = [(VOCommandContext *)self resolver];
  v9 = [NSString stringWithFormat:@"VOCommandContext<%p> type:%ld commandManager:%@ command:%@ gesture:%@ keyChord:%@ resolver:%@", self, itemType, commandManager, command, gesture, keyChord, resolver];

  return v9;
}

@end