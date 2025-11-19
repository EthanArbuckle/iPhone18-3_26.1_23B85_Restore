@interface EKUIDividedGridViewController
+ (id)dividerColor;
- (CGSize)intrinsicContentSize;
- (EKUIDividedGridViewController)initWithType:(int64_t)a3 buttonTitles:(id)a4 cellBackgroundColor:(id)a5;
- (EKUIDividedGridViewControllerDelegate)delegate;
- (double)_neededHeight;
- (id)_newDividerView;
- (void)cellTapped:(id)a3;
- (void)loadView;
- (void)setPreferredWidth:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation EKUIDividedGridViewController

+ (id)dividerColor
{
  if (dividerColor_onceToken != -1)
  {
    +[EKUIDividedGridViewController dividerColor];
  }

  v3 = dividerColor___dividerColor;

  return v3;
}

void __45__EKUIDividedGridViewController_dividerColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] separatorColor];
  v1 = dividerColor___dividerColor;
  dividerColor___dividerColor = v0;
}

- (EKUIDividedGridViewController)initWithType:(int64_t)a3 buttonTitles:(id)a4 cellBackgroundColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EKUIDividedGridViewController;
  v11 = [(EKUIDividedGridViewController *)&v14 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_buttonTitles, a4);
    objc_storeStrong(&v12->_cellBackgroundColor, a5);
  }

  return v12;
}

- (void)loadView
{
  v2 = self;
  v97[1] = *MEMORY[0x1E69E9840];
  type = self->_type;
  v4 = 7;
  if (type != 1)
  {
    v4 = 0;
  }

  v5 = type == 0;
  v6 = 4;
  if (!v5)
  {
    v6 = v4;
  }

  v83 = v6;
  v81 = objc_opt_new();
  v80 = objc_opt_new();
  v96 = @"dividerWidth";
  v7 = MEMORY[0x1E696AD98];
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v10 = [v7 numberWithDouble:1.0 / v9];
  v97[0] = v10;
  v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];

  v11 = [(EKUIDividedGridViewController *)v2 buttonTitles];
  v12 = [v11 count];

  v13 = 0x1E696A000uLL;
  v89 = v2;
  if (v12)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = [(EKUIDividedGridViewController *)v2 buttonTitles];
      v82 = [v18 count];

      if (!(v17 % v83))
      {
        v19 = objc_opt_new();

        v20 = objc_opt_new();
        [v80 addObject:v19];
        v15 = v20;
        v14 = v19;
      }

      v85 = v14;
      v21 = [EKUIDividedGridViewCell alloc];
      v22 = v21;
      firstValue = v16;
      if (v2->_cellBackgroundColor)
      {
        v23 = [(EKUIDividedGridViewCell *)v21 initWithBackgroundColor:?];
      }

      else
      {
        v24 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
        v23 = [(EKUIDividedGridViewCell *)v22 initWithBackgroundColor:v24];
      }

      v25 = v17 + 1;
      [(EKUIDividedGridViewCell *)v23 setViewController:v2];
      [(EKUIDividedGridViewCell *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      v26 = [(EKUIDividedGridViewController *)v2 buttonTitles];
      v27 = [v26 objectAtIndexedSubscript:v17];
      [(EKUIDividedGridViewCell *)v23 label];
      v29 = v28 = v2;
      [v29 setText:v27];

      [v81 addObject:v23];
      v14 = v85;
      [v85 addSubview:v23];
      v30 = [MEMORY[0x1E696ACD8] constraintWithItem:v23 attribute:8 relatedBy:0 toItem:v85 attribute:8 multiplier:1.0 constant:0.0];
      [v15 addObject:v30];

      v31 = [MEMORY[0x1E696ACD8] constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v85 attribute:3 multiplier:1.0 constant:0.0];
      [v15 addObject:v31];

      v32 = [MEMORY[0x1E696ACD8] constraintWithItem:v23 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [(EKUIDividedGridViewCell *)v23 setWidthConstraint:v32];

      v33 = [(EKUIDividedGridViewCell *)v23 widthConstraint];
      LODWORD(v34) = 1148846080;
      [v33 setPriority:v34];

      v35 = [(EKUIDividedGridViewCell *)v23 widthConstraint];
      [v85 addConstraint:v35];

      if (!(v17 % v83))
      {
        break;
      }

      v36 = v25 % v83;
      v37 = [(EKUIDividedGridViewController *)v28 _newDividerView];
      [v85 addSubview:v37];
      v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v37 attribute:8 relatedBy:0 toItem:v85 attribute:8 multiplier:1.0 constant:0.0];
      [v15 addObject:v38];

      v39 = MEMORY[0x1E696ACD8];
      v40 = firstValue;
      v41 = _NSDictionaryOfVariableBindings(&cfstr_Previousbutton.isa, firstValue, v37, v23, 0);
      v42 = [v39 constraintsWithVisualFormat:@"H:[previousButton][dividerView(==dividerWidth)][buttonView]" options:1024 metrics:v90 views:v41];
      [v15 addObjectsFromArray:v42];

      if (v17 == v82 - 1 && v36)
      {
        v43 = [(EKUIDividedGridViewController *)v89 _newDividerView];
        [v85 addSubview:v43];
        v44 = [MEMORY[0x1E696ACD8] constraintWithItem:v43 attribute:8 relatedBy:0 toItem:v85 attribute:8 multiplier:1.0 constant:0.0];
        [v15 addObject:v44];

        v45 = MEMORY[0x1E696ACD8];
        v46 = _NSDictionaryOfVariableBindings(&cfstr_ButtonviewEndo.isa, v23, v43, 0);
        v47 = [v45 constraintsWithVisualFormat:@"H:[buttonView][endOfWeekDivider(==dividerWidth)]|" options:1024 metrics:v90 views:v46];
        [v15 addObjectsFromArray:v47];

        goto LABEL_19;
      }

      v14 = v85;
      if (!v36)
      {
        v49 = MEMORY[0x1E696ACD8];
        v43 = _NSDictionaryOfVariableBindings(&cfstr_Previousbutton.isa, firstValue, v37, v23, 0);
        v46 = [v49 constraintsWithVisualFormat:@"H:[buttonView]|" options:1024 metrics:v90 views:v43];
        [v15 addObjectsFromArray:v46];
LABEL_19:

        v14 = v85;
LABEL_20:
      }

      v2 = v89;

      v50 = [v14 buttonViews];
      [v50 addObject:v23];

      [v14 addConstraints:v15];
      v51 = [(EKUIDividedGridViewController *)v89 buttonTitles];
      v52 = [v51 count];

      v16 = v23;
      ++v17;
      v53 = v25 >= v52;
      v13 = 0x1E696A000;
      if (v53)
      {

        goto LABEL_25;
      }
    }

    v48 = MEMORY[0x1E696ACD8];
    v37 = _NSDictionaryOfVariableBindings(&cfstr_Buttonview.isa, v23, 0);
    v43 = [v48 constraintsWithVisualFormat:@"H:|[buttonView]" options:1024 metrics:v90 views:v37];
    [v15 addObjectsFromArray:v43];
    v40 = firstValue;
    goto LABEL_20;
  }

  v15 = 0;
  v14 = 0;
LABEL_25:
  v84 = v15;
  v86 = v14;
  v54 = objc_opt_new();
  [v54 setViewController:v2];
  v55 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  firstValuea = v80;
  v56 = [firstValuea countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = 0;
    v59 = *v92;
    do
    {
      v60 = 0;
      v61 = v58;
      do
      {
        if (*v92 != v59)
        {
          objc_enumerationMutation(firstValuea);
        }

        v62 = *(*(&v91 + 1) + 8 * v60);
        [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
        v63 = [*(v13 + 3288) constraintWithItem:v62 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:43.5];
        [v62 setHeightConstraint:v63];

        v64 = [v62 heightConstraint];
        [v62 addConstraint:v64];

        [v54 addSubview:v62];
        v65 = *(v13 + 3288);
        v66 = _NSDictionaryOfVariableBindings(&cfstr_Weekview.isa, v62, 0);
        v67 = [v65 constraintsWithVisualFormat:@"H:|[weekView]" options:0 metrics:0 views:v66];
        [v55 addObjectsFromArray:v67];

        v68 = [*(v13 + 3288) constraintWithItem:v54 attribute:7 relatedBy:1 toItem:v62 attribute:7 multiplier:1.0 constant:0.0];
        [v55 addObject:v68];

        if (v61)
        {
          v69 = [(EKUIDividedGridViewController *)v89 _newDividerView];
          [v54 addSubview:v69];
          v70 = *(v13 + 3288);
          v71 = _NSDictionaryOfVariableBindings(&cfstr_Dividerview.isa, v69, 0);
          v72 = [v70 constraintsWithVisualFormat:@"H:|[dividerView]|" options:0 metrics:0 views:v71];
          [v55 addObjectsFromArray:v72];

          v73 = MEMORY[0x1E696ACD8];
          v74 = _NSDictionaryOfVariableBindings(&cfstr_PreviousviewWe.isa, v61, v62, v69, 0);
          v75 = [v73 constraintsWithVisualFormat:@"V:[previousView][dividerView(==dividerWidth)][weekView]" options:0 metrics:v90 views:v74];
          [v55 addObjectsFromArray:v75];

          v13 = 0x1E696A000;
        }

        v58 = v62;

        ++v60;
        v61 = v58;
      }

      while (v57 != v60);
      v57 = [firstValuea countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v57);
  }

  else
  {
    v58 = 0;
  }

  v76 = *(v13 + 3288);
  v77 = [firstValuea objectAtIndexedSubscript:0];
  v78 = [v76 constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v77 attribute:3 multiplier:1.0 constant:0.0];
  [v55 addObject:v78];

  v79 = [*(v13 + 3288) constraintWithItem:v54 attribute:4 relatedBy:0 toItem:v58 attribute:4 multiplier:1.0 constant:0.0];
  [v55 addObject:v79];

  [v54 addConstraints:v55];
  [(EKUIDividedGridViewController *)v89 setView:v54];
  [(EKUIDividedGridViewController *)v89 setAllCells:v81];
  [(EKUIDividedGridViewController *)v89 setWeekViews:firstValuea];
}

- (id)_newDividerView
{
  v2 = objc_opt_new();
  v3 = +[EKUIDividedGridViewController dividerColor];
  [v2 setBackgroundColor:v3];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

- (void)cellTapped:(id)a3
{
  v4 = a3;
  v6 = [(EKUIDividedGridViewController *)self delegate];
  v5 = [(EKUIDividedGridViewController *)self allCells];
  [v6 dividedGridViewController:self didSelectCell:v4 atIndex:{objc_msgSend(v5, "indexOfObject:", v4)}];
}

- (void)viewWillLayoutSubviews
{
  v56 = *MEMORY[0x1E69E9840];
  [(EKUIDividedGridViewController *)self preferredWidth];
  v4 = v3;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  type = self->_type;
  if (type == 1)
  {
    v9 = v4 + v7 * -6.0;
    v10 = 7.0;
  }

  else if (type)
  {
    v10 = 0.0;
    v9 = v4;
  }

  else
  {
    v9 = v4 + v7 * -3.0;
    v10 = 4.0;
  }

  [(EKUIDividedGridViewController *)self preferredInset];
  v12 = (v4 - v11) / v10;
  v13 = CalFloorToScreenScale(v12);
  v14 = CalCeilToScreenScale(v12);
  v15 = objc_opt_new();
  if (v10 > 0.0)
  {
    v16 = 1;
    do
    {
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [v15 addObject:v17];

      v18 = v16++;
    }

    while (v10 > v18);
  }

  v19 = [v15 valueForKeyPath:@"@sum.self"];
  [v19 doubleValue];
  v21 = v20;

  if (v21 < v9)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v10 + -1.0);
    do
    {
      if (v10 <= v23 || v24 < 1 || v23 >= v24)
      {
        break;
      }

      v27 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      if (v22)
      {
        [v15 setObject:v27 atIndexedSubscript:v23];

        ++v23;
      }

      else
      {
        [v15 setObject:v27 atIndexedSubscript:v24];

        --v24;
      }

      v22 ^= 1u;
      v28 = [v15 valueForKeyPath:@"@sum.self"];
      [v28 doubleValue];
      v30 = v29;
    }

    while (v30 < v9);
  }

  [(EKUIDividedGridViewController *)self _rowHeightForWidth:v14];
  v32 = v31;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = [(EKUIDividedGridViewController *)self weekViews];
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v52;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v51 + 1) + 8 * i);
        v39 = [v38 buttonViews];
        v40 = [v39 count];

        if (v40)
        {
          v41 = 0;
          do
          {
            v42 = [v38 buttonViews];
            v43 = [v42 objectAtIndexedSubscript:v41];

            v44 = [v15 objectAtIndexedSubscript:v41];
            [v44 doubleValue];
            v46 = v45;
            v47 = [v43 widthConstraint];
            [v47 setConstant:v46];

            ++v41;
            v48 = [v38 buttonViews];
            v49 = [v48 count];
          }

          while (v49 > v41);
        }

        v50 = [v38 heightConstraint];
        [v50 setConstant:v32];
      }

      v35 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v35);
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(EKUIDividedGridViewController *)self delegate];
  [v3 dividedGridViewControllerDidLayout:self];
}

- (double)_neededHeight
{
  v3 = [(EKUIDividedGridViewController *)self weekViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = v4;
    v6 = [(EKUIDividedGridViewController *)self weekViews];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 heightConstraint];
    [v8 constant];
    v10 = v9;
    v11 = (v4 + 1);
    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 scale];
    v14 = 1.0 / v13 * v11 + v5 * v10;
  }

  else
  {
    [(EKUIDividedGridViewController *)self preferredWidth];
    v16 = v15;
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v14 = v16 + 1.0 / v17 * 2.0;
  }

  return v14;
}

- (CGSize)intrinsicContentSize
{
  [(EKUIDividedGridViewController *)self preferredWidth];
  v4 = v3;
  [(EKUIDividedGridViewController *)self _neededHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setPreferredWidth:(double)a3
{
  if (self->_preferredWidth != a3)
  {
    self->_preferredWidth = a3;
    v5 = [(EKUIDividedGridViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(EKUIDividedGridViewController *)self view];
    [v6 invalidateIntrinsicContentSize];
  }
}

- (EKUIDividedGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end