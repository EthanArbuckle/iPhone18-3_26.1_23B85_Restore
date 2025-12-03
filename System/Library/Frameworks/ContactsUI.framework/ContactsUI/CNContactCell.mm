@interface CNContactCell
- (BOOL)hasGapBetweenSeparatorAndTrailingEdge;
- (CNContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSArray)constantConstraints;
- (void)_setAnimating:(BOOL)animating clippingAdjacentCells:(BOOL)cells;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation CNContactCell

- (void)_setAnimating:(BOOL)animating clippingAdjacentCells:(BOOL)cells
{
  cellsCopy = cells;
  animatingCopy = animating;
  layer = [(CNContactCell *)self layer];
  allowsGroupBlending = [layer allowsGroupBlending];

  if (_setAnimating_clippingAdjacentCells__onceToken != -1)
  {
    dispatch_once(&_setAnimating_clippingAdjacentCells__onceToken, &__block_literal_global_7791);
  }

  if (_setAnimating_clippingAdjacentCells__respondsToSelector == 1)
  {
    v10.receiver = self;
    v10.super_class = CNContactCell;
    [(CNContactCell *)&v10 _setAnimating:animatingCopy clippingAdjacentCells:cellsCopy];
  }

  layer2 = [(CNContactCell *)self layer];
  [layer2 setAllowsGroupBlending:allowsGroupBlending];
}

uint64_t __53__CNContactCell__setAnimating_clippingAdjacentCells___block_invoke()
{
  result = [MEMORY[0x1E69DD028] instancesRespondToSelector:sel__setAnimating_clippingAdjacentCells_];
  _setAnimating_clippingAdjacentCells__respondsToSelector = result;
  return result;
}

- (void)contentSizeCategoryDidChange:(id)change
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constantConstraints];
    constantConstraints = self->_constantConstraints;
    self->_constantConstraints = 0;
  }

  [(CNContactCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  kdebug_trace();
  v7.receiver = self;
  v7.super_class = CNContactCell;
  [(CNContactCell *)&v7 updateConstraints];
  if (self->_variableConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  if (!self->_constantConstraints)
  {
    constantConstraints = [(CNContactCell *)self constantConstraints];
    constantConstraints = self->_constantConstraints;
    self->_constantConstraints = constantConstraints;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constantConstraints];
  }

  variableConstraints = [(CNContactCell *)self variableConstraints];
  variableConstraints = self->_variableConstraints;
  self->_variableConstraints = variableConstraints;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_variableConstraints];
  kdebug_trace();
}

- (NSArray)constantConstraints
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(CNContactCell *)self minCellHeight];
  if (v3 <= 0.0)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    v4 = MEMORY[0x1E696ACD8];
    contentView = [(CNContactCell *)self contentView];
    [(CNContactCell *)self minCellHeight];
    v7 = [v4 constraintWithItem:contentView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:0.0 constant:v6];

    LODWORD(v8) = 1148829696;
    [v7 setPriority:v8];
    v11[0] = v7;
    array = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  return array;
}

- (BOOL)hasGapBetweenSeparatorAndTrailingEdge
{
  if ([(CNContactCell *)self separatorStyle]!= 1)
  {
    return 0;
  }

  traitCollection = [(CNContactCell *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    [(CNContactCell *)self _separatorFrame];
    MinX = CGRectGetMinX(v9);
  }

  else
  {
    [(CNContactCell *)self bounds];
    v8 = v7;
    [(CNContactCell *)self _separatorFrame];
    MinX = v8 - CGRectGetMaxX(v10);
  }

  return MinX >= 1.0;
}

- (void)prepareForReuse
{
  [(CNContactCell *)self setCardGroupItem:0];
  v3.receiver = self;
  v3.super_class = CNContactCell;
  [(CNContactCell *)&v3 prepareForReuse];
}

- (void)dealloc
{
  contentView = [(CNContactCell *)self contentView];
  constraints = [contentView constraints];
  v5 = [constraints mutableCopy];

  [v5 addObjectsFromArray:self->_constantConstraints];
  [v5 addObjectsFromArray:self->_variableConstraints];
  [(CNContactCell *)self setCardGroupItem:0];

  v6.receiver = self;
  v6.super_class = CNContactCell;
  [(CNContactCell *)&v6 dealloc];
}

- (CNContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CNContactCell;
  v4 = [(CNContactCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  [(CNContactCell *)v4 setNeedsUpdateConstraints];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v4;
}

@end