@interface AKCandidatePickerView_iOS
- (AKCandidatePickerView_iOS)initWithFrame:(CGRect)frame items:(id)items annotations:(id)annotations target:(id)target action:(SEL)action visualStyle:(int64_t)style;
- (CGSize)intrinsicContentSize;
- (SEL)action;
- (id)target;
- (int64_t)tagForCandidateItemAtIndex:(unint64_t)index;
- (void)_createButtonsWithBlurStyle:(int64_t)style;
- (void)_selectBackground:(id)background animated:(BOOL)animated;
- (void)setAction:(SEL)action;
- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation AKCandidatePickerView_iOS

- (AKCandidatePickerView_iOS)initWithFrame:(CGRect)frame items:(id)items annotations:(id)annotations target:(id)target action:(SEL)action visualStyle:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemsCopy = items;
  annotationsCopy = annotations;
  targetCopy = target;
  v52.receiver = self;
  v52.super_class = AKCandidatePickerView_iOS;
  height = [(AKCandidatePickerView_iOS *)&v52 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    v51 = itemsCopy;
    [(AKCandidatePickerView_iOS *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AKCandidatePickerView_iOS *)v22 setBackgroundColor:clearColor];

    v22->_blurStyle = style;
    v24 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    visualEffectView = v22->_visualEffectView;
    v22->_visualEffectView = v24;

    [(UIVisualEffectView *)v22->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIVisualEffectView *)v22->_visualEffectView layer];
    [layer setCornerRadius:6.0];

    layer2 = [(UIVisualEffectView *)v22->_visualEffectView layer];
    [layer2 setMasksToBounds:1];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIVisualEffectView *)v22->_visualEffectView setBackgroundColor:clearColor2];

    [(AKCandidatePickerView_iOS *)v22 addSubview:v22->_visualEffectView];
    objc_storeStrong(&v22->_itemTags, items);
    objc_storeStrong(&v22->_annotations, annotations);
    objc_storeWeak(&v22->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v22->_action = actionCopy;
    v30 = objc_alloc(MEMORY[0x277D75A68]);
    v31 = [v30 initWithArrangedSubviews:MEMORY[0x277CBEBF8]];
    buttonContainer = v22->_buttonContainer;
    v22->_buttonContainer = v31;

    [(UIStackView *)v22->_buttonContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)v22->_buttonContainer setBackgroundColor:clearColor3];

    v34 = MEMORY[0x277CCABB0];
    [(AKCandidatePickerView_iOS *)v22 intrinsicContentSize];
    v36 = [v34 numberWithDouble:v35];
    v37 = _NSDictionaryOfVariableBindings(&cfstr_HeightButtonma.isa, v36, &unk_2851BB6A0, 0);
    v38 = _NSDictionaryOfVariableBindings(&cfstr_Buttoncontaine.isa, v22->_buttonContainer, v22->_visualEffectView, 0);
    v39 = MEMORY[0x277CCAAD0];
    v40 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_visualEffectView(height)]|" options:0 metrics:v37 views:v38];
    [v39 activateConstraints:v40];

    v41 = MEMORY[0x277CCAAD0];
    v42 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_visualEffectView]|" options:0 metrics:0 views:v38];
    [v41 activateConstraints:v42];

    visualEffectView = [(AKCandidatePickerView_iOS *)v22 visualEffectView];
    contentView = [visualEffectView contentView];

    [contentView addSubview:v22->_buttonContainer];
    v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(buttonMargin)-[_buttonContainer]-(buttonMargin)-|" options:0 metrics:v37 views:v38];
    [contentView addConstraints:v45];

    v46 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(buttonMargin)-[_buttonContainer]-(buttonMargin)-|" options:0 metrics:v37 views:v38];
    [contentView addConstraints:v46];

    v47 = [MEMORY[0x277CCAAD0] constraintWithItem:v22->_buttonContainer attribute:9 relatedBy:0 toItem:contentView attribute:9 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v47];

    visualEffectView2 = [(AKCandidatePickerView_iOS *)v22 visualEffectView];
    contentView2 = [visualEffectView2 contentView];
    [contentView2 setAlpha:0.0];

    [(AKCandidatePickerView_iOS *)v22 _createButtonsWithBlurStyle:style];
    [(AKCandidatePickerView_iOS *)v22 setSelectedIndex:0];

    itemsCopy = v51;
  }

  return v22;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  v9 = !hiddenCopy;
  if (hiddenCopy)
  {
    v10 = 0.1;
  }

  else
  {
    v10 = 0.18;
  }

  if (hiddenCopy)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277D75210] effectWithStyle:{-[AKCandidatePickerView_iOS blurStyle](self, "blurStyle")}];
  }

  if (animatedCopy)
  {
    v12 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23F489E00;
    v15[3] = &unk_278C7C1F8;
    v15[4] = self;
    v17 = v9;
    v16 = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F489E94;
    v13[3] = &unk_278C7C220;
    v14 = completionCopy;
    [v12 animateWithDuration:v15 animations:v13 completion:v10];
  }

  else
  {
    [(AKCandidatePickerView_iOS *)self setAlpha:v9];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)setSelectedIndex:(unint64_t)index
{
  buttons = [(AKCandidatePickerView_iOS *)self buttons];
  v6 = [buttons count];

  if (v6 > index)
  {
    buttons2 = [(AKCandidatePickerView_iOS *)self buttons];
    v8 = [buttons2 objectAtIndex:index];

    [(AKCandidatePickerView_iOS *)self _selectBackground:v8 animated:0];
  }
}

- (int64_t)tagForCandidateItemAtIndex:(unint64_t)index
{
  buttons = [(AKCandidatePickerView_iOS *)self buttons];
  v6 = [buttons count];

  if (v6 <= index)
  {
    return 0;
  }

  buttons2 = [(AKCandidatePickerView_iOS *)self buttons];
  v8 = [buttons2 objectAtIndex:index];

  v9 = [v8 tag];
  return v9;
}

- (void)_createButtonsWithBlurStyle:(int64_t)style
{
  v52 = *MEMORY[0x277D85DE8];
  buttons = [(AKCandidatePickerView_iOS *)self buttons];
  [buttons makeObjectsPerformSelector:sel_removeFromSuperview];

  array = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(AKCandidatePickerView_iOS *)self annotations];
  v5 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v39 = *v47;
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v11 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * v11);
        annotations = [(AKCandidatePickerView_iOS *)self annotations];
        v14 = [annotations indexOfObject:v12];

        itemTags = [(AKCandidatePickerView_iOS *)self itemTags];
        v16 = [itemTags objectAtIndexedSubscript:v14];
        integerValue = [v16 integerValue];

        v18 = [AKAnnotationImageHelper imageOfSize:v12 forAnnotation:32.0, 32.0];
        v19 = [v18 imageWithRenderingMode:2];

        v20 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v7, v8, v9, v10}];
        clearColor = [MEMORY[0x277D75348] clearColor];
        [v20 setBackgroundColor:clearColor];

        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v20 setTag:integerValue];
        layer = [v20 layer];
        [layer setCornerRadius:3.0];

        if (style == 2)
        {
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [v20 setTintColor:whiteColor];
        }

        [v20 setImage:v19 forState:0];
        target = [(AKCandidatePickerView_iOS *)self target];
        [v20 addTarget:target action:-[AKCandidatePickerView_iOS action](self forControlEvents:{"action"), 64}];

        [v20 addTarget:self action:sel__selectBackground_ forControlEvents:1];
        buttonContainer = [(AKCandidatePickerView_iOS *)self buttonContainer];
        [buttonContainer addSubview:v20];

        v26 = _NSDictionaryOfVariableBindings(&cfstr_ButtonSize.isa, v20, &unk_2851BB6B8, 0);
        v27 = MEMORY[0x277CCAAD0];
        v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[button(size)]|" options:0 metrics:v26 views:v26];
        [v27 activateConstraints:v28];

        v29 = MEMORY[0x277CCAAD0];
        v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:[button(size)]" options:0 metrics:v26 views:v26];
        [v29 activateConstraints:v30];

        [array addObject:v20];
        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v6);
  }

  [(AKCandidatePickerView_iOS *)self setButtons:array];
  if ([array count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    buttons2 = [(AKCandidatePickerView_iOS *)self buttons];
    v32 = [buttons2 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v43;
      do
      {
        v35 = 0;
        do
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(buttons2);
          }

          v36 = *(*(&v42 + 1) + 8 * v35);
          buttonContainer2 = [(AKCandidatePickerView_iOS *)self buttonContainer];
          [buttonContainer2 addArrangedSubview:v36];

          ++v35;
        }

        while (v33 != v35);
        v33 = [buttons2 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v33);
    }
  }

  [(AKCandidatePickerView_iOS *)self layoutIfNeeded];
}

- (void)_selectBackground:(id)background animated:(BOOL)animated
{
  animatedCopy = animated;
  backgroundCopy = background;
  v7 = self->_blurStyle == 2;
  buttons = [(AKCandidatePickerView_iOS *)self buttons];
  v9 = [buttons mutableCopy];

  [v9 removeObject:backgroundCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23F48A620;
  v17[3] = &unk_278C7C248;
  v10 = backgroundCopy;
  v18 = v10;
  v20 = v7;
  v11 = v9;
  v19 = v11;
  v12 = MEMORY[0x245CAF110](v17);
  v13 = v12;
  if (animatedCopy)
  {
    v14 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23F48A7D8;
    v15[3] = &unk_278C7B748;
    v16 = v12;
    [v14 animateWithDuration:v15 animations:0 completion:0.18];
  }

  else
  {
    v12[2](v12);
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end