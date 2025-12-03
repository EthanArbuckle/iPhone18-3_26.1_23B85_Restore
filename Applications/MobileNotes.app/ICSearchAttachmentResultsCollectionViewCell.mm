@interface ICSearchAttachmentResultsCollectionViewCell
+ (CGSize)itemSize;
- (ICSearchAttachmentResultsCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setAttachment:(id)attachment searchResult:(id)result;
- (void)setSelected:(BOOL)selected;
- (void)updateTextAndStatus;
- (void)updateThumbnail;
@end

@implementation ICSearchAttachmentResultsCollectionViewCell

- (ICSearchAttachmentResultsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = ICSearchAttachmentResultsCollectionViewCell;
  v3 = [(ICSearchAttachmentResultsCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[ICAttachmentBrickView alloc] initWithType:1];
    attachmentBrickView = v3->_attachmentBrickView;
    v3->_attachmentBrickView = v4;

    contentView = [(ICSearchAttachmentResultsCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_attachmentBrickView];

    [(ICAttachmentBrickView *)v3->_attachmentBrickView ic_addAnchorsToFillSuperview];
    [(ICSearchAttachmentResultsCollectionViewCell *)v3 setAutomaticallyUpdatesBackgroundConfiguration:0];
    v7 = +[UIBackgroundConfiguration clearConfiguration];
    [(ICSearchAttachmentResultsCollectionViewCell *)v3 setBackgroundConfiguration:v7];

    [(ICSearchAttachmentResultsCollectionViewCell *)v3 setFocusEffect:0];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = ICSearchAttachmentResultsCollectionViewCell;
  [(ICSearchAttachmentResultsCollectionViewCell *)&v6 setSelected:?];
  if ([(ICSearchAttachmentResultsCollectionViewCell *)self highlightSelection])
  {
    attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
    [attachmentBrickView setSelected:selectedCopy];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICSearchAttachmentResultsCollectionViewCell;
  [(ICSearchAttachmentResultsCollectionViewCell *)&v4 prepareForReuse];
  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  [attachmentBrickView prepareForReuse];
}

+ (CGSize)itemSize
{
  +[ICAttachmentBrickView defaultBrickSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setAttachment:(id)attachment searchResult:(id)result
{
  resultCopy = result;
  attachmentCopy = attachment;
  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  [attachmentBrickView setAttachment:attachmentCopy];

  highlightPatternRegexFinder = [resultCopy highlightPatternRegexFinder];

  attachmentBrickView2 = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  [attachmentBrickView2 setHighlightPatternRegexFinder:highlightPatternRegexFinder];
}

- (void)updateTextAndStatus
{
  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  [attachmentBrickView reloadData];
}

- (void)updateThumbnail
{
  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  [attachmentBrickView reloadData];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  if ([(ICSearchAttachmentResultsCollectionViewCell *)self isFocused:context]&& ![(ICSearchAttachmentResultsCollectionViewCell *)self highlightSelection])
  {
    v7 = +[UIColor ICTintColor];
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  [attachmentBrickView setHighlightColor:v7];

  if (v5)
  {
  }
}

- (id)accessibilityLabel
{
  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  accessibilityLabel = [attachmentBrickView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  attachmentBrickView = [(ICSearchAttachmentResultsCollectionViewCell *)self attachmentBrickView];
  accessibilityValue = [attachmentBrickView accessibilityValue];

  return accessibilityValue;
}

@end