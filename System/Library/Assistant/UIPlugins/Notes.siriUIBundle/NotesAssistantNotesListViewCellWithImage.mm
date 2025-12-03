@interface NotesAssistantNotesListViewCellWithImage
+ (id)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NotesAssistantNotesListViewCellWithImage)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (void)prepareForReuse;
- (void)setNote:(id)note;
@end

@implementation NotesAssistantNotesListViewCellWithImage

- (NotesAssistantNotesListViewCellWithImage)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = NotesAssistantNotesListViewCellWithImage;
  v3 = [(NotesAssistantNotesListViewCellWithImage *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(ICNoteResultsListCollectionViewCell);
    cell = v3->_cell;
    v3->_cell = v4;

    [(ICNoteResultsListCollectionViewCell *)v3->_cell setAutoresizingMask:18];
    contentView = [(NotesAssistantNotesListViewCellWithImage *)v3 contentView];
    [contentView bounds];
    [(ICNoteResultsListCollectionViewCell *)v3->_cell setFrame:?];

    contentView2 = [(NotesAssistantNotesListViewCellWithImage *)v3 contentView];
    cell = [(NotesAssistantNotesListViewCellWithImage *)v3 cell];
    [contentView2 addSubview:cell];

    v9 = +[UIColor clearColor];
    [(NotesAssistantNotesListViewCellWithImage *)v3 setBackgroundColor:v9];

    keyline = [(NotesAssistantNotesListViewCellWithImage *)v3 keyline];
    [keyline setCustomLeftPadding:28.0];

    keyline2 = [(NotesAssistantNotesListViewCellWithImage *)v3 keyline];
    [keyline2 setCustomRightPadding:0.0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  cell = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [cell sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setNote:(id)note
{
  noteCopy = note;
  v7 = [[ICNoteResultsCellConfiguration alloc] initWithNote:noteCopy];

  cell = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [cell setConfiguration:v7 synchronously:1];

  cell2 = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [cell2 setUserInteractionEnabled:0];
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
  v4.receiver = self;
  v4.super_class = NotesAssistantNotesListViewCellWithImage;
  [(NotesAssistantNotesListViewCellWithImage *)&v4 prepareForReuse];
  cell = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [cell prepareForReuse];
}

- (id)accessibilityLabel
{
  cell = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  accessibilityLabel = [cell accessibilityLabel];

  return accessibilityLabel;
}

@end