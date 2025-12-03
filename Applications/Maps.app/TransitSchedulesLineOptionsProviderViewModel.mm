@interface TransitSchedulesLineOptionsProviderViewModel
- (TransitSchedulesLineOptionsProviderViewModel)initWithTitle:(id)title symbolName:(id)name action:(id)action axIdentifierForAction:(id)forAction;
- (void)loadSubtitleWithCompletion:(id)completion;
@end

@implementation TransitSchedulesLineOptionsProviderViewModel

- (void)loadSubtitleWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (TransitSchedulesLineOptionsProviderViewModel)initWithTitle:(id)title symbolName:(id)name action:(id)action axIdentifierForAction:(id)forAction
{
  titleCopy = title;
  nameCopy = name;
  actionCopy = action;
  forActionCopy = forAction;
  v24.receiver = self;
  v24.super_class = TransitSchedulesLineOptionsProviderViewModel;
  v14 = [(TransitSchedulesLineOptionsProviderViewModel *)&v24 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    titleString = v14->_titleString;
    v14->_titleString = v15;

    v17 = [nameCopy copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v17;

    v19 = [actionCopy copy];
    actionBlock = v14->_actionBlock;
    v14->_actionBlock = v19;

    v21 = [forActionCopy copy];
    axIdentifierForAction = v14->_axIdentifierForAction;
    v14->_axIdentifierForAction = v21;
  }

  return v14;
}

@end