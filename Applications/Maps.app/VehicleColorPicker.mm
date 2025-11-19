@interface VehicleColorPicker
- (NSArray)cells;
- (VehicleColorPicker)initWithColors:(id)a3 colorsPerRow:(unint64_t)a4 colorEdgeInsets:(UIEdgeInsets)a5 selectedIndex:(id)a6 contrastColor:(id)a7 delegate:(id)a8;
- (VehicleColorPickerDelegate)delegate;
- (void)pressedCell:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation VehicleColorPicker

- (VehicleColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = VehicleColorPicker;
  [(VehicleColorPicker *)&v21 traitCollectionDidChange:v4];
  v5 = [(VehicleColorPicker *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(VehicleColorPicker *)self cells];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 colorView];
          v15 = [v14 backgroundColor];
          [v15 _maps_euclideanDistanceFromColor:self->_contrastColor];
          [v13 setNeedsOutlineStroke:v16 < 0.1];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (void)pressedCell:(id)a3
{
  v4 = a3;
  v5 = [(VehicleColorPicker *)self delegate];
  v6 = [(VehicleColorPicker *)self cells];
  [v5 colorPicker:self didSelectIndex:{objc_msgSend(v6, "indexOfObject:", v4)}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(VehicleColorPicker *)self cells];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setActive:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [v4 setActive:1];
}

- (NSArray)cells
{
  cells = self->_cells;
  if (!cells)
  {
    v4 = objc_opt_new();
    v5 = [(VehicleColorPicker *)self colors];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        v11 = [[VehiclePickerButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        v12 = [(VehicleColorPicker *)self colors];
        v13 = [v12 objectAtIndexedSubscript:v7];

        [(VehiclePickerButton *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(VehiclePickerButton *)v11 setAccessibilityIdentifier:@"VehiclePickerButton"];
        v14 = [(VehiclePickerButton *)v11 colorView];
        [v14 setBackgroundColor:v13];

        [(VehiclePickerButton *)v11 setColorViewInsets:self->_colorEdgeInsets.top, self->_colorEdgeInsets.left, self->_colorEdgeInsets.bottom, self->_colorEdgeInsets.right];
        selectedIndex = self->_selectedIndex;
        if (selectedIndex)
        {
          v16 = v7 == [(NSNumber *)selectedIndex unsignedIntegerValue];
        }

        else
        {
          v16 = 0;
        }

        [(VehiclePickerButton *)v11 setActive:v16];
        [v13 _maps_euclideanDistanceFromColor:self->_contrastColor];
        [(VehiclePickerButton *)v11 setNeedsOutlineStroke:v17 < 0.1];
        [(VehiclePickerButton *)v11 addTarget:self action:"pressedCell:" forControlEvents:64];
        [(NSArray *)v4 addObject:v11];

        ++v7;
        v18 = [(VehicleColorPicker *)self colors];
        v19 = [v18 count];
      }

      while (v7 < v19);
    }

    v20 = self->_cells;
    self->_cells = v4;

    cells = self->_cells;
  }

  return cells;
}

- (VehicleColorPicker)initWithColors:(id)a3 colorsPerRow:(unint64_t)a4 colorEdgeInsets:(UIEdgeInsets)a5 selectedIndex:(id)a6 contrastColor:(id)a7 delegate:(id)a8
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v79.receiver = self;
  v79.super_class = VehicleColorPicker;
  v21 = [(VehicleColorPicker *)&v79 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v21)
  {
    v63 = v19;
    v22 = [v17 copy];
    colors = v21->_colors;
    v21->_colors = v22;

    v21->_colorsPerRow = a4;
    v21->_colorEdgeInsets.top = top;
    v21->_colorEdgeInsets.left = left;
    v21->_colorEdgeInsets.bottom = bottom;
    v21->_colorEdgeInsets.right = right;
    objc_storeStrong(&v21->_contrastColor, a7);
    objc_storeWeak(&v21->_delegate, v20);
    v24 = [v18 copy];
    selectedIndex = v21->_selectedIndex;
    v21->_selectedIndex = v24;

    v70 = objc_opt_new();
    v26 = [v17 count];
    v27 = v26;
    if (v26 == v26 / a4 * a4)
    {
      v28 = v26 / a4;
    }

    else
    {
      v28 = v26 / a4 + 1;
    }

    v29 = [(VehicleColorPicker *)v21 topAnchor];
    v30 = v29;
    v65 = v17;
    v66 = v28;
    v64 = v18;
    v62 = v20;
    if (v28)
    {
      v31 = a4;
      v32 = 0;
      v33 = 0;
      do
      {
        v67 = v33;
        if (v32 >= v27)
        {
          v71 = 0;
          v54 = 0;
        }

        else
        {
          v34 = 0;
          v71 = 0;
          v35 = 1;
          v69 = v30;
          while (1)
          {
            v36 = [(VehicleColorPicker *)v21 cells];
            v78 = v32;
            v37 = [v36 objectAtIndexedSubscript:v32];

            [(VehicleColorPicker *)v21 addSubview:v37];
            v77 = v34;
            if (v35 == 1)
            {
              v38 = v37;

              v39 = [v38 leadingAnchor];
              v76 = [(VehicleColorPicker *)v21 leadingAnchor];
              v75 = [v39 constraintEqualToAnchor:?];
              v82[0] = v75;
              v74 = [v38 topAnchor];
              v73 = [v74 constraintEqualToAnchor:v30];
              v82[1] = v73;
              v40 = [v38 widthAnchor];
              v41 = [v38 heightAnchor];
              v72 = v40;
              v42 = [v40 constraintEqualToAnchor:v41];
              v82[2] = v42;
              v43 = [NSArray arrayWithObjects:v82 count:3];
              [v70 addObjectsFromArray:v43];
              v71 = v38;
            }

            else
            {
              v68 = [v37 leadingAnchor];
              v76 = [v68 constraintEqualToAnchor:v34];
              v81[0] = v76;
              v75 = [v37 topAnchor];
              v74 = [v75 constraintEqualToAnchor:v30];
              v81[1] = v74;
              v44 = [v37 widthAnchor];
              v72 = [v71 widthAnchor];
              v73 = v44;
              v41 = [v44 constraintEqualToAnchor:?];
              v81[2] = v41;
              v42 = [v37 heightAnchor];
              v43 = [v71 heightAnchor];
              v45 = [v42 constraintEqualToAnchor:v43];
              v81[3] = v45;
              [NSArray arrayWithObjects:v81 count:4];
              v46 = v27;
              v47 = v31;
              v49 = v48 = v21;
              [v70 addObjectsFromArray:v49];

              v21 = v48;
              v31 = v47;
              v27 = v46;
              v39 = v68;
            }

            if (v31 == v35)
            {
              v50 = [v37 trailingAnchor];
              v51 = [(VehicleColorPicker *)v21 trailingAnchor];
              v52 = [v50 constraintEqualToAnchor:v51];
              v80 = v52;
              v53 = [NSArray arrayWithObjects:&v80 count:1];
              [v70 addObjectsFromArray:v53];
            }

            v54 = [v37 trailingAnchor];

            v32 = v78 + 1;
            if (v35 >= v31)
            {
              break;
            }

            ++v35;
            v34 = v54;
            v30 = v69;
            if (v32 >= v27)
            {
              goto LABEL_19;
            }
          }

          v30 = v69;
        }

LABEL_19:
        v55 = [v71 bottomAnchor];

        v33 = v67 + 1;
        v30 = v55;
      }

      while (v67 + 1 < v66);
    }

    else
    {
      v55 = v29;
    }

    v56 = [(VehicleColorPicker *)v21 cells];
    v57 = [v56 lastObject];

    v58 = [v57 bottomAnchor];
    v59 = [(VehicleColorPicker *)v21 bottomAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    [v70 addObject:v60];

    [NSLayoutConstraint activateConstraints:v70];
    v18 = v64;
    v17 = v65;
    v20 = v62;
    v19 = v63;
  }

  return v21;
}

@end