@interface ICBrowseAttachmentsBrickCell
- (ICBrowseAttachmentsBrickCell)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setAttachment:(id)a3;
- (void)updateFocusEffect;
@end

@implementation ICBrowseAttachmentsBrickCell

- (ICBrowseAttachmentsBrickCell)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = ICBrowseAttachmentsBrickCell;
  v3 = [(ICBrowseAttachmentsBrickCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[ICAttachmentBrickView alloc] initWithType:4];
    [(ICBrowseAttachmentsBrickCell *)v3 setAttachmentBrickView:v4];

    v5 = [(ICBrowseAttachmentsBrickCell *)v3 attachmentBrickView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(ICBrowseAttachmentsBrickCell *)v3 contentView];
    [v6 addSubview:v5];

    v7 = [(ICBrowseAttachmentsBrickCell *)v3 contentView];
    v17 = @"brick";
    v18 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-0-[brick]-0-|", 0, 0, v8);
    [v7 addConstraints:v9];

    v10 = [(ICBrowseAttachmentsBrickCell *)v3 contentView];
    v15 = @"brick";
    v16 = v5;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-0-[brick]-0-|", 0, 0, v11);
    [v10 addConstraints:v12];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICBrowseAttachmentsBrickCell;
  [(ICBrowseAttachmentsBaseCell *)&v4 prepareForReuse];
  [(ICBrowseAttachmentsBrickCell *)self setAttachment:0];
  v3 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  [v3 prepareForReuse];
}

- (void)setAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = ICBrowseAttachmentsBrickCell;
    [(ICBrowseAttachmentsBaseCell *)&v7 setAttachment:v4];
    v6 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
    [v6 setAttachment:v4];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = [v5 isEqual:self];

  if (v6)
  {

    [(ICBrowseAttachmentsBrickCell *)self updateFocusEffect];
  }
}

- (void)updateFocusEffect
{
  v15 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  [v15 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  v12 = [v11 layer];
  [v12 cornerRadius];
  v14 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v13];
  [(ICBrowseAttachmentsBrickCell *)self setFocusEffect:v14];
}

- (id)accessibilityLabel
{
  v2 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(ICBrowseAttachmentsBrickCell *)self attachmentBrickView];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end