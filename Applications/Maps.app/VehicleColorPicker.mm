@interface VehicleColorPicker
- (NSArray)cells;
- (VehicleColorPicker)initWithColors:(id)colors colorsPerRow:(unint64_t)row colorEdgeInsets:(UIEdgeInsets)insets selectedIndex:(id)index contrastColor:(id)color delegate:(id)delegate;
- (VehicleColorPickerDelegate)delegate;
- (void)pressedCell:(id)cell;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation VehicleColorPicker

- (VehicleColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = VehicleColorPicker;
  [(VehicleColorPicker *)&v21 traitCollectionDidChange:changeCopy];
  traitCollection = [(VehicleColorPicker *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    cells = [(VehicleColorPicker *)self cells];
    v9 = [cells countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(cells);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          colorView = [v13 colorView];
          backgroundColor = [colorView backgroundColor];
          [backgroundColor _maps_euclideanDistanceFromColor:self->_contrastColor];
          [v13 setNeedsOutlineStroke:v16 < 0.1];
        }

        v10 = [cells countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (void)pressedCell:(id)cell
{
  cellCopy = cell;
  delegate = [(VehicleColorPicker *)self delegate];
  cells = [(VehicleColorPicker *)self cells];
  [delegate colorPicker:self didSelectIndex:{objc_msgSend(cells, "indexOfObject:", cellCopy)}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cells2 = [(VehicleColorPicker *)self cells];
  v8 = [cells2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(cells2);
        }

        [*(*(&v12 + 1) + 8 * v11) setActive:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [cells2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [cellCopy setActive:1];
}

- (NSArray)cells
{
  cells = self->_cells;
  if (!cells)
  {
    v4 = objc_opt_new();
    colors = [(VehicleColorPicker *)self colors];
    v6 = [colors count];

    if (v6)
    {
      v7 = 0;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        height = [[VehiclePickerButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        colors2 = [(VehicleColorPicker *)self colors];
        v13 = [colors2 objectAtIndexedSubscript:v7];

        [(VehiclePickerButton *)height setTranslatesAutoresizingMaskIntoConstraints:0];
        [(VehiclePickerButton *)height setAccessibilityIdentifier:@"VehiclePickerButton"];
        colorView = [(VehiclePickerButton *)height colorView];
        [colorView setBackgroundColor:v13];

        [(VehiclePickerButton *)height setColorViewInsets:self->_colorEdgeInsets.top, self->_colorEdgeInsets.left, self->_colorEdgeInsets.bottom, self->_colorEdgeInsets.right];
        selectedIndex = self->_selectedIndex;
        if (selectedIndex)
        {
          v16 = v7 == [(NSNumber *)selectedIndex unsignedIntegerValue];
        }

        else
        {
          v16 = 0;
        }

        [(VehiclePickerButton *)height setActive:v16];
        [v13 _maps_euclideanDistanceFromColor:self->_contrastColor];
        [(VehiclePickerButton *)height setNeedsOutlineStroke:v17 < 0.1];
        [(VehiclePickerButton *)height addTarget:self action:"pressedCell:" forControlEvents:64];
        [(NSArray *)v4 addObject:height];

        ++v7;
        colors3 = [(VehicleColorPicker *)self colors];
        v19 = [colors3 count];
      }

      while (v7 < v19);
    }

    v20 = self->_cells;
    self->_cells = v4;

    cells = self->_cells;
  }

  return cells;
}

- (VehicleColorPicker)initWithColors:(id)colors colorsPerRow:(unint64_t)row colorEdgeInsets:(UIEdgeInsets)insets selectedIndex:(id)index contrastColor:(id)color delegate:(id)delegate
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  colorsCopy = colors;
  indexCopy = index;
  colorCopy = color;
  delegateCopy = delegate;
  v79.receiver = self;
  v79.super_class = VehicleColorPicker;
  v21 = [(VehicleColorPicker *)&v79 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v21)
  {
    v63 = colorCopy;
    v22 = [colorsCopy copy];
    colors = v21->_colors;
    v21->_colors = v22;

    v21->_colorsPerRow = row;
    v21->_colorEdgeInsets.top = top;
    v21->_colorEdgeInsets.left = left;
    v21->_colorEdgeInsets.bottom = bottom;
    v21->_colorEdgeInsets.right = right;
    objc_storeStrong(&v21->_contrastColor, color);
    objc_storeWeak(&v21->_delegate, delegateCopy);
    v24 = [indexCopy copy];
    selectedIndex = v21->_selectedIndex;
    v21->_selectedIndex = v24;

    v70 = objc_opt_new();
    v26 = [colorsCopy count];
    v27 = v26;
    if (v26 == v26 / row * row)
    {
      v28 = v26 / row;
    }

    else
    {
      v28 = v26 / row + 1;
    }

    topAnchor = [(VehicleColorPicker *)v21 topAnchor];
    v30 = topAnchor;
    v65 = colorsCopy;
    v66 = v28;
    v64 = indexCopy;
    v62 = delegateCopy;
    if (v28)
    {
      rowCopy = row;
      v32 = 0;
      v33 = 0;
      do
      {
        v67 = v33;
        if (v32 >= v27)
        {
          v71 = 0;
          trailingAnchor3 = 0;
        }

        else
        {
          v34 = 0;
          v71 = 0;
          v35 = 1;
          v69 = v30;
          while (1)
          {
            cells = [(VehicleColorPicker *)v21 cells];
            v78 = v32;
            v37 = [cells objectAtIndexedSubscript:v32];

            [(VehicleColorPicker *)v21 addSubview:v37];
            v77 = v34;
            if (v35 == 1)
            {
              v38 = v37;

              leadingAnchor = [v38 leadingAnchor];
              leadingAnchor2 = [(VehicleColorPicker *)v21 leadingAnchor];
              topAnchor3 = [leadingAnchor constraintEqualToAnchor:?];
              v82[0] = topAnchor3;
              topAnchor2 = [v38 topAnchor];
              v73 = [topAnchor2 constraintEqualToAnchor:v30];
              v82[1] = v73;
              widthAnchor = [v38 widthAnchor];
              heightAnchor = [v38 heightAnchor];
              widthAnchor3 = widthAnchor;
              heightAnchor2 = [widthAnchor constraintEqualToAnchor:heightAnchor];
              v82[2] = heightAnchor2;
              heightAnchor3 = [NSArray arrayWithObjects:v82 count:3];
              [v70 addObjectsFromArray:heightAnchor3];
              v71 = v38;
            }

            else
            {
              leadingAnchor3 = [v37 leadingAnchor];
              leadingAnchor2 = [leadingAnchor3 constraintEqualToAnchor:v34];
              v81[0] = leadingAnchor2;
              topAnchor3 = [v37 topAnchor];
              topAnchor2 = [topAnchor3 constraintEqualToAnchor:v30];
              v81[1] = topAnchor2;
              widthAnchor2 = [v37 widthAnchor];
              widthAnchor3 = [v71 widthAnchor];
              v73 = widthAnchor2;
              heightAnchor = [widthAnchor2 constraintEqualToAnchor:?];
              v81[2] = heightAnchor;
              heightAnchor2 = [v37 heightAnchor];
              heightAnchor3 = [v71 heightAnchor];
              v45 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
              v81[3] = v45;
              [NSArray arrayWithObjects:v81 count:4];
              v46 = v27;
              v47 = rowCopy;
              v49 = v48 = v21;
              [v70 addObjectsFromArray:v49];

              v21 = v48;
              rowCopy = v47;
              v27 = v46;
              leadingAnchor = leadingAnchor3;
            }

            if (rowCopy == v35)
            {
              trailingAnchor = [v37 trailingAnchor];
              trailingAnchor2 = [(VehicleColorPicker *)v21 trailingAnchor];
              v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
              v80 = v52;
              v53 = [NSArray arrayWithObjects:&v80 count:1];
              [v70 addObjectsFromArray:v53];
            }

            trailingAnchor3 = [v37 trailingAnchor];

            v32 = v78 + 1;
            if (v35 >= rowCopy)
            {
              break;
            }

            ++v35;
            v34 = trailingAnchor3;
            v30 = v69;
            if (v32 >= v27)
            {
              goto LABEL_19;
            }
          }

          v30 = v69;
        }

LABEL_19:
        bottomAnchor = [v71 bottomAnchor];

        v33 = v67 + 1;
        v30 = bottomAnchor;
      }

      while (v67 + 1 < v66);
    }

    else
    {
      bottomAnchor = topAnchor;
    }

    cells2 = [(VehicleColorPicker *)v21 cells];
    lastObject = [cells2 lastObject];

    bottomAnchor2 = [lastObject bottomAnchor];
    bottomAnchor3 = [(VehicleColorPicker *)v21 bottomAnchor];
    v60 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v70 addObject:v60];

    [NSLayoutConstraint activateConstraints:v70];
    indexCopy = v64;
    colorsCopy = v65;
    delegateCopy = v62;
    colorCopy = v63;
  }

  return v21;
}

@end