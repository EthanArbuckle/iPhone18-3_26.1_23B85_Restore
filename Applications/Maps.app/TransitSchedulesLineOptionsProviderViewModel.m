@interface TransitSchedulesLineOptionsProviderViewModel
- (TransitSchedulesLineOptionsProviderViewModel)initWithTitle:(id)a3 symbolName:(id)a4 action:(id)a5 axIdentifierForAction:(id)a6;
- (void)loadSubtitleWithCompletion:(id)a3;
@end

@implementation TransitSchedulesLineOptionsProviderViewModel

- (void)loadSubtitleWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (TransitSchedulesLineOptionsProviderViewModel)initWithTitle:(id)a3 symbolName:(id)a4 action:(id)a5 axIdentifierForAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = TransitSchedulesLineOptionsProviderViewModel;
  v14 = [(TransitSchedulesLineOptionsProviderViewModel *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    titleString = v14->_titleString;
    v14->_titleString = v15;

    v17 = [v11 copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v17;

    v19 = [v12 copy];
    actionBlock = v14->_actionBlock;
    v14->_actionBlock = v19;

    v21 = [v13 copy];
    axIdentifierForAction = v14->_axIdentifierForAction;
    v14->_axIdentifierForAction = v21;
  }

  return v14;
}

@end