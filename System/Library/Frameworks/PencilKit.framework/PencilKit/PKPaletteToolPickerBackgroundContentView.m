@interface PKPaletteToolPickerBackgroundContentView
- (PKPaletteToolPickerBackgroundContentView)init;
- (uint64_t)_updateUI;
@end

@implementation PKPaletteToolPickerBackgroundContentView

- (PKPaletteToolPickerBackgroundContentView)init
{
  v58[8] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = PKPaletteToolPickerBackgroundContentView;
  v2 = [(PKPaletteToolPickerBackgroundContentView *)&v56 init];
  if (v2)
  {
    if (_UISolariumEnabled())
    {
      v3 = objc_alloc_init(PKPaletteToolPickerEdgeView);
      topOrLeadingEdgeView = v2->_topOrLeadingEdgeView;
      v2->_topOrLeadingEdgeView = v3;

      [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPaletteToolPickerBackgroundContentView *)v2 addSubview:v2->_topOrLeadingEdgeView];
      v5 = objc_alloc_init(PKPaletteToolPickerEdgeView);
      bottomOrTrailingEdgeView = v2->_bottomOrTrailingEdgeView;
      v2->_bottomOrTrailingEdgeView = v5;

      [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKPaletteToolPickerBackgroundContentView *)v2 addSubview:v2->_bottomOrTrailingEdgeView];
      v54 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView topAnchor];
      v52 = [(PKPaletteToolPickerBackgroundContentView *)v2 topAnchor];
      v50 = [v54 constraintEqualToAnchor:v52];
      v58[0] = v50;
      v48 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView leadingAnchor];
      v46 = [(PKPaletteToolPickerBackgroundContentView *)v2 leadingAnchor];
      v44 = [v48 constraintEqualToAnchor:v46];
      v58[1] = v44;
      v42 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView bottomAnchor];
      v40 = [(PKPaletteToolPickerBackgroundContentView *)v2 bottomAnchor];
      v38 = [v42 constraintEqualToAnchor:v40];
      v58[2] = v38;
      v36 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView widthAnchor];
      v34 = [v36 constraintEqualToConstant:15.0];
      v58[3] = v34;
      v32 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView topAnchor];
      v30 = [(PKPaletteToolPickerBackgroundContentView *)v2 topAnchor];
      v28 = [v32 constraintEqualToAnchor:v30];
      v58[4] = v28;
      v27 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView bottomAnchor];
      v7 = [(PKPaletteToolPickerBackgroundContentView *)v2 bottomAnchor];
      v8 = [v27 constraintEqualToAnchor:v7];
      v58[5] = v8;
      v9 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView trailingAnchor];
      v10 = [(PKPaletteToolPickerBackgroundContentView *)v2 trailingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v58[6] = v11;
      v12 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView widthAnchor];
      v13 = [v12 constraintEqualToConstant:15.0];
      v58[7] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:8];
      horizontalLayoutConstraints = v2->_horizontalLayoutConstraints;
      v2->_horizontalLayoutConstraints = v14;

      v55 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView topAnchor];
      v53 = [(PKPaletteToolPickerBackgroundContentView *)v2 topAnchor];
      v51 = [v55 constraintEqualToAnchor:v53];
      v57[0] = v51;
      v49 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView leadingAnchor];
      v47 = [(PKPaletteToolPickerBackgroundContentView *)v2 leadingAnchor];
      v45 = [v49 constraintEqualToAnchor:v47];
      v57[1] = v45;
      v43 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView trailingAnchor];
      v41 = [(PKPaletteToolPickerBackgroundContentView *)v2 trailingAnchor];
      v39 = [v43 constraintEqualToAnchor:v41];
      v57[2] = v39;
      v37 = [(PKPaletteToolPickerEdgeView *)v2->_topOrLeadingEdgeView heightAnchor];
      v35 = [v37 constraintEqualToConstant:15.0];
      v57[3] = v35;
      v33 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView leadingAnchor];
      v31 = [(PKPaletteToolPickerBackgroundContentView *)v2 leadingAnchor];
      v29 = [v33 constraintEqualToAnchor:v31];
      v57[4] = v29;
      v16 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView bottomAnchor];
      v17 = [(PKPaletteToolPickerBackgroundContentView *)v2 bottomAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v57[5] = v18;
      v19 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView trailingAnchor];
      v20 = [(PKPaletteToolPickerBackgroundContentView *)v2 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v57[6] = v21;
      v22 = [(PKPaletteToolPickerEdgeView *)v2->_bottomOrTrailingEdgeView heightAnchor];
      v23 = [v22 constraintEqualToConstant:15.0];
      v57[7] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:8];
      verticalLayoutConstraints = v2->_verticalLayoutConstraints;
      v2->_verticalLayoutConstraints = v24;
    }

    [(PKPaletteToolPickerBackgroundContentView *)v2 _updateUI];
  }

  return v2;
}

- (uint64_t)_updateUI
{
  if (result)
  {
    v1 = result;
    result = _UISolariumEnabled();
    if ((result & 1) == 0)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:*(v1 + 424)];
      [MEMORY[0x1E696ACD8] deactivateConstraints:*(v1 + 432)];
      v2 = *(v1 + 448);
      v3 = 3;
      if (!v2)
      {
        v3 = 2;
      }

      [MEMORY[0x1E696ACD8] activateConstraints:*(v1 + OBJC_IVAR___PKPaletteToolPickerBackgroundContentView__topOrLeadingEdgeView[v3])];
      v4 = *(v1 + 448);
      v5 = *(v1 + 408);
      if (v5 && *(v5 + 432) != v4)
      {
        *(v5 + 432) = v4;
        [(PKPaletteToolPickerEdgeView *)v5 _updateUI];
        v4 = *(v1 + 448);
      }

      v6 = *(v1 + 416);
      if (v6 && *(v6 + 432) != v4)
      {
        *(v6 + 432) = v4;
        [(PKPaletteToolPickerEdgeView *)v6 _updateUI];
        v4 = *(v1 + 448);
      }

      if (v4 == 1)
      {
        v7 = *(v1 + 440) ^ 1;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v1 + 408);
      v9 = v7 & 1;
      if (v8 && *(v8 + 424) != v9)
      {
        *(v8 + 424) = v9;
        [(PKPaletteToolPickerEdgeView *)v8 _updateUI];
      }

      if (v2)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      v11 = *(v1 + 416);
      if (v11)
      {
        if (*(v11 + 424) == v10 || (*(v11 + 424) = v10, [(PKPaletteToolPickerEdgeView *)v11 _updateUI], (v11 = *(v1 + 416)) != 0))
        {
          v12 = v4 == 1;
          if (*(v11 + 425) != v12)
          {
            *(v11 + 425) = v12;
            [(PKPaletteToolPickerEdgeView *)v11 _updateUI];
          }
        }
      }

      [*(v1 + 408) setHidden:(*(v1 + 441) & 1) == 0];
      v13 = *(v1 + 416);
      v14 = (*(v1 + 442) & 1) == 0;

      return [v13 setHidden:v14];
    }
  }

  return result;
}

@end