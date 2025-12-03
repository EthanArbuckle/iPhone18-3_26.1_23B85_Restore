@interface ICKeyboardHandler
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)firstResponderInhibitsGlobalKeyCommands;
- (BOOL)globalKeyCommandsInhibited;
- (ICKeyboardHandler)initWithDelegate:(id)delegate;
- (ICKeyboardHandlerDelegate)delegate;
- (UIResponder)mostRecentInhibitingGlobalKeyCommandResponder;
- (UIResponder)parentResponder;
- (id)nextResponder;
- (void)addFolder:(id)folder;
- (void)addNote:(id)note;
- (void)findAndReplace:(id)replace;
- (void)keyboardDidChangeFrame:(id)frame;
- (void)lockAllNotes:(id)notes;
- (void)performFindInNote:(id)note;
- (void)printNote:(id)note;
- (void)replaceInNote:(id)note;
- (void)scanDocument:(id)document;
- (void)setInHardwareKeyboardMode:(BOOL)mode;
- (void)shareAction:(id)action;
- (void)updateHardwareKeyboardAvailability;
- (void)validateCommand:(id)command;
@end

@implementation ICKeyboardHandler

- (void)updateHardwareKeyboardAvailability
{
  v3 = GSEventIsHardwareKeyboardAttached() != 0;

  [(ICKeyboardHandler *)self setInHardwareKeyboardMode:v3];
}

- (id)nextResponder
{
  parentResponder = [(ICKeyboardHandler *)self parentResponder];
  v4 = parentResponder;
  if (parentResponder)
  {
    nextResponder = parentResponder;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICKeyboardHandler;
    nextResponder = [(ICKeyboardHandler *)&v8 nextResponder];
  }

  v6 = nextResponder;

  return v6;
}

- (UIResponder)parentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_parentResponder);

  return WeakRetained;
}

- (ICKeyboardHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICKeyboardHandler;
  v5 = [(ICKeyboardHandler *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"keyboardDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];

    [(ICKeyboardHandler *)v6 updateHardwareKeyboardAvailability];
  }

  return v6;
}

- (void)addNote:(id)note
{
  noteCopy = note;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performAddNote:noteCopy];
  }
}

- (void)addFolder:(id)folder
{
  folderCopy = folder;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performAddFolder:folderCopy];
  }
}

- (void)printNote:(id)note
{
  noteCopy = note;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performPrintNote:noteCopy];
  }
}

- (void)scanDocument:(id)document
{
  documentCopy = document;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performScanDocument:documentCopy];
  }
}

- (void)performFindInNote:(id)note
{
  noteCopy = note;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performFindInNote:noteCopy];
  }
}

- (void)replaceInNote:(id)note
{
  noteCopy = note;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performReplaceInNote:noteCopy];
  }
}

- (void)shareAction:(id)action
{
  actionCopy = action;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performShareAction:actionCopy];
  }
}

- (void)lockAllNotes:(id)notes
{
  notesCopy = notes;
  delegate = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    [delegate2 performLockAllNotesAction:notesCopy];
  }
}

- (void)keyboardDidChangeFrame:(id)frame
{
  v4 = +[UIKeyboard isInHardwareKeyboardMode];

  [(ICKeyboardHandler *)self setInHardwareKeyboardMode:v4];
}

- (void)setInHardwareKeyboardMode:(BOOL)mode
{
  if (self->_inHardwareKeyboardMode != mode)
  {
    self->_inHardwareKeyboardMode = mode;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"ICHardwareKeyboardModeDidChange" object:0];
  }
}

- (BOOL)globalKeyCommandsInhibited
{
  if ((+[UIDevice ic_isiPad](UIDevice, "ic_isiPad") & 1) == 0 && !+[UIDevice ic_isVision])
  {
    return 1;
  }

  v3 = +[ICAppDelegate sharedInstance];
  if ([v3 isAnyWelcomeScreenVisible])
  {
    firstResponderInhibitsGlobalKeyCommands = 1;
  }

  else
  {
    firstResponderInhibitsGlobalKeyCommands = [(ICKeyboardHandler *)self firstResponderInhibitsGlobalKeyCommands];
  }

  return firstResponderInhibitsGlobalKeyCommands;
}

- (BOOL)firstResponderInhibitsGlobalKeyCommands
{
  delegate = [(ICKeyboardHandler *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ICKeyboardHandler *)self delegate];
    firstResponder = [delegate2 firstResponder];

    v7 = firstResponder;
    if (v7)
    {
      mostRecentInhibitingGlobalKeyCommandResponder = [(ICKeyboardHandler *)self mostRecentInhibitingGlobalKeyCommandResponder];

      if (v7 == mostRecentInhibitingGlobalKeyCommandResponder)
      {
        LOBYTE(ic_inhibitsGlobalKeyCommands) = [(ICKeyboardHandler *)self mostRecentInhibitingGlobalKeyCommandResponderResult];
      }

      else
      {
        v9 = v7;
        do
        {
          ic_inhibitsGlobalKeyCommands = [v9 ic_inhibitsGlobalKeyCommands];
          if (ic_inhibitsGlobalKeyCommands)
          {
            break;
          }

          nextResponder = [v9 nextResponder];

          v9 = nextResponder;
        }

        while (nextResponder);
        [(ICKeyboardHandler *)self setMostRecentInhibitingGlobalKeyCommandResponder:v7];
        [(ICKeyboardHandler *)self setMostRecentInhibitingGlobalKeyCommandResponderResult:ic_inhibitsGlobalKeyCommands];
      }
    }

    else
    {
      [(ICKeyboardHandler *)self setMostRecentInhibitingGlobalKeyCommandResponder:0];
      LOBYTE(ic_inhibitsGlobalKeyCommands) = 0;
    }
  }

  else
  {
    LOBYTE(ic_inhibitsGlobalKeyCommands) = 0;
  }

  return ic_inhibitsGlobalKeyCommands;
}

- (ICKeyboardHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIResponder)mostRecentInhibitingGlobalKeyCommandResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_mostRecentInhibitingGlobalKeyCommandResponder);

  return WeakRetained;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = ICKeyboardHandler.canPerformAction(_:withSender:)(action, v10);

  sub_10027CAAC(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  ICKeyboardHandler.validate(_:)(commandCopy);
}

- (void)findAndReplace:(id)replace
{
  if (replace)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  delegate = [(ICKeyboardHandler *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    if (([(ICKeyboardHandlerDelegate *)delegate respondsToSelector:"performFindAndReplace:"]& 1) != 0)
    {
      sub_10027CA3C(v9, &v8);
      sub_10015DA04(&qword_1006BE7A0);
      [(ICKeyboardHandlerDelegate *)v7 performFindAndReplace:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10027CAAC(v9);
}

@end