@interface AKFloatingAttributePickerViewController
- (AKController)controller;
- (AKFloatingAttributePickerViewController)initWithController:(id)controller;
- (id)convertTextAttributes:(id)attributes;
- (void)setColor:(id)color;
- (void)setRightButtonItems:(id)items animated:(BOOL)animated;
- (void)valueChanged:(id)changed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKFloatingAttributePickerViewController

- (AKFloatingAttributePickerViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKFloatingAttributePickerViewController;
  v5 = [(AKFloatingAttributePickerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKFloatingAttributePickerViewController *)v5 setController:controllerCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v43[2] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = AKFloatingAttributePickerViewController;
  [(AKFloatingAttributePickerViewController *)&v42 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(AKFloatingAttributePickerViewController *)self view];
  [view setBackgroundColor:clearColor];

  view2 = [(AKFloatingAttributePickerViewController *)self view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(AKFloatingAttributePickerViewController *)self view];
  v7 = MEMORY[0x277CCAAD0];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_View.isa, view3, 0);
  v9 = [v7 constraintsWithVisualFormat:@"V:[view(44)]" options:0 metrics:0 views:v8];
  [v7 activateConstraints:v9];

  controller = [(AKFloatingAttributePickerViewController *)self controller];
  v11 = objc_alloc(MEMORY[0x277D75C58]);
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], v13, v14, v15}];
  [(AKFloatingAttributePickerViewController *)self setToolbar:v16];

  toolbar = [(AKFloatingAttributePickerViewController *)self toolbar];
  [toolbar setTranslatesAutoresizingMaskIntoConstraints:0];

  toolbarView = [controller toolbarView];
  tintColor = [toolbarView tintColor];
  toolbar2 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [toolbar2 setTintColor:tintColor];

  view4 = [(AKFloatingAttributePickerViewController *)self view];
  toolbar3 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [view4 addSubview:toolbar3];

  v23 = [[AKColorPaletteView alloc] initWithFrame:v12, v13, v14, v15];
  [(AKFloatingAttributePickerViewController *)self setColorPalette:v23];

  colorPalette = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [colorPalette setScrollDirection:1];

  colorPalette2 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [colorPalette2 setTranslatesAutoresizingMaskIntoConstraints:1];

  colorPalette3 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [colorPalette3 setFrame:{0.0, 0.0, 256.0, 44.0}];

  colorPalette4 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [colorPalette4 setTag:765101];

  colorPalette5 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [colorPalette5 addTarget:self action:sel_valueChanged_ forControlEvents:4096];

  v29 = objc_alloc(MEMORY[0x277D751E0]);
  colorPalette6 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  v31 = [v29 initWithCustomView:colorPalette6];
  [(AKFloatingAttributePickerViewController *)self setColorPaletteButtonItem:v31];

  v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  colorPaletteButtonItem = [(AKFloatingAttributePickerViewController *)self colorPaletteButtonItem];
  v43[0] = colorPaletteButtonItem;
  v43[1] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [(AKFloatingAttributePickerViewController *)self setStaticItems:v34];

  staticItems = [(AKFloatingAttributePickerViewController *)self staticItems];
  toolbar4 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [toolbar4 setItems:staticItems];

  v37 = _NSDictionaryOfVariableBindings(&cfstr_Toolbar.isa, self->_toolbar, 0);
  v38 = MEMORY[0x277CCAAD0];
  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_toolbar]|" options:0 metrics:0 views:v37];
  [v38 activateConstraints:v39];

  v40 = MEMORY[0x277CCAAD0];
  v41 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_toolbar]|" options:0 metrics:0 views:v37];
  [v40 activateConstraints:v41];
}

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  controller = [(AKFloatingAttributePickerViewController *)self controller];
  color = [changedCopy color];
  objc_storeStrong(&self->_color, color);
  if ([(AKFloatingAttributePickerViewController *)self colorAttributeTag]== 765101)
  {
    [controller performActionForSender:changedCopy];
  }

  else if ([(AKFloatingAttributePickerViewController *)self colorAttributeTag]== 765106)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    actionController = [controller actionController];
    [mEMORY[0x277D75128] sendAction:sel_performActionForSender_ to:actionController from:self forEvent:0];
  }

  else
  {
    NSLog(&cfstr_SCalledWithInc.isa, "[AKFloatingAttributePickerViewController valueChanged:]", [(AKFloatingAttributePickerViewController *)self colorAttributeTag]);
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_color, color);
    colorPalette = [(AKFloatingAttributePickerViewController *)self colorPalette];
    [colorPalette setColor:v7];

    colorCopy = v7;
  }
}

- (void)setRightButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if (([itemsCopy isEqualToArray:self->_rightButtonItems] & 1) == 0)
  {
    objc_storeStrong(&self->_rightButtonItems, items);
    staticItems = [(AKFloatingAttributePickerViewController *)self staticItems];
    v8 = [staticItems mutableCopy];

    [v8 addObjectsFromArray:itemsCopy];
    toolbar = [(AKFloatingAttributePickerViewController *)self toolbar];
    [toolbar setItems:v8 animated:animatedCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  toolbar = [(AKFloatingAttributePickerViewController *)self toolbar];
  [toolbar frame];
  v4 = CGRectGetWidth(v15) + -100.0;

  if (v4 > 0.0)
  {
    colorPalette = [(AKFloatingAttributePickerViewController *)self colorPalette];
    [colorPalette frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (v4 >= 256.0)
    {
      v12 = 256.0;
    }

    else
    {
      v12 = 200.0;
    }

    colorPalette2 = [(AKFloatingAttributePickerViewController *)self colorPalette];
    [colorPalette2 setFrame:{v7, v9, v12, v11}];
  }
}

- (id)convertTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = *MEMORY[0x277D740C0];
  blackColor = [attributesCopy objectForKey:*MEMORY[0x277D740C0]];
  color = [(AKFloatingAttributePickerViewController *)self color];
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