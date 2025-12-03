@interface AFUIPanelState
- (id)initDisplayed:(BOOL)displayed documentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler;
@end

@implementation AFUIPanelState

- (id)initDisplayed:(BOOL)displayed documentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler
{
  traitsCopy = traits;
  stateCopy = state;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = AFUIPanelState;
  v13 = [(AFUIPanelState *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_displayed = displayed;
    v15 = [traitsCopy copy];
    documentTraits = v14->_documentTraits;
    v14->_documentTraits = v15;

    v17 = [stateCopy copy];
    documentState = v14->_documentState;
    v14->_documentState = v17;

    v19 = [handlerCopy copy];
    textOperationsHandler = v14->_textOperationsHandler;
    v14->_textOperationsHandler = v19;
  }

  return v14;
}

@end