@interface NotesAssistantSingleNoteViewCell
+ (id)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NotesAssistantSingleNoteViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setNote:(id)note;
@end

@implementation NotesAssistantSingleNoteViewCell

- (NotesAssistantSingleNoteViewCell)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = NotesAssistantSingleNoteViewCell;
  v3 = [(NotesAssistantSingleNoteViewCell *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(NotesAssistantSingleNoteViewCell *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    note = v3->_note;
    v3->_note = v5;

    [(UILabel *)v3->_note setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_note setNumberOfLines:0];
    [(UILabel *)v3->_note setLineBreakMode:0];
    v7 = +[UIFont siriui_lightWeightBodySizeFont];
    [(UILabel *)v3->_note setFont:v7];

    v8 = +[UIColor siriui_textColor];
    [(UILabel *)v3->_note setTextColor:v8];

    v9 = +[UIColor clearColor];
    [(UILabel *)v3->_note setBackgroundColor:v9];

    contentView = [(NotesAssistantSingleNoteViewCell *)v3 contentView];
    [contentView addSubview:v3->_note];

    v11 = +[NSMutableArray array];
    v12 = _NSDictionaryOfVariableBindings(@"_note", v3->_note, 0);
    v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(leftMargin)-[_note]-(rightMargin)-|", 0, &off_18E28, v12);
    [v11 addObjectsFromArray:v13];

    v14 = v3->_note;
    contentView2 = [(NotesAssistantSingleNoteViewCell *)v3 contentView];
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    v18 = v17;
    font = [(UILabel *)v3->_note font];
    [font ascender];
    v21 = 25.0 - v20;
    v22 = ceil(v21);
    if (v18 >= 2.0)
    {
      v22 = v21;
    }

    v23 = [NSLayoutConstraint constraintWithItem:v14 attribute:3 relatedBy:0 toItem:contentView2 attribute:3 multiplier:1.0 constant:v22];
    [v11 addObject:v23];

    v24 = v3->_note;
    contentView3 = [(NotesAssistantSingleNoteViewCell *)v3 contentView];
    v26 = +[UIScreen mainScreen];
    [v26 scale];
    v28 = v27;
    font2 = [(UILabel *)v3->_note font];
    [font2 descender];
    v31 = v30 + 50.0;
    v32 = ceil(v31);
    if (v28 < 2.0)
    {
      v31 = v32;
    }

    v33 = [NSLayoutConstraint constraintWithItem:v24 attribute:4 relatedBy:0 toItem:contentView3 attribute:4 multiplier:1.0 constant:-v31];
    [v11 addObject:v33];

    contentView4 = [(NotesAssistantSingleNoteViewCell *)v3 contentView];
    [contentView4 addConstraints:v11];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [UIScreen mainScreen:fits.width];
  [v5 scale];
  v6 = ceil(width + -15.0 + -15.0);
  if (v7 >= 2.0)
  {
    v8 = width + -15.0 + -15.0;
  }

  else
  {
    v8 = v6;
  }

  [(UILabel *)self->_note setPreferredMaxLayoutWidth:v8];

  [(UILabel *)self->_note systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v10 = v9;
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;
  font = [(UILabel *)self->_note font];
  [font ascender];
  v16 = v10 + 25.0 - v15 + 50.0;
  font2 = [(UILabel *)self->_note font];
  [font2 descender];
  v19 = v16 + v18;
  v20 = ceil(v19);
  if (v13 < 2.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = width;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  v15 = ICDynamicCast();
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v15)
  {
    if ([v15 isPasswordProtected])
    {
      title = [v15 title];
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"This note is password protected." value:&stru_18718 table:@"NotesAssistant"];
      v9 = [title stringByAppendingFormat:@"\n\n%@", v8];
      [(UILabel *)self->_note setText:v9];
    }

    else
    {
      title = [v15 noteAsPlainText];
      [(UILabel *)self->_note setText:title];
    }

    attributedText = [(UILabel *)self->_note attributedText];
    content = [attributedText mutableCopy];

    [content ic_setParagraphStyleForWritingDirection:objc_msgSend(v15 andAlignment:{"primaryWritingDirection"), 1}];
    [(UILabel *)self->_note setAttributedText:content];
    goto LABEL_9;
  }

  if (v5)
  {
    contentAsPlainTextPreservingNewlines = [v5 contentAsPlainTextPreservingNewlines];
    [(UILabel *)self->_note setText:contentAsPlainTextPreservingNewlines];

    text = [(UILabel *)self->_note text];
    v12 = [text length];

    if (!v12)
    {
      content = [v5 content];
      [(UILabel *)self->_note setText:content];
LABEL_9:
    }
  }
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NotesAssistantSingleNoteViewCell;
  [(NotesAssistantSingleNoteViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_note setText:0];
}

@end