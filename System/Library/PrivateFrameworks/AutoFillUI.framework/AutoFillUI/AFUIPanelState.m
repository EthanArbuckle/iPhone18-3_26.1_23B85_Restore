@interface AFUIPanelState
- (id)initDisplayed:(BOOL)a3 documentTraits:(id)a4 documentState:(id)a5 textOperationsHandler:(id)a6;
@end

@implementation AFUIPanelState

- (id)initDisplayed:(BOOL)a3 documentTraits:(id)a4 documentState:(id)a5 textOperationsHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = AFUIPanelState;
  v13 = [(AFUIPanelState *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_displayed = a3;
    v15 = [v10 copy];
    documentTraits = v14->_documentTraits;
    v14->_documentTraits = v15;

    v17 = [v11 copy];
    documentState = v14->_documentState;
    v14->_documentState = v17;

    v19 = [v12 copy];
    textOperationsHandler = v14->_textOperationsHandler;
    v14->_textOperationsHandler = v19;
  }

  return v14;
}

@end