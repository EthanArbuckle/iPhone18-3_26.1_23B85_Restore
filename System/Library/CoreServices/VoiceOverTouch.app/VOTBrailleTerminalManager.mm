@interface VOTBrailleTerminalManager
+ (id)sharedManager;
- (BOOL)handleDelete;
- (BOOL)handleEscape;
- (BOOL)handleForwardDelete;
- (BOOL)handleLeftArrow;
- (BOOL)handleReturn;
- (BOOL)handleRightArrow;
- (VOTBrailleTerminalManager)init;
- (id)nameSearcherEntriesPassingSearchFrom:(id)from;
- (unint64_t)_currentContext;
- (void)_executeCommand;
- (void)_refresh;
- (void)commandInsertString:(id)string;
- (void)handleFirstElement;
- (void)handleLastElement;
- (void)replaceCommandRange:(_NSRange)range withString:(id)string cursor:(int64_t)cursor;
- (void)setState:(unint64_t)state;
@end

@implementation VOTBrailleTerminalManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011179C;
  block[3] = &unk_1001C78B0;
  block[4] = self;
  if (qword_1001FF058 != -1)
  {
    dispatch_once(&qword_1001FF058, block);
  }

  v2 = qword_1001FF060;

  return v2;
}

- (VOTBrailleTerminalManager)init
{
  v6.receiver = self;
  v6.super_class = VOTBrailleTerminalManager;
  v2 = [(VOTBrailleTerminalManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    [(VOTBrailleTerminalManager *)v2 setCommandLine:&stru_1001CBF90];
    [(VOTBrailleTerminalManager *)v3 setCursor:0];
    [(VOTBrailleTerminalManager *)v3 setOutputManager:0];
    v4 = v3;
  }

  return v3;
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state != state)
  {
    if (state != 2)
    {
      outputManager = [(VOTBrailleTerminalManager *)self outputManager];
      [outputManager deactivate];

      [(VOTBrailleTerminalManager *)self setOutputManager:0];
      state = self->_state;
    }

    if (!state)
    {
      [(VOTBrailleTerminalManager *)self setCommandLine:&stru_1001CBF90];
      [(VOTBrailleTerminalManager *)self setCursor:0];
    }

    self->_state = state;

    [(VOTBrailleTerminalManager *)self _refresh];
  }
}

- (unint64_t)_currentContext
{
  v2 = +[VOTWorkspace sharedWorkspace];
  currentElement = [v2 currentElement];

  application = [currentElement application];
  if ([application isSpringBoard])
  {
    v5 = 0;
  }

  else
  {
    immediateRemoteParent = [currentElement immediateRemoteParent];
    application2 = [immediateRemoteParent application];
    isSpringBoard = [application2 isSpringBoard];

    v5 = isSpringBoard ^ 1;
  }

  v9 = +[AXSpringBoardServer server];
  v10 = [v9 isScreenLockedWithPasscode:0];

  if ((v5 & 1) != 0 || (v11 = 0, v10))
  {
    if ([currentElement isInAppSwitcher])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  return v11;
}

- (BOOL)handleReturn
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state)
  {
    if (state == 2)
    {
      outputManager = [(VOTBrailleTerminalManager *)self outputManager];
      -[VOTBrailleTerminalManager setState:](self, "setState:", [outputManager selectCurrentOutput]);
    }

    else if (state == 1)
    {
      [(VOTBrailleTerminalManager *)self _executeCommand];
    }

    return 1;
  }

  else
  {
    v7 = +[VOTBrailleManager manager];
    hasActiveBrailleDisplay = [v7 hasActiveBrailleDisplay];

    if (hasActiveBrailleDisplay)
    {
      v5 = 1;
      [(VOTBrailleTerminalManager *)self setState:1];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (BOOL)handleLeftArrow
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state == 2)
  {
    outputManager = [(VOTBrailleTerminalManager *)self outputManager];
    [outputManager moveToPreviousOutput];

    return 1;
  }

  if (state == 1)
  {
    if ([(VOTBrailleTerminalManager *)self cursor]>= 1)
    {
      [(VOTBrailleTerminalManager *)self replaceCommandRange:0 withString:0 cursor:&stru_1001CBF90, [(VOTBrailleTerminalManager *)self cursor]- 1];
    }

    return 1;
  }

  return 0;
}

- (BOOL)handleRightArrow
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state == 2)
  {
    outputManager = [(VOTBrailleTerminalManager *)self outputManager];
    [outputManager moveToNextOutput];

    return 1;
  }

  if (state == 1)
  {
    cursor = [(VOTBrailleTerminalManager *)self cursor];
    commandLine = [(VOTBrailleTerminalManager *)self commandLine];
    v6 = [commandLine length];

    if (cursor < v6)
    {
      [(VOTBrailleTerminalManager *)self replaceCommandRange:0 withString:0 cursor:&stru_1001CBF90, [(VOTBrailleTerminalManager *)self cursor]+ 1];
    }

    return 1;
  }

  return 0;
}

- (BOOL)handleDelete
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state == 2)
  {

    return [(VOTBrailleTerminalManager *)self handleEscape];
  }

  else
  {
    if (state != 1)
    {
      return 0;
    }

    v4 = 1;
    if ([(VOTBrailleTerminalManager *)self cursor]>= 1)
    {
      [(VOTBrailleTerminalManager *)self replaceCommandRange:[(VOTBrailleTerminalManager *)self cursor]- 1 withString:1 cursor:&stru_1001CBF90, [(VOTBrailleTerminalManager *)self cursor]- 1];
    }

    return v4;
  }
}

- (BOOL)handleForwardDelete
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state == 2)
  {

    return [(VOTBrailleTerminalManager *)self handleEscape];
  }

  else
  {
    if (state != 1)
    {
      return 0;
    }

    cursor = [(VOTBrailleTerminalManager *)self cursor];
    commandLine = [(VOTBrailleTerminalManager *)self commandLine];
    v6 = [commandLine length];

    if (cursor >= v6)
    {
      return 1;
    }

    v7 = 1;
    [(VOTBrailleTerminalManager *)self replaceCommandRange:[(VOTBrailleTerminalManager *)self cursor] withString:1 cursor:&stru_1001CBF90, [(VOTBrailleTerminalManager *)self cursor]];
    return v7;
  }
}

- (BOOL)handleEscape
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (state == 2)
  {
    v4 = 1;
LABEL_5:
    [(VOTBrailleTerminalManager *)self setState:v4];
    return 1;
  }

  return 0;
}

- (void)_refresh
{
  state = [(VOTBrailleTerminalManager *)self state];
  if (state == 1)
  {
    v5 = +[VOTBrailleManager manager];
    commandLine = [(VOTBrailleTerminalManager *)self commandLine];
    [v5 refreshBrailleForTerminalCommand:commandLine cursor:{-[VOTBrailleTerminalManager cursor](self, "cursor")}];
  }

  else
  {
    if (state)
    {
      return;
    }

    v5 = +[VOTBrailleManager manager];
    [v5 refreshBrailleForTerminalOff];
  }
}

- (void)replaceCommandRange:(_NSRange)range withString:(id)string cursor:(int64_t)cursor
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if ([(VOTBrailleTerminalManager *)self state]== 1)
  {
    commandLine = [(VOTBrailleTerminalManager *)self commandLine];
    v10 = [commandLine stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
    [(VOTBrailleTerminalManager *)self setCommandLine:v10];

    [(VOTBrailleTerminalManager *)self setCursor:cursor];
    [(VOTBrailleTerminalManager *)self _refresh];
  }
}

- (void)commandInsertString:(id)string
{
  stringCopy = string;
  -[VOTBrailleTerminalManager replaceCommandRange:withString:cursor:](self, "replaceCommandRange:withString:cursor:", -[VOTBrailleTerminalManager cursor](self, "cursor"), 0, stringCopy, -[VOTBrailleTerminalManager cursor](self, "cursor") + [stringCopy length]);
}

- (void)_executeCommand
{
  if ([(VOTBrailleTerminalManager *)self state]== 1)
  {
    _currentContext = [(VOTBrailleTerminalManager *)self _currentContext];
    if (_currentContext >= 2)
    {
      if (_currentContext != 2)
      {
        return;
      }

      currentElement = [VOTSharedWorkspace currentElement];
      v6 = [[VOTNameSearcherElementSource alloc] initWithElement:currentElement];
      v7 = [[VOTBrailleTerminalNameSearchOutputManager alloc] initWithItemSource:v6 filter:self];
      [(VOTBrailleTerminalManager *)self setOutputManager:v7];

      outputManager = [(VOTBrailleTerminalManager *)self outputManager];
      [outputManager activate];

      [(VOTBrailleTerminalManager *)self setState:2];
    }

    else
    {
      currentElement = [[VOTNameSearcherAppSource alloc] initWithLaunchContext:_currentContext != 0];
      v4 = [[VOTBrailleTerminalNameSearchOutputManager alloc] initWithItemSource:currentElement filter:self];
      [(VOTBrailleTerminalManager *)self setOutputManager:v4];

      outputManager2 = [(VOTBrailleTerminalManager *)self outputManager];
      [outputManager2 activate];

      [(VOTBrailleTerminalManager *)self setState:2];
    }
  }
}

- (void)handleFirstElement
{
  if ([(VOTBrailleTerminalManager *)self state]== 2)
  {
    outputManager = [(VOTBrailleTerminalManager *)self outputManager];
    [outputManager moveToFirstOutput];
  }
}

- (void)handleLastElement
{
  if ([(VOTBrailleTerminalManager *)self state]== 2)
  {
    outputManager = [(VOTBrailleTerminalManager *)self outputManager];
    [outputManager moveToLastOutput];
  }
}

- (id)nameSearcherEntriesPassingSearchFrom:(id)from
{
  fromCopy = from;
  commandLine = [(VOTBrailleTerminalManager *)self commandLine];
  v6 = [commandLine length];

  if (v6)
  {
    v26 = objc_opt_new();
    v23 = fromCopy;
    v24 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = fromCopy;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          name = [v11 name];
          lowercaseString = [name lowercaseString];
          commandLine2 = [(VOTBrailleTerminalManager *)self commandLine];
          lowercaseString2 = [commandLine2 lowercaseString];
          v16 = [lowercaseString hasPrefix:lowercaseString2];

          v17 = v26;
          if ((v16 & 1) == 0)
          {
            name2 = [v11 name];
            commandLine3 = [(VOTBrailleTerminalManager *)self commandLine];
            v20 = [name2 localizedCaseInsensitiveContainsString:commandLine3];

            v17 = v24;
            if (!v20)
            {
              continue;
            }
          }

          [v17 addObject:v11];
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    v21 = [v26 arrayByAddingObjectsFromArray:v24];

    fromCopy = v23;
  }

  else
  {
    v21 = fromCopy;
  }

  return v21;
}

@end