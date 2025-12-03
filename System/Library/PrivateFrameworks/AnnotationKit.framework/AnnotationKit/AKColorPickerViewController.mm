@interface AKColorPickerViewController
- (AKColorPickerViewController)initWithController:(id)controller;
- (AKController)controller;
- (id)convertTextAttributes:(id)attributes;
- (void)valueChanged:(id)changed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKColorPickerViewController

- (AKColorPickerViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKColorPickerViewController;
  v5 = [(AKColorPickerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKColorPickerViewController *)v5 setController:controllerCopy];
    [(AKColorPickerViewController *)v6 setPreferredContentSize:60.0, 382.0];
  }

  return v6;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = AKColorPickerViewController;
  [(AKColorPickerViewController *)&v19 viewDidLoad];
  v3 = [AKColorPaletteView alloc];
  [(AKColorPickerViewController *)self preferredContentSize];
  v5 = v4;
  [(AKColorPickerViewController *)self preferredContentSize];
  v7 = [(AKColorPaletteView *)v3 initWithFrame:0.0, 0.0, v5, v6];
  [(AKColorPickerViewController *)self setColorPalette:v7];

  colorPalette = [(AKColorPickerViewController *)self colorPalette];
  [colorPalette setScrollDirection:0];

  colorPalette2 = [(AKColorPickerViewController *)self colorPalette];
  [colorPalette2 setTranslatesAutoresizingMaskIntoConstraints:0];

  colorPalette3 = [(AKColorPickerViewController *)self colorPalette];
  [colorPalette3 setTag:765101];

  colorPalette4 = [(AKColorPickerViewController *)self colorPalette];
  [colorPalette4 addTarget:self action:sel_valueChanged_ forControlEvents:4096];

  view = [(AKColorPickerViewController *)self view];
  colorPalette5 = [(AKColorPickerViewController *)self colorPalette];
  [view addSubview:colorPalette5];

  v14 = _NSDictionaryOfVariableBindings(&cfstr_Colorpalette.isa, self->_colorPalette, 0);
  v15 = MEMORY[0x277CCAAD0];
  v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_colorPalette]|" options:0 metrics:0 views:v14];
  [v15 activateConstraints:v16];

  v17 = MEMORY[0x277CCAAD0];
  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_colorPalette]|" options:0 metrics:0 views:v14];
  [v17 activateConstraints:v18];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AKColorPickerViewController;
  [(AKColorPickerViewController *)&v6 viewWillAppear:appear];
  color = [(AKColorPickerViewController *)self color];
  colorPalette = [(AKColorPickerViewController *)self colorPalette];
  [colorPalette setColor:color];
}

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  colorPalette = [(AKColorPickerViewController *)self colorPalette];
  color = [colorPalette color];
  [(AKColorPickerViewController *)self setColor:color];

  controller = [(AKColorPickerViewController *)self controller];
  if ([(AKColorPickerViewController *)self colorAttributeTag]== 765101)
  {
    [controller performActionForSender:changedCopy];
  }

  else if ([(AKColorPickerViewController *)self colorAttributeTag]== 765106)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    actionController = [controller actionController];
    [mEMORY[0x277D75128] sendAction:sel_performActionForSender_ to:actionController from:self forEvent:0];
  }

  else
  {
    NSLog(&cfstr_SCalledWithInc.isa, "[AKColorPickerViewController valueChanged:]", [(AKColorPickerViewController *)self colorAttributeTag]);
  }
}

- (id)convertTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = *MEMORY[0x277D740C0];
  blackColor = [attributesCopy objectForKey:*MEMORY[0x277D740C0]];
  color = [(AKColorPickerViewController *)self color];
  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  if ([blackColor akIsEqualToColor:color])
  {
    v8 = 0;
  }

  else
  {
    if (attributesCopy)
    {
      dictionary = [attributesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = dictionary;
    [dictionary setObject:color forKey:v5];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = attributesCopy;
  }

  v11 = v10;

  return v10;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end