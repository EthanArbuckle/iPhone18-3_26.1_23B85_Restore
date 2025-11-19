@interface VOTBrailleTerminalNameSearchOutputManager
- (VOTBrailleTerminalNameSearchOutputManager)initWithItemSource:(id)a3 filter:(id)a4;
- (void)itemSource:(id)a3 didFilter:(id)a4 didSwitchFocus:(id)a5 focusedValue:(id)a6;
@end

@implementation VOTBrailleTerminalNameSearchOutputManager

- (VOTBrailleTerminalNameSearchOutputManager)initWithItemSource:(id)a3 filter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VOTBrailleTerminalNameSearchOutputManager;
  v8 = [(VOTBrailleTerminalNameSearchOutputManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_active = 0;
    v10 = [[VOTNameSearcher alloc] initWithDelegate:v8 itemSource:v6 filter:v7];
    nameSearcher = v9->_nameSearcher;
    v9->_nameSearcher = v10;

    v9->_noMatch = 0;
    v12 = v9;
  }

  return v9;
}

- (void)itemSource:(id)a3 didFilter:(id)a4 didSwitchFocus:(id)a5 focusedValue:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self->_active)
  {
    if (v10 && ![v10 integerValue])
    {
      self->_noMatch = 1;
      if (v11)
      {
        goto LABEL_5;
      }
    }

    else if (v11)
    {
LABEL_5:
      v13 = +[VOTBrailleManager manager];
      [v13 refreshBrailleForTerminalOutput:v11];
LABEL_9:

      goto LABEL_10;
    }

    if (!self->_noMatch)
    {
      goto LABEL_10;
    }

    v13 = sub_1000511CC(off_1001FDDD0, @"braille.terminal.nomatch", @"No match");
    v14 = +[VOTBrailleManager manager];
    [v14 refreshBrailleForTerminalOutput:v13];

    goto LABEL_9;
  }

LABEL_10:
}

@end