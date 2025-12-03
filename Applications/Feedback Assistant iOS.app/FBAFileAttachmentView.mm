@interface FBAFileAttachmentView
- (FBAFileAttachmentView)initWithFileName:(id)name requirement:(id)requirement font:(id)font textColor:(id)color;
- (void)initializeWithFileName:(id)name requirement:(id)requirement font:(id)font textColor:(id)color;
@end

@implementation FBAFileAttachmentView

- (FBAFileAttachmentView)initWithFileName:(id)name requirement:(id)requirement font:(id)font textColor:(id)color
{
  nameCopy = name;
  requirementCopy = requirement;
  fontCopy = font;
  colorCopy = color;
  v17.receiver = self;
  v17.super_class = FBAFileAttachmentView;
  v14 = [(FBAFileAttachmentView *)&v17 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v15 = v14;
  if (v14)
  {
    [(FBAFileAttachmentView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FBAFileAttachmentView *)v15 initializeWithFileName:nameCopy requirement:requirementCopy font:fontCopy textColor:colorCopy];
  }

  return v15;
}

- (void)initializeWithFileName:(id)name requirement:(id)requirement font:(id)font textColor:(id)color
{
  nameCopy = name;
  requirementCopy = requirement;
  fontCopy = font;
  colorCopy = color;
  v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setFont:fontCopy];
  [v14 setTextColor:colorCopy];

  [(FBAFileAttachmentView *)self addSubview:v14];
  [v14 setText:nameCopy];
  v34 = requirementCopy;
  if (nameCopy)
  {
    iconForRequirement = [FBKFileMatcher iconForFileName:nameCopy];
  }

  else
  {
    if (!requirementCopy)
    {
      v16 = 0;
      goto LABEL_6;
    }

    iconForRequirement = [requirementCopy iconForRequirement];
  }

  v16 = iconForRequirement;
LABEL_6:
  v17 = [[UIImageView alloc] initWithImage:v16];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(FBAFileAttachmentView *)self addSubview:v17];
  v18 = _NSDictionaryOfVariableBindings(@"answerLabel, icon", v14, v17, 0);
  v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[icon]-(8)-[answerLabel]|", 0, 0, v18);
  [(FBAFileAttachmentView *)self addConstraints:v19];

  v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[answerLabel]|" options:0 metrics:0 views:v18];
  [(FBAFileAttachmentView *)self addConstraints:v20];

  v21 = [NSLayoutConstraint constraintWithItem:self attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
  [(FBAFileAttachmentView *)self addConstraint:v21];

  [v16 size];
  v23 = v22;
  [v16 size];
  v25 = v23 / v24;
  [fontCopy pointSize];
  v27 = v26 * 1.1 * v25;
  v37 = @"height";
  v28 = [NSNumber numberWithDouble:?];
  v38 = v28;
  v29 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[icon(height)]" options:0 metrics:v29 views:v18];
  [v17 addConstraints:v30];

  v35 = @"width";
  v31 = [NSNumber numberWithDouble:v27];
  v36 = v31;
  v32 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v33 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[icon(width)]" options:0 metrics:v32 views:v18];
  [v17 addConstraints:v33];

  [(FBAFileAttachmentView *)self setNeedsLayout];
}

@end