@interface MTActionController
- (void)setAvailableActions:(id)a3;
- (void)setColorTheme:(id)a3;
- (void)setupActions;
@end

@implementation MTActionController

- (void)setColorTheme:(id)a3
{
  v5 = a3;
  colorTheme = self->_colorTheme;
  if (colorTheme != v5)
  {
    v8 = v5;
    v7 = [(MTColorTheme *)colorTheme isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_colorTheme, a3);
      [(MTActionController *)self setupActions];
      v5 = v8;
    }
  }
}

- (void)setAvailableActions:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTActionController;
  [(IMActionController *)&v4 setAvailableActions:a3];
  [(MTActionController *)self setupActions];
}

- (void)setupActions
{
  v3 = [(IMActionController *)self availableActions];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006EDD8;
  v4[3] = &unk_1004D8F40;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

@end