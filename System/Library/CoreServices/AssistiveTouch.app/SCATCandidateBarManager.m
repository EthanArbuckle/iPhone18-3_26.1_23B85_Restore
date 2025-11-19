@interface SCATCandidateBarManager
- (BOOL)canBeActiveElementManager;
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (SCATCandidateBarManagerDelegate)delegate;
- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6;
- (void)driver:(id)a3 willFocusOnContext:(id)a4;
@end

@implementation SCATCandidateBarManager

- (BOOL)canBeActiveElementManager
{
  v2 = [(SCATCandidateBarManager *)self typingCandidates];
  v3 = v2 != 0;

  return v3;
}

- (void)driver:(id)a3 willFocusOnContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 element];
  if (v8)
  {
    v9 = [(SCATCandidateBarManager *)self typingCandidates];
    v10 = [v9 containsObject:v8];

    if ((v10 & 1) == 0)
    {
      v11 = v8;
      _AXAssert();
    }

    if ([v8 scatIsAXElement])
    {
      [v8 scrollToVisible];
    }

    else
    {
      _AXAssert();
    }
  }

  v12.receiver = self;
  v12.super_class = SCATCandidateBarManager;
  [(SCATElementManager *)&v12 driver:v6 willFocusOnContext:v7];
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 action] == 100 || objc_msgSend(v6, "action") == 103 || objc_msgSend(v6, "action") == 109)
  {
    [(SCATCandidateBarManager *)self setTypingCandidates:0];
  }

  v10.receiver = self;
  v10.super_class = SCATCandidateBarManager;
  v8 = [(SCATElementManager *)&v10 handleInputAction:v6 withElement:v7];

  return v8;
}

- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    v12 = v8;
    v9 = [(SCATCandidateBarManager *)self delegate];
    v10 = [(SCATCandidateBarManager *)self typingCandidates];
    v11 = [v9 candidateBarManager:self hasValidTypingCandidates:v10];

    v8 = v12;
    if ((v11 & 1) == 0)
    {
      [(SCATCandidateBarManager *)self setTypingCandidates:0];
      if ([v12 isActive])
      {
        [v12 beginScanningWithFocusContext:0];
      }

      else
      {
        [v12 useFocusContextOnResume:0];
      }

      v8 = v12;
    }
  }
}

- (SCATCandidateBarManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end