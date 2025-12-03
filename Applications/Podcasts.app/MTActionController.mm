@interface MTActionController
- (void)setAvailableActions:(id)actions;
- (void)setColorTheme:(id)theme;
- (void)setupActions;
@end

@implementation MTActionController

- (void)setColorTheme:(id)theme
{
  themeCopy = theme;
  colorTheme = self->_colorTheme;
  if (colorTheme != themeCopy)
  {
    v8 = themeCopy;
    v7 = [(MTColorTheme *)colorTheme isEqual:themeCopy];
    themeCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_colorTheme, theme);
      [(MTActionController *)self setupActions];
      themeCopy = v8;
    }
  }
}

- (void)setAvailableActions:(id)actions
{
  v4.receiver = self;
  v4.super_class = MTActionController;
  [(IMActionController *)&v4 setAvailableActions:actions];
  [(MTActionController *)self setupActions];
}

- (void)setupActions
{
  availableActions = [(IMActionController *)self availableActions];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006EDD8;
  v4[3] = &unk_1004D8F40;
  v4[4] = self;
  [availableActions enumerateObjectsUsingBlock:v4];
}

@end