@interface MKCollectionBatchCell
- (MKCollectionBatchCell)initWithFrame:(CGRect)frame;
- (void)finishedLoadingBatch;
- (void)setupConstraitns;
- (void)setupSubviews;
- (void)startedLoadingBatch;
@end

@implementation MKCollectionBatchCell

- (void)finishedLoadingBatch
{
  if ([(UIActivityIndicatorView *)self->_loadingView isAnimating])
  {
    loadingView = self->_loadingView;

    [(UIActivityIndicatorView *)loadingView stopAnimating];
  }
}

- (void)startedLoadingBatch
{
  if (![(UIActivityIndicatorView *)self->_loadingView isAnimating])
  {
    loadingView = self->_loadingView;

    [(UIActivityIndicatorView *)loadingView startAnimating];
  }
}

- (void)setupConstraitns
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(UIActivityIndicatorView *)self->_loadingView centerXAnchor];
  contentView = [(MKCollectionBatchCell *)self contentView];
  centerXAnchor2 = [contentView centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v13[0] = v7;
  centerYAnchor = [(UIActivityIndicatorView *)self->_loadingView centerYAnchor];
  contentView2 = [(MKCollectionBatchCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v13[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v3 activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingView = self->_loadingView;
  self->_loadingView = v3;

  [(UIActivityIndicatorView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(MKCollectionBatchCell *)self contentView];
  [contentView addSubview:self->_loadingView];

  [(MKCollectionBatchCell *)self setupConstraitns];
}

- (MKCollectionBatchCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKCollectionBatchCell;
  v3 = [(MKCollectionBatchCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKCollectionBatchCell *)v3 setupSubviews];
  }

  return v4;
}

@end