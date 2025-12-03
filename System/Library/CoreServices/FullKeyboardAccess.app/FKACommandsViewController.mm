@interface FKACommandsViewController
- (void)loadView;
@end

@implementation FKACommandsViewController

- (void)loadView
{
  v3 = +[NSMutableArray array];
  textEditingModeExitKeyChord = [(FKACommandsViewController *)self textEditingModeExitKeyChord];

  selfCopy = self;
  if (textEditingModeExitKeyChord)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"TEXT_EDITING_MODE_INSTRUCTIONS_TITLE" value:&stru_100028C78 table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"TEXT_EDITING_MODE_INSTRUCTIONS_HELP" value:&stru_100028C78 table:0];
    textEditingModeExitKeyChord2 = [(FKACommandsViewController *)self textEditingModeExitKeyChord];
    fkaSpeakableDisplayValue = [textEditingModeExitKeyChord2 fkaSpeakableDisplayValue];
    v11 = [FKACommandListItem itemWithName:v8 keyDescription:fkaSpeakableDisplayValue];
    v52 = v11;
    v12 = [NSArray arrayWithObjects:&v52 count:1];
    v13 = [FKACommandList listWithTitle:v6 items:v12 footerText:0];

    self = selfCopy;
    [v3 addObject:v13];
  }

  v14 = +[FKAAvailableCommands sharedInstance];
  categories = [v14 categories];

  v16 = +[FKAAvailableCommands sharedInstance];
  commandMap = [v16 commandMap];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = categories;
  v39 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v39)
  {
    v36 = *v47;
    v37 = v3;
    do
    {
      v18 = 0;
      do
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v18;
        v19 = *(*(&v46 + 1) + 8 * v18);
        v20 = +[NSMutableArray array];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v40 = v19;
        commands = [v19 commands];
        v22 = [commands countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v43;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v43 != v24)
              {
                objc_enumerationMutation(commands);
              }

              v26 = *(*(&v42 + 1) + 8 * i);
              v27 = [commandMap keyChordForCommand:v26];
              v28 = v27;
              if (v27)
              {
                fkaSpeakableDisplayValue2 = [v27 fkaSpeakableDisplayValue];
                localizedName = [v26 localizedName];
                v31 = [FKACommandListItem itemWithName:localizedName keyDescription:fkaSpeakableDisplayValue2];

                [v20 addObject:v31];
              }
            }

            v23 = [commands countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v23);
        }

        v3 = v37;
        self = selfCopy;
        if ([v20 count])
        {
          localizedName2 = [v40 localizedName];
          v33 = [FKACommandList listWithTitle:localizedName2 items:v20 footerText:0];

          [v37 addObject:v33];
        }

        v18 = v41 + 1;
      }

      while ((v41 + 1) != v39);
      v39 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v39);
  }

  v34 = [(FKACommandsView *)[FKAScrollableCommandsView alloc] initWithCommandLists:v3];
  [(FKACommandsViewController *)self setView:v34];
}

@end