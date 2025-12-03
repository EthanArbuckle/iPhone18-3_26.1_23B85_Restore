@interface ICBrowseAttachmentsBrickCell
- (ICBrowseAttachmentsBrickCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setAttachment:(id)attachment;
- (void)updateFocusEffect;
@end

@implementation ICBrowseAttachmentsBrickCell

- (ICBrowseAttachmentsBrickCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = ICBrowseAttachmentsBrickCell;
  v3 = [(ICBrowseAttachmentsBrickCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[ICAttachmentBrickView alloc] initWithType:4];
    [(ICBrowseAttachmentsBrickCell *)v3 setAttachmentBrickView:v4];

    attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)v3 attachmentBrickView];
    [attachmentBrickView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(ICBrowseAttachmentsBrickCell *)v3 contentView];
    [contentView addSubview:attachmentBrickView];

    contentView2 = [(ICBrowseAttachmentsBrickCell *)v3 contentView];
    v17 = @"brick";
    v18 = attachmentBrickView;
    v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-0-[brick]-0-|", 0, 0, v8);
    [contentView2 addConstraints:v9];

    contentView3 = [(ICBrowseAttachmentsBrickCell *)v3 contentView];
    v15 = @"brick";
    v16 = attachmentBrickView;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0-[brick]-0-|", 0, 0, v11);
    [contentView3 addConstraints:v12];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICBrowseAttachmentsBrickCell;
  [(ICBrowseAttachmentsBaseCell *)&v4 prepareForReuse];
  [(ICBrowseAttachmentsBrickCell *)self setAttachment:0];
  attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  [attachmentBrickView prepareForReuse];
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (attachment != attachmentCopy)
  {
    v7.receiver = self;
    v7.super_class = ICBrowseAttachmentsBrickCell;
    [(ICBrowseAttachmentsBaseCell *)&v7 setAttachment:attachmentCopy];
    attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
    [attachmentBrickView setAttachment:attachmentCopy];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v6 = [nextFocusedItem isEqual:self];

  if (v6)
  {

    [(ICBrowseAttachmentsBrickCell *)self updateFocusEffect];
  }
}

- (void)updateFocusEffect
{
  attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  [attachmentBrickView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  attachmentBrickView2 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  layer = [attachmentBrickView2 layer];
  [layer cornerRadius];
  v14 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v13];
  [(ICBrowseAttachmentsBrickCell *)self setFocusEffect:v14];
}

- (id)accessibilityLabel
{
  attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  accessibilityLabel = [attachmentBrickView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  attachmentBrickView = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  accessibilityValue = [attachmentBrickView accessibilityValue];

  return accessibilityValue;
}

@end