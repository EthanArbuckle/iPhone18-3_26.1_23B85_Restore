@interface SCATCandidateBarManager
- (BOOL)canBeActiveElementManager;
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (SCATCandidateBarManagerDelegate)delegate;
- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager;
- (void)driver:(id)driver willFocusOnContext:(id)context;
@end

@implementation SCATCandidateBarManager

- (BOOL)canBeActiveElementManager
{
  typingCandidates = [(SCATCandidateBarManager *)self typingCandidates];
  v3 = typingCandidates != 0;

  return v3;
}

- (void)driver:(id)driver willFocusOnContext:(id)context
{
  driverCopy = driver;
  contextCopy = context;
  element = [contextCopy element];
  if (element)
  {
    typingCandidates = [(SCATCandidateBarManager *)self typingCandidates];
    v10 = [typingCandidates containsObject:element];

    if ((v10 & 1) == 0)
    {
      v11 = element;
      _AXAssert();
    }

    if ([element scatIsAXElement])
    {
      [element scrollToVisible];
    }

    else
    {
      _AXAssert();
    }
  }

  v12.receiver = self;
  v12.super_class = SCATCandidateBarManager;
  [(SCATElementManager *)&v12 driver:driverCopy willFocusOnContext:contextCopy];
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  actionCopy = action;
  elementCopy = element;
  if ([actionCopy action] == 100 || objc_msgSend(actionCopy, "action") == 103 || objc_msgSend(actionCopy, "action") == 109)
  {
    [(SCATCandidateBarManager *)self setTypingCandidates:0];
  }

  v10.receiver = self;
  v10.super_class = SCATCandidateBarManager;
  v8 = [(SCATElementManager *)&v10 handleInputAction:actionCopy withElement:elementCopy];

  return v8;
}

- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager
{
  newElementsCopy = newElements;
  elementsCopy = elements;
  if (newElementsCopy)
  {
    v12 = elementsCopy;
    delegate = [(SCATCandidateBarManager *)self delegate];
    typingCandidates = [(SCATCandidateBarManager *)self typingCandidates];
    v11 = [delegate candidateBarManager:self hasValidTypingCandidates:typingCandidates];

    elementsCopy = v12;
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

      elementsCopy = v12;
    }
  }
}

- (SCATCandidateBarManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end