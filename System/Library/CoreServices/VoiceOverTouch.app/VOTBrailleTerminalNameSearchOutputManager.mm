@interface VOTBrailleTerminalNameSearchOutputManager
- (VOTBrailleTerminalNameSearchOutputManager)initWithItemSource:(id)source filter:(id)filter;
- (void)itemSource:(id)source didFilter:(id)filter didSwitchFocus:(id)focus focusedValue:(id)value;
@end

@implementation VOTBrailleTerminalNameSearchOutputManager

- (VOTBrailleTerminalNameSearchOutputManager)initWithItemSource:(id)source filter:(id)filter
{
  sourceCopy = source;
  filterCopy = filter;
  v14.receiver = self;
  v14.super_class = VOTBrailleTerminalNameSearchOutputManager;
  v8 = [(VOTBrailleTerminalNameSearchOutputManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_active = 0;
    v10 = [[VOTNameSearcher alloc] initWithDelegate:v8 itemSource:sourceCopy filter:filterCopy];
    nameSearcher = v9->_nameSearcher;
    v9->_nameSearcher = v10;

    v9->_noMatch = 0;
    v12 = v9;
  }

  return v9;
}

- (void)itemSource:(id)source didFilter:(id)filter didSwitchFocus:(id)focus focusedValue:(id)value
{
  sourceCopy = source;
  filterCopy = filter;
  focusCopy = focus;
  valueCopy = value;
  if (self->_active)
  {
    if (filterCopy && ![filterCopy integerValue])
    {
      self->_noMatch = 1;
      if (focusCopy)
      {
        goto LABEL_5;
      }
    }

    else if (focusCopy)
    {
LABEL_5:
      v13 = +[VOTBrailleManager manager];
      [v13 refreshBrailleForTerminalOutput:focusCopy];
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