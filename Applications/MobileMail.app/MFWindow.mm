@interface MFWindow
- (MFWindowDelegate)delegate;
- (id)undoManager;
- (void)_compositionStateChanged:(id)changed;
- (void)becomeKeyWindow;
- (void)resignKeyWindow;
- (void)sendEvent:(id)event;
@end

@implementation MFWindow

- (void)becomeKeyWindow
{
  v4.receiver = self;
  v4.super_class = MFWindow;
  [(MFWindow *)&v4 becomeKeyWindow];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_compositionStateChanged:" name:MFMailComposeViewDidShow object:0];
  [v3 addObserver:self selector:"_compositionStateChanged:" name:MFMailComposeViewDidDismiss object:0];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = MFWindow;
  [(MFWindow *)&v7 sendEvent:eventCopy];
  touchEventListener = self->_touchEventListener;
  if (touchEventListener)
  {
    allTouches = [eventCopy allTouches];
    touchEventListener[2](touchEventListener, allTouches);
  }
}

- (id)undoManager
{
  delegate = [(MFWindow *)self delegate];
  v4 = [delegate undoManagerForWindow:self];
  v5 = v4;
  if (v4)
  {
    undoManager = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFWindow;
    undoManager = [(MFWindow *)&v9 undoManager];
  }

  v7 = undoManager;

  return v7;
}

- (void)resignKeyWindow
{
  v4.receiver = self;
  v4.super_class = MFWindow;
  [(MFWindow *)&v4 resignKeyWindow];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:MFMailComposeViewDidShow object:0];
  [v3 removeObserver:self name:MFMailComposeViewDidDismiss object:0];
}

- (void)_compositionStateChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:MFMailComposeViewWindowKey];

  if (v5 == self)
  {
    name = [changedCopy name];
    self->_composeActive = [name isEqualToString:MFMailComposeViewDidShow];
  }
}

- (MFWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end