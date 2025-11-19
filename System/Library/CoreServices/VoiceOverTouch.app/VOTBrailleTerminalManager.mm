@interface VOTBrailleTerminalManager
+ (id)sharedManager;
- (BOOL)handleDelete;
- (BOOL)handleEscape;
- (BOOL)handleForwardDelete;
- (BOOL)handleLeftArrow;
- (BOOL)handleReturn;
- (BOOL)handleRightArrow;
- (VOTBrailleTerminalManager)init;
- (id)nameSearcherEntriesPassingSearchFrom:(id)a3;
- (unint64_t)_currentContext;
- (void)_executeCommand;
- (void)_refresh;
- (void)commandInsertString:(id)a3;
- (void)handleFirstElement;
- (void)handleLastElement;
- (void)replaceCommandRange:(_NSRange)a3 withString:(id)a4 cursor:(int64_t)a5;
- (void)setState:(unint64_t)a3;
@end

@implementation VOTBrailleTerminalManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011179C;
  block[3] = &unk_1001C78B0;
  block[4] = a1;
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

- (void)setState:(unint64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    if (a3 != 2)
    {
      v7 = [(VOTBrailleTerminalManager *)self outputManager];
      [v7 deactivate];

      [(VOTBrailleTerminalManager *)self setOutputManager:0];
      state = self->_state;
    }

    if (!state)
    {
      [(VOTBrailleTerminalManager *)self setCommandLine:&stru_1001CBF90];
      [(VOTBrailleTerminalManager *)self setCursor:0];
    }

    self->_state = a3;

    [(VOTBrailleTerminalManager *)self _refresh];
  }
}

- (unint64_t)_currentContext
{
  v2 = +[VOTWorkspace sharedWorkspace];
  v3 = [v2 currentElement];

  v4 = [v3 application];
  if ([v4 isSpringBoard])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 immediateRemoteParent];
    v7 = [v6 application];
    v8 = [v7 isSpringBoard];

    v5 = v8 ^ 1;
  }

  v9 = +[AXSpringBoardServer server];
  v10 = [v9 isScreenLockedWithPasscode:0];

  if ((v5 & 1) != 0 || (v11 = 0, v10))
  {
    if ([v3 isInAppSwitcher])
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
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = [(VOTBrailleTerminalManager *)self outputManager];
      -[VOTBrailleTerminalManager setState:](self, "setState:", [v4 selectCurrentOutput]);
    }

    else if (v3 == 1)
    {
      [(VOTBrailleTerminalManager *)self _executeCommand];
    }

    return 1;
  }

  else
  {
    v7 = +[VOTBrailleManager manager];
    v8 = [v7 hasActiveBrailleDisplay];

    if (v8)
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
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3 == 2)
  {
    v4 = [(VOTBrailleTerminalManager *)self outputManager];
    [v4 moveToPreviousOutput];

    return 1;
  }

  if (v3 == 1)
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
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3 == 2)
  {
    v7 = [(VOTBrailleTerminalManager *)self outputManager];
    [v7 moveToNextOutput];

    return 1;
  }

  if (v3 == 1)
  {
    v4 = [(VOTBrailleTerminalManager *)self cursor];
    v5 = [(VOTBrailleTerminalManager *)self commandLine];
    v6 = [v5 length];

    if (v4 < v6)
    {
      [(VOTBrailleTerminalManager *)self replaceCommandRange:0 withString:0 cursor:&stru_1001CBF90, [(VOTBrailleTerminalManager *)self cursor]+ 1];
    }

    return 1;
  }

  return 0;
}

- (BOOL)handleDelete
{
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3 == 2)
  {

    return [(VOTBrailleTerminalManager *)self handleEscape];
  }

  else
  {
    if (v3 != 1)
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
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3 == 2)
  {

    return [(VOTBrailleTerminalManager *)self handleEscape];
  }

  else
  {
    if (v3 != 1)
    {
      return 0;
    }

    v4 = [(VOTBrailleTerminalManager *)self cursor];
    v5 = [(VOTBrailleTerminalManager *)self commandLine];
    v6 = [v5 length];

    if (v4 >= v6)
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
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3 == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 2)
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
  v3 = [(VOTBrailleTerminalManager *)self state];
  if (v3 == 1)
  {
    v5 = +[VOTBrailleManager manager];
    v4 = [(VOTBrailleTerminalManager *)self commandLine];
    [v5 refreshBrailleForTerminalCommand:v4 cursor:{-[VOTBrailleTerminalManager cursor](self, "cursor")}];
  }

  else
  {
    if (v3)
    {
      return;
    }

    v5 = +[VOTBrailleManager manager];
    [v5 refreshBrailleForTerminalOff];
  }
}

- (void)replaceCommandRange:(_NSRange)a3 withString:(id)a4 cursor:(int64_t)a5
{
  length = a3.length;
  location = a3.location;
  v11 = a4;
  if ([(VOTBrailleTerminalManager *)self state]== 1)
  {
    v9 = [(VOTBrailleTerminalManager *)self commandLine];
    v10 = [v9 stringByReplacingCharactersInRange:location withString:{length, v11}];
    [(VOTBrailleTerminalManager *)self setCommandLine:v10];

    [(VOTBrailleTerminalManager *)self setCursor:a5];
    [(VOTBrailleTerminalManager *)self _refresh];
  }
}

- (void)commandInsertString:(id)a3
{
  v4 = a3;
  -[VOTBrailleTerminalManager replaceCommandRange:withString:cursor:](self, "replaceCommandRange:withString:cursor:", -[VOTBrailleTerminalManager cursor](self, "cursor"), 0, v4, -[VOTBrailleTerminalManager cursor](self, "cursor") + [v4 length]);
}

- (void)_executeCommand
{
  if ([(VOTBrailleTerminalManager *)self state]== 1)
  {
    v3 = [(VOTBrailleTerminalManager *)self _currentContext];
    if (v3 >= 2)
    {
      if (v3 != 2)
      {
        return;
      }

      v9 = [VOTSharedWorkspace currentElement];
      v6 = [[VOTNameSearcherElementSource alloc] initWithElement:v9];
      v7 = [[VOTBrailleTerminalNameSearchOutputManager alloc] initWithItemSource:v6 filter:self];
      [(VOTBrailleTerminalManager *)self setOutputManager:v7];

      v8 = [(VOTBrailleTerminalManager *)self outputManager];
      [v8 activate];

      [(VOTBrailleTerminalManager *)self setState:2];
    }

    else
    {
      v9 = [[VOTNameSearcherAppSource alloc] initWithLaunchContext:v3 != 0];
      v4 = [[VOTBrailleTerminalNameSearchOutputManager alloc] initWithItemSource:v9 filter:self];
      [(VOTBrailleTerminalManager *)self setOutputManager:v4];

      v5 = [(VOTBrailleTerminalManager *)self outputManager];
      [v5 activate];

      [(VOTBrailleTerminalManager *)self setState:2];
    }
  }
}

- (void)handleFirstElement
{
  if ([(VOTBrailleTerminalManager *)self state]== 2)
  {
    v3 = [(VOTBrailleTerminalManager *)self outputManager];
    [v3 moveToFirstOutput];
  }
}

- (void)handleLastElement
{
  if ([(VOTBrailleTerminalManager *)self state]== 2)
  {
    v3 = [(VOTBrailleTerminalManager *)self outputManager];
    [v3 moveToLastOutput];
  }
}

- (id)nameSearcherEntriesPassingSearchFrom:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleTerminalManager *)self commandLine];
  v6 = [v5 length];

  if (v6)
  {
    v26 = objc_opt_new();
    v23 = v4;
    v24 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v4;
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
          v12 = [v11 name];
          v13 = [v12 lowercaseString];
          v14 = [(VOTBrailleTerminalManager *)self commandLine];
          v15 = [v14 lowercaseString];
          v16 = [v13 hasPrefix:v15];

          v17 = v26;
          if ((v16 & 1) == 0)
          {
            v18 = [v11 name];
            v19 = [(VOTBrailleTerminalManager *)self commandLine];
            v20 = [v18 localizedCaseInsensitiveContainsString:v19];

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

    v4 = v23;
  }

  else
  {
    v21 = v4;
  }

  return v21;
}

@end