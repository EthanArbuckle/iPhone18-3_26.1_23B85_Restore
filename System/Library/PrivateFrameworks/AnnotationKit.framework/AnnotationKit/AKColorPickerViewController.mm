@interface AKColorPickerViewController
- (AKColorPickerViewController)initWithController:(id)a3;
- (AKController)controller;
- (id)convertTextAttributes:(id)a3;
- (void)valueChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKColorPickerViewController

- (AKColorPickerViewController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKColorPickerViewController;
  v5 = [(AKColorPickerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKColorPickerViewController *)v5 setController:v4];
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

  v8 = [(AKColorPickerViewController *)self colorPalette];
  [v8 setScrollDirection:0];

  v9 = [(AKColorPickerViewController *)self colorPalette];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(AKColorPickerViewController *)self colorPalette];
  [v10 setTag:765101];

  v11 = [(AKColorPickerViewController *)self colorPalette];
  [v11 addTarget:self action:sel_valueChanged_ forControlEvents:4096];

  v12 = [(AKColorPickerViewController *)self view];
  v13 = [(AKColorPickerViewController *)self colorPalette];
  [v12 addSubview:v13];

  v14 = _NSDictionaryOfVariableBindings(&cfstr_Colorpalette.isa, self->_colorPalette, 0);
  v15 = MEMORY[0x277CCAAD0];
  v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_colorPalette]|" options:0 metrics:0 views:v14];
  [v15 activateConstraints:v16];

  v17 = MEMORY[0x277CCAAD0];
  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_colorPalette]|" options:0 metrics:0 views:v14];
  [v17 activateConstraints:v18];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AKColorPickerViewController;
  [(AKColorPickerViewController *)&v6 viewWillAppear:a3];
  v4 = [(AKColorPickerViewController *)self color];
  v5 = [(AKColorPickerViewController *)self colorPalette];
  [v5 setColor:v4];
}

- (void)valueChanged:(id)a3
{
  v9 = a3;
  v4 = [(AKColorPickerViewController *)self colorPalette];
  v5 = [v4 color];
  [(AKColorPickerViewController *)self setColor:v5];

  v6 = [(AKColorPickerViewController *)self controller];
  if ([(AKColorPickerViewController *)self colorAttributeTag]== 765101)
  {
    [v6 performActionForSender:v9];
  }

  else if ([(AKColorPickerViewController *)self colorAttributeTag]== 765106)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    v8 = [v6 actionController];
    [v7 sendAction:sel_performActionForSender_ to:v8 from:self forEvent:0];
  }

  else
  {
    NSLog(&cfstr_SCalledWithInc.isa, "[AKColorPickerViewController valueChanged:]", [(AKColorPickerViewController *)self colorAttributeTag]);
  }
}

- (id)convertTextAttributes:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D740C0];
  v6 = [v4 objectForKey:*MEMORY[0x277D740C0]];
  v7 = [(AKColorPickerViewController *)self color];
  if (!v6)
  {
    v6 = [MEMORY[0x277D75348] blackColor];
  }

  if ([v6 akIsEqualToColor:v7])
  {
    v8 = 0;
  }

  else
  {
    if (v4)
    {
      v9 = [v4 mutableCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = v9;
    [v9 setObject:v7 forKey:v5];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
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