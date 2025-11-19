@interface AKFloatingAttributePickerViewController
- (AKController)controller;
- (AKFloatingAttributePickerViewController)initWithController:(id)a3;
- (id)convertTextAttributes:(id)a3;
- (void)setColor:(id)a3;
- (void)setRightButtonItems:(id)a3 animated:(BOOL)a4;
- (void)valueChanged:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKFloatingAttributePickerViewController

- (AKFloatingAttributePickerViewController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKFloatingAttributePickerViewController;
  v5 = [(AKFloatingAttributePickerViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKFloatingAttributePickerViewController *)v5 setController:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v43[2] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = AKFloatingAttributePickerViewController;
  [(AKFloatingAttributePickerViewController *)&v42 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(AKFloatingAttributePickerViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(AKFloatingAttributePickerViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(AKFloatingAttributePickerViewController *)self view];
  v7 = MEMORY[0x277CCAAD0];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_View.isa, v6, 0);
  v9 = [v7 constraintsWithVisualFormat:@"V:[view(44)]" options:0 metrics:0 views:v8];
  [v7 activateConstraints:v9];

  v10 = [(AKFloatingAttributePickerViewController *)self controller];
  v11 = objc_alloc(MEMORY[0x277D75C58]);
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], v13, v14, v15}];
  [(AKFloatingAttributePickerViewController *)self setToolbar:v16];

  v17 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [v10 toolbarView];
  v19 = [v18 tintColor];
  v20 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [v20 setTintColor:v19];

  v21 = [(AKFloatingAttributePickerViewController *)self view];
  v22 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [v21 addSubview:v22];

  v23 = [[AKColorPaletteView alloc] initWithFrame:v12, v13, v14, v15];
  [(AKFloatingAttributePickerViewController *)self setColorPalette:v23];

  v24 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [v24 setScrollDirection:1];

  v25 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:1];

  v26 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [v26 setFrame:{0.0, 0.0, 256.0, 44.0}];

  v27 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [v27 setTag:765101];

  v28 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  [v28 addTarget:self action:sel_valueChanged_ forControlEvents:4096];

  v29 = objc_alloc(MEMORY[0x277D751E0]);
  v30 = [(AKFloatingAttributePickerViewController *)self colorPalette];
  v31 = [v29 initWithCustomView:v30];
  [(AKFloatingAttributePickerViewController *)self setColorPaletteButtonItem:v31];

  v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v33 = [(AKFloatingAttributePickerViewController *)self colorPaletteButtonItem];
  v43[0] = v33;
  v43[1] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [(AKFloatingAttributePickerViewController *)self setStaticItems:v34];

  v35 = [(AKFloatingAttributePickerViewController *)self staticItems];
  v36 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [v36 setItems:v35];

  v37 = _NSDictionaryOfVariableBindings(&cfstr_Toolbar.isa, self->_toolbar, 0);
  v38 = MEMORY[0x277CCAAD0];
  v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_toolbar]|" options:0 metrics:0 views:v37];
  [v38 activateConstraints:v39];

  v40 = MEMORY[0x277CCAAD0];
  v41 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_toolbar]|" options:0 metrics:0 views:v37];
  [v40 activateConstraints:v41];
}

- (void)valueChanged:(id)a3
{
  v8 = a3;
  v4 = [(AKFloatingAttributePickerViewController *)self controller];
  v5 = [v8 color];
  objc_storeStrong(&self->_color, v5);
  if ([(AKFloatingAttributePickerViewController *)self colorAttributeTag]== 765101)
  {
    [v4 performActionForSender:v8];
  }

  else if ([(AKFloatingAttributePickerViewController *)self colorAttributeTag]== 765106)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    v7 = [v4 actionController];
    [v6 sendAction:sel_performActionForSender_ to:v7 from:self forEvent:0];
  }

  else
  {
    NSLog(&cfstr_SCalledWithInc.isa, "[AKFloatingAttributePickerViewController valueChanged:]", [(AKFloatingAttributePickerViewController *)self colorAttributeTag]);
  }
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_color, a3);
    v6 = [(AKFloatingAttributePickerViewController *)self colorPalette];
    [v6 setColor:v7];

    v5 = v7;
  }
}

- (void)setRightButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (([v10 isEqualToArray:self->_rightButtonItems] & 1) == 0)
  {
    objc_storeStrong(&self->_rightButtonItems, a3);
    v7 = [(AKFloatingAttributePickerViewController *)self staticItems];
    v8 = [v7 mutableCopy];

    [v8 addObjectsFromArray:v10];
    v9 = [(AKFloatingAttributePickerViewController *)self toolbar];
    [v9 setItems:v8 animated:v4];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(AKFloatingAttributePickerViewController *)self toolbar];
  [v3 frame];
  v4 = CGRectGetWidth(v15) + -100.0;

  if (v4 > 0.0)
  {
    v5 = [(AKFloatingAttributePickerViewController *)self colorPalette];
    [v5 frame];
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

    v13 = [(AKFloatingAttributePickerViewController *)self colorPalette];
    [v13 setFrame:{v7, v9, v12, v11}];
  }
}

- (id)convertTextAttributes:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D740C0];
  v6 = [v4 objectForKey:*MEMORY[0x277D740C0]];
  v7 = [(AKFloatingAttributePickerViewController *)self color];
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