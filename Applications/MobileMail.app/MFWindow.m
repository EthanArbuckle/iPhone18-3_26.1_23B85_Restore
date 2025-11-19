@interface MFWindow
- (MFWindowDelegate)delegate;
- (id)undoManager;
- (void)_compositionStateChanged:(id)a3;
- (void)becomeKeyWindow;
- (void)resignKeyWindow;
- (void)sendEvent:(id)a3;
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

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFWindow;
  [(MFWindow *)&v7 sendEvent:v4];
  touchEventListener = self->_touchEventListener;
  if (touchEventListener)
  {
    v6 = [v4 allTouches];
    touchEventListener[2](touchEventListener, v6);
  }
}

- (id)undoManager
{
  v3 = [(MFWindow *)self delegate];
  v4 = [v3 undoManagerForWindow:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFWindow;
    v6 = [(MFWindow *)&v9 undoManager];
  }

  v7 = v6;

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

- (void)_compositionStateChanged:(id)a3
{
  v7 = a3;
  v4 = [v7 userInfo];
  v5 = [v4 objectForKeyedSubscript:MFMailComposeViewWindowKey];

  if (v5 == self)
  {
    v6 = [v7 name];
    self->_composeActive = [v6 isEqualToString:MFMailComposeViewDidShow];
  }
}

- (MFWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end