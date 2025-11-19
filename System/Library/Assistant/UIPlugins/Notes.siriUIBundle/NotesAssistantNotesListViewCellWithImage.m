@interface NotesAssistantNotesListViewCellWithImage
+ (id)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NotesAssistantNotesListViewCellWithImage)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (void)prepareForReuse;
- (void)setNote:(id)a3;
@end

@implementation NotesAssistantNotesListViewCellWithImage

- (NotesAssistantNotesListViewCellWithImage)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = NotesAssistantNotesListViewCellWithImage;
  v3 = [(NotesAssistantNotesListViewCellWithImage *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(ICNoteResultsListCollectionViewCell);
    cell = v3->_cell;
    v3->_cell = v4;

    [(ICNoteResultsListCollectionViewCell *)v3->_cell setAutoresizingMask:18];
    v6 = [(NotesAssistantNotesListViewCellWithImage *)v3 contentView];
    [v6 bounds];
    [(ICNoteResultsListCollectionViewCell *)v3->_cell setFrame:?];

    v7 = [(NotesAssistantNotesListViewCellWithImage *)v3 contentView];
    v8 = [(NotesAssistantNotesListViewCellWithImage *)v3 cell];
    [v7 addSubview:v8];

    v9 = +[UIColor clearColor];
    [(NotesAssistantNotesListViewCellWithImage *)v3 setBackgroundColor:v9];

    v10 = [(NotesAssistantNotesListViewCellWithImage *)v3 keyline];
    [v10 setCustomLeftPadding:28.0];

    v11 = [(NotesAssistantNotesListViewCellWithImage *)v3 keyline];
    [v11 setCustomRightPadding:0.0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setNote:(id)a3
{
  v4 = a3;
  v7 = [[ICNoteResultsCellConfiguration alloc] initWithNote:v4];

  v5 = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [v5 setConfiguration:v7 synchronously:1];

  v6 = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [v6 setUserInteractionEnabled:0];
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
  v3 = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  [v3 prepareForReuse];
}

- (id)accessibilityLabel
{
  v2 = [(NotesAssistantNotesListViewCellWithImage *)self cell];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end