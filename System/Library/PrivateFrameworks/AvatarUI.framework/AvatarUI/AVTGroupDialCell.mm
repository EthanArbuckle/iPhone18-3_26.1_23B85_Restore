@interface AVTGroupDialCell
- (AVTGroupDialCell)initWithFrame:(CGRect)frame;
- (void)cancelShimmerTimer;
- (void)prepareForReuse;
- (void)setActiveItem:(BOOL)item animated:(BOOL)animated;
- (void)setString:(id)string;
- (void)shimmerOnceWithCompletion:(id)completion;
- (void)startShimmering;
- (void)stopShimmeringAnimated:(BOOL)animated;
@end

@implementation AVTGroupDialCell

- (AVTGroupDialCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVTGroupDialCell;
  v3 = [(AVTGroupDialCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVTGroupDialCell *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTextAlignment:1];
    labelFont = [objc_opt_class() labelFont];
    [(UILabel *)v3->_label setFont:labelFont];

    v8 = +[AVTUIColorRepository groupDialCellTextColor];
    [(UILabel *)v3->_label setTextColor:v8];

    [(UILabel *)v3->_label setAutoresizingMask:18];
    contentView = [(AVTGroupDialCell *)v3 contentView];
    [contentView addSubview:v3->_label];
  }

  return v3;
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = AVTGroupDialCell;
  [(AVTGroupDialCell *)&v9 prepareForReuse];
  labelFont = [objc_opt_class() labelFont];
  label = [(AVTGroupDialCell *)self label];
  [label setFont:labelFont];

  v5 = +[AVTUIColorRepository groupDialCellTextColor];
  label2 = [(AVTGroupDialCell *)self label];
  [label2 setTextColor:v5];

  label3 = [(AVTGroupDialCell *)self label];
  layer = [label3 layer];
  [layer removeAllAnimations];

  [(AVTGroupDialCell *)self cancelShimmerTimer];
}

- (void)setString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_string isEqualToString:?])
  {
    objc_storeStrong(&self->_string, string);
    label = [(AVTGroupDialCell *)self label];
    [label setText:stringCopy];
  }
}

- (void)setActiveItem:(BOOL)item animated:(BOOL)animated
{
  animatedCopy = animated;
  [(AVTGroupDialCell *)self cancelShimmerTimer];
  label = [(AVTGroupDialCell *)self label];
  layer = [label layer];
  [layer removeAllAnimations];

  v9 = MEMORY[0x1E69DD250];
  label2 = [(AVTGroupDialCell *)self label];
  v11 = 0.2;
  v12[1] = 3221225472;
  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __43__AVTGroupDialCell_setActiveItem_animated___block_invoke;
  v12[3] = &unk_1E7F3B910;
  if (!animatedCopy)
  {
    v11 = 0.0;
  }

  v12[4] = self;
  itemCopy = item;
  [v9 transitionWithView:label2 duration:5242880 options:v12 animations:0 completion:v11];
}

void __43__AVTGroupDialCell_setActiveItem_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_opt_class();
  if (v2 == 1)
  {
    [v3 boldLabelFont];
  }

  else
  {
    [v3 labelFont];
  }
  v4 = ;
  v5 = [*(a1 + 32) label];
  [v5 setFont:v4];

  if (*(a1 + 40) == 1)
  {
    +[AVTUIColorRepository groupDialCellSelectedTextColor];
  }

  else
  {
    +[AVTUIColorRepository groupDialCellTextColor];
  }
  v7 = ;
  v6 = [*(a1 + 32) label];
  [v6 setTextColor:v7];
}

- (void)stopShimmeringAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(AVTGroupDialCell *)self cancelShimmerTimer];
  v5 = MEMORY[0x1E69DD250];
  label = [(AVTGroupDialCell *)self label];
  v7 = 0.0;
  if (animatedCopy)
  {
    v7 = 1.0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__AVTGroupDialCell_stopShimmeringAnimated___block_invoke;
  v9[3] = &unk_1E7F3A9B8;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AVTGroupDialCell_stopShimmeringAnimated___block_invoke_2;
  v8[3] = &unk_1E7F3AA80;
  v8[4] = self;
  [v5 transitionWithView:label duration:5242884 options:v9 animations:v8 completion:v7];
}

void __43__AVTGroupDialCell_stopShimmeringAnimated___block_invoke(uint64_t a1)
{
  v3 = +[AVTUIColorRepository groupDialCellTextColor];
  v2 = [*(a1 + 32) label];
  [v2 setTextColor:v3];
}

void __43__AVTGroupDialCell_stopShimmeringAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) label];
  v1 = [v2 layer];
  [v1 removeAllAnimations];
}

- (void)startShimmering
{
  [(AVTGroupDialCell *)self cancelShimmerTimer];
  label = [(AVTGroupDialCell *)self label];
  layer = [label layer];
  [layer removeAllAnimations];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AVTGroupDialCell_startShimmering__block_invoke;
  v5[3] = &unk_1E7F3AA80;
  v5[4] = self;
  [(AVTGroupDialCell *)self shimmerOnceWithCompletion:v5];
}

uint64_t __35__AVTGroupDialCell_startShimmering__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__AVTGroupDialCell_startShimmering__block_invoke_2;
    v3[3] = &unk_1E7F3AA80;
    v3[4] = v2;
    return [v2 shimmerOnceWithCompletion:v3];
  }

  return result;
}

uint64_t __35__AVTGroupDialCell_startShimmering__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__AVTGroupDialCell_startShimmering__block_invoke_3;
    v3[3] = &unk_1E7F3AA80;
    v3[4] = v2;
    return [v2 shimmerOnceWithCompletion:v3];
  }

  return result;
}

void __35__AVTGroupDialCell_startShimmering__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = MEMORY[0x1E695DFF0];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __35__AVTGroupDialCell_startShimmering__block_invoke_4;
    v8 = &unk_1E7F3B938;
    objc_copyWeak(&v9, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v5 block:8.0];
    [*(a1 + 32) setShimmerTimer:{v4, v5, v6, v7, v8}];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __35__AVTGroupDialCell_startShimmering__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startShimmering];
}

- (void)cancelShimmerTimer
{
  shimmerTimer = [(AVTGroupDialCell *)self shimmerTimer];
  [shimmerTimer invalidate];

  [(AVTGroupDialCell *)self setShimmerTimer:0];
}

- (void)shimmerOnceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69DD250];
  label = [(AVTGroupDialCell *)self label];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__AVTGroupDialCell_shimmerOnceWithCompletion___block_invoke;
  v10[3] = &unk_1E7F3A9B8;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AVTGroupDialCell_shimmerOnceWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7F3B960;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 transitionWithView:label duration:5242884 options:v10 animations:v8 completion:1.0];
}

void __46__AVTGroupDialCell_shimmerOnceWithCompletion___block_invoke(uint64_t a1)
{
  v3 = +[AVTUIColorRepository groupDialCellShimmeringTextColor];
  v2 = [*(a1 + 32) label];
  [v2 setTextColor:v3];
}

void __46__AVTGroupDialCell_shimmerOnceWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69DD250];
    v4 = [*(a1 + 32) label];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__AVTGroupDialCell_shimmerOnceWithCompletion___block_invoke_3;
    v6[3] = &unk_1E7F3A9B8;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    [v3 transitionWithView:v4 duration:5242884 options:v6 animations:v5 completion:1.0];
  }
}

void __46__AVTGroupDialCell_shimmerOnceWithCompletion___block_invoke_3(uint64_t a1)
{
  v3 = +[AVTUIColorRepository groupDialCellTextColor];
  v2 = [*(a1 + 32) label];
  [v2 setTextColor:v3];
}

@end