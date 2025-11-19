@interface ICKeyboardHandler
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)firstResponderInhibitsGlobalKeyCommands;
- (BOOL)globalKeyCommandsInhibited;
- (ICKeyboardHandler)initWithDelegate:(id)a3;
- (ICKeyboardHandlerDelegate)delegate;
- (UIResponder)mostRecentInhibitingGlobalKeyCommandResponder;
- (UIResponder)parentResponder;
- (id)nextResponder;
- (void)addFolder:(id)a3;
- (void)addNote:(id)a3;
- (void)findAndReplace:(id)a3;
- (void)keyboardDidChangeFrame:(id)a3;
- (void)lockAllNotes:(id)a3;
- (void)performFindInNote:(id)a3;
- (void)printNote:(id)a3;
- (void)replaceInNote:(id)a3;
- (void)scanDocument:(id)a3;
- (void)setInHardwareKeyboardMode:(BOOL)a3;
- (void)shareAction:(id)a3;
- (void)updateHardwareKeyboardAvailability;
- (void)validateCommand:(id)a3;
@end

@implementation ICKeyboardHandler

- (void)updateHardwareKeyboardAvailability
{
  v3 = GSEventIsHardwareKeyboardAttached() != 0;

  [(ICKeyboardHandler *)self setInHardwareKeyboardMode:v3];
}

- (id)nextResponder
{
  v3 = [(ICKeyboardHandler *)self parentResponder];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICKeyboardHandler;
    v5 = [(ICKeyboardHandler *)&v8 nextResponder];
  }

  v6 = v5;

  return v6;
}

- (UIResponder)parentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_parentResponder);

  return WeakRetained;
}

- (ICKeyboardHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICKeyboardHandler;
  v5 = [(ICKeyboardHandler *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"keyboardDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];

    [(ICKeyboardHandler *)v6 updateHardwareKeyboardAvailability];
  }

  return v6;
}

- (void)addNote:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performAddNote:v7];
  }
}

- (void)addFolder:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performAddFolder:v7];
  }
}

- (void)printNote:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performPrintNote:v7];
  }
}

- (void)scanDocument:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performScanDocument:v7];
  }
}

- (void)performFindInNote:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performFindInNote:v7];
  }
}

- (void)replaceInNote:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performReplaceInNote:v7];
  }
}

- (void)shareAction:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performShareAction:v7];
  }
}

- (void)lockAllNotes:(id)a3
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performLockAllNotesAction:v7];
  }
}

- (void)keyboardDidChangeFrame:(id)a3
{
  v4 = +[UIKeyboard isInHardwareKeyboardMode];

  [(ICKeyboardHandler *)self setInHardwareKeyboardMode:v4];
}

- (void)setInHardwareKeyboardMode:(BOOL)a3
{
  if (self->_inHardwareKeyboardMode != a3)
  {
    self->_inHardwareKeyboardMode = a3;
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
    v4 = 1;
  }

  else
  {
    v4 = [(ICKeyboardHandler *)self firstResponderInhibitsGlobalKeyCommands];
  }

  return v4;
}

- (BOOL)firstResponderInhibitsGlobalKeyCommands
{
  v3 = [(ICKeyboardHandler *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICKeyboardHandler *)self delegate];
    v6 = [v5 firstResponder];

    v7 = v6;
    if (v7)
    {
      v8 = [(ICKeyboardHandler *)self mostRecentInhibitingGlobalKeyCommandResponder];

      if (v7 == v8)
      {
        LOBYTE(v10) = [(ICKeyboardHandler *)self mostRecentInhibitingGlobalKeyCommandResponderResult];
      }

      else
      {
        v9 = v7;
        do
        {
          v10 = [v9 ic_inhibitsGlobalKeyCommands];
          if (v10)
          {
            break;
          }

          v11 = [v9 nextResponder];

          v9 = v11;
        }

        while (v11);
        [(ICKeyboardHandler *)self setMostRecentInhibitingGlobalKeyCommandResponder:v7];
        [(ICKeyboardHandler *)self setMostRecentInhibitingGlobalKeyCommandResponderResult:v10];
      }
    }

    else
    {
      [(ICKeyboardHandler *)self setMostRecentInhibitingGlobalKeyCommandResponder:0];
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = ICKeyboardHandler.canPerformAction(_:withSender:)(a3, v10);

  sub_10027CAAC(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  ICKeyboardHandler.validate(_:)(v4);
}

- (void)findAndReplace:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self;
  }

  v6 = [(ICKeyboardHandler *)self delegate];
  if (v6)
  {
    v7 = v6;
    if (([(ICKeyboardHandlerDelegate *)v6 respondsToSelector:"performFindAndReplace:"]& 1) != 0)
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