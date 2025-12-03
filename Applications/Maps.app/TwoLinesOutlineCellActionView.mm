@interface TwoLinesOutlineCellActionView
- (TwoLinesOutlineCell)outlineCell;
- (TwoLinesOutlineCellActionView)initWithFrame:(CGRect)frame twoLinesOutlineCell:(id)cell;
- (void)_buttonTapped:(id)tapped;
- (void)_updateConstraintsWithAxis:(int64_t)axis;
- (void)_updateFromModel;
- (void)layoutSubviews;
- (void)setViewModel:(id)model;
@end

@implementation TwoLinesOutlineCellActionView

- (TwoLinesOutlineCell)outlineCell
{
  WeakRetained = objc_loadWeakRetained(&self->_outlineCell);

  return WeakRetained;
}

- (void)_buttonTapped:(id)tapped
{
  viewModel = self->_viewModel;
  tappedCopy = tapped;
  delegate = [(TwoLinesOutlineCellActionModel *)viewModel delegate];
  WeakRetained = objc_loadWeakRetained(&self->_outlineCell);
  v7 = self->_button1 != tappedCopy;

  [delegate twoLinesOutlineCell:WeakRetained tappedActionButtonAtIndex:v7];
}

- (void)_updateFromModel
{
  button1 = self->_button1;
  buttonTitle1 = [(TwoLinesOutlineCellActionModel *)self->_viewModel buttonTitle1];
  [(UIButton *)button1 setTitle:buttonTitle1 forState:0];

  button2 = self->_button2;
  buttonTitle2 = [(TwoLinesOutlineCellActionModel *)self->_viewModel buttonTitle2];
  [(UIButton *)button2 setTitle:buttonTitle2 forState:0];

  [(TwoLinesOutlineCellActionView *)self setNeedsLayout];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(TwoLinesOutlineCellActionModel *)viewModel isEqual:modelCopy];
    modelCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewModel, model);
      [(TwoLinesOutlineCellActionView *)self _updateFromModel];
      modelCopy = v8;
    }
  }
}

- (void)layoutSubviews
{
  [(UIButton *)self->_button1 intrinsicContentSize];
  v4 = v3;
  [(UIButton *)self->_button2 intrinsicContentSize];
  v6 = v4 + 10.0 + v5;
  [(TwoLinesOutlineCellActionView *)self bounds];
  [(TwoLinesOutlineCellActionView *)self _updateConstraintsWithAxis:v6 > v7];
  v8.receiver = self;
  v8.super_class = TwoLinesOutlineCellActionView;
  [(TwoLinesOutlineCellActionView *)&v8 layoutSubviews];
}

- (void)_updateConstraintsWithAxis:(int64_t)axis
{
  constraints = self->_constraints;
  if (!constraints || self->_axis != axis)
  {
    if ([(NSArray *)constraints count])
    {
      [NSLayoutConstraint deactivateConstraints:self->_constraints];
    }

    self->_axis = axis;
    topAnchor = [(UIButton *)self->_button1 topAnchor];
    topAnchor2 = [(TwoLinesOutlineCellActionView *)self topAnchor];
    v44 = topAnchor;
    v7 = [topAnchor constraintEqualToAnchor:?];
    v42 = v7;
    if (axis == 1)
    {
      v46[0] = v7;
      topAnchor3 = [(UIButton *)self->_button2 topAnchor];
      bottomAnchor = [(UIButton *)self->_button1 bottomAnchor];
      v41 = topAnchor3;
      v39 = [topAnchor3 constraintEqualToAnchor:8.0 constant:?];
      v46[1] = v39;
      bottomAnchor2 = [(UIButton *)self->_button2 bottomAnchor];
      bottomAnchor3 = [(TwoLinesOutlineCellActionView *)self bottomAnchor];
      v38 = bottomAnchor2;
      v36 = [bottomAnchor2 constraintEqualToAnchor:?];
      v46[2] = v36;
      leadingAnchor = [(UIButton *)self->_button1 leadingAnchor];
      leadingAnchor2 = [(TwoLinesOutlineCellActionView *)self leadingAnchor];
      v35 = leadingAnchor;
      v33 = [leadingAnchor constraintEqualToAnchor:?];
      v46[3] = v33;
      trailingAnchor = [(UIButton *)self->_button1 trailingAnchor];
      trailingAnchor2 = [(TwoLinesOutlineCellActionView *)self trailingAnchor];
      v31 = [trailingAnchor constraintEqualToAnchor:-8.0 constant:?];
      v46[4] = v31;
      leadingAnchor3 = [(UIButton *)self->_button2 leadingAnchor];
      leadingAnchor4 = [(TwoLinesOutlineCellActionView *)self leadingAnchor];
      v30 = leadingAnchor3;
      v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v46[5] = v14;
      trailingAnchor3 = [(UIButton *)self->_button2 trailingAnchor];
      trailingAnchor4 = [(TwoLinesOutlineCellActionView *)self trailingAnchor];
      v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
      v46[6] = v17;
      v18 = [NSArray arrayWithObjects:v46 count:7];
      widthAnchor = self->_constraints;
      self->_constraints = v18;
    }

    else
    {
      v45[0] = v7;
      bottomAnchor4 = [(UIButton *)self->_button1 bottomAnchor];
      bottomAnchor = [(TwoLinesOutlineCellActionView *)self bottomAnchor];
      v41 = bottomAnchor4;
      v39 = [bottomAnchor4 constraintEqualToAnchor:?];
      v45[1] = v39;
      topAnchor4 = [(UIButton *)self->_button2 topAnchor];
      bottomAnchor3 = [(TwoLinesOutlineCellActionView *)self topAnchor];
      v38 = topAnchor4;
      v36 = [topAnchor4 constraintEqualToAnchor:?];
      v45[2] = v36;
      bottomAnchor5 = [(UIButton *)self->_button2 bottomAnchor];
      leadingAnchor2 = [(TwoLinesOutlineCellActionView *)self bottomAnchor];
      v35 = bottomAnchor5;
      v33 = [bottomAnchor5 constraintEqualToAnchor:?];
      v45[3] = v33;
      leadingAnchor5 = [(UIButton *)self->_button1 leadingAnchor];
      trailingAnchor2 = [(TwoLinesOutlineCellActionView *)self leadingAnchor];
      v31 = [leadingAnchor5 constraintEqualToAnchor:?];
      v45[4] = v31;
      leadingAnchor6 = [(UIButton *)self->_button2 leadingAnchor];
      leadingAnchor4 = [(UIButton *)self->_button1 trailingAnchor];
      v30 = leadingAnchor6;
      v14 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
      v45[5] = v14;
      trailingAnchor3 = [(UIButton *)self->_button2 trailingAnchor];
      trailingAnchor4 = [(TwoLinesOutlineCellActionView *)self trailingAnchor];
      v17 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-8.0];
      v45[6] = v17;
      widthAnchor = [(UIButton *)self->_button2 widthAnchor];
      widthAnchor2 = [(UIButton *)self->_button1 widthAnchor];
      LODWORD(v25) = 1132134400;
      v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 priority:v25];
      v45[7] = v26;
      v27 = [NSArray arrayWithObjects:v45 count:8];
      v28 = self->_constraints;
      self->_constraints = v27;

      trailingAnchor = leadingAnchor5;
    }

    [NSLayoutConstraint activateConstraints:self->_constraints];
  }
}

- (TwoLinesOutlineCellActionView)initWithFrame:(CGRect)frame twoLinesOutlineCell:(id)cell
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  cellCopy = cell;
  v17.receiver = self;
  v17.super_class = TwoLinesOutlineCellActionView;
  height = [(TwoLinesOutlineCellActionView *)&v17 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_outlineCell, cellCopy);
    v12 = [UIButton buttonWithType:1];
    button1 = v11->_button1;
    v11->_button1 = v12;

    [(UIButton *)v11->_button1 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v11->_button1 addTarget:v11 action:"_buttonTapped:" forControlEvents:64];
    [(TwoLinesOutlineCellActionView *)v11 addSubview:v11->_button1];
    v14 = [UIButton buttonWithType:1];
    button2 = v11->_button2;
    v11->_button2 = v14;

    [(UIButton *)v11->_button2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v11->_button2 addTarget:v11 action:"_buttonTapped:" forControlEvents:64];
    [(TwoLinesOutlineCellActionView *)v11 addSubview:v11->_button2];
    [(TwoLinesOutlineCellActionView *)v11 _updateConstraintsWithAxis:v11->_axis];
  }

  return v11;
}

@end