@interface AAUIOBContactSelectorViewModel
- (AAUIOBContactSelectorViewModel)initWithFlow:(unint64_t)a3;
- (id)_modelForFlow:(unint64_t)a3;
- (void)_prepareModelForFlow:(unint64_t)a3;
@end

@implementation AAUIOBContactSelectorViewModel

- (AAUIOBContactSelectorViewModel)initWithFlow:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = AAUIOBContactSelectorViewModel;
  v4 = [(AAUIOBContactSelectorViewModel *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    v4->_contentViewLayout = v6;
    [(AAUIOBContactSelectorViewModel *)v4 _prepareModelForFlow:a3];
    v5->_adoptTableViewScrollView = 1;
    v5->_tableViewStyle = 2;
  }

  return v5;
}

- (void)_prepareModelForFlow:(unint64_t)a3
{
  v4 = [(AAUIOBContactSelectorViewModel *)self _modelForFlow:a3];
  model = self->_model;
  self->_model = v4;

  v6 = [(AAOBWelcomeControllerModelProtocol *)self->_model primaryButton];
  primaryButton = self->_primaryButton;
  self->_primaryButton = v6;

  v8 = [(AAOBWelcomeControllerModelProtocol *)self->_model secondaryButton];
  secondaryButton = self->_secondaryButton;
  self->_secondaryButton = v8;

  v10 = [(AAOBWelcomeControllerModelProtocol *)self->_model title];
  title = self->_title;
  self->_title = v10;

  self->_detailText = [(AAOBWelcomeControllerModelProtocol *)self->_model detailText];

  MEMORY[0x1EEE66BB8]();
}

- (id)_modelForFlow:(unint64_t)a3
{
  if (a3 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

@end