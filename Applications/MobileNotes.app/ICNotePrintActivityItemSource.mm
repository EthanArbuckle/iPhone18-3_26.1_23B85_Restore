@interface ICNotePrintActivityItemSource
- (CGSize)size;
- (ICNote)note;
- (ICNotePrintActivityItemSource)initWithNote:(id)note size:(CGSize)size;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ICNotePrintActivityItemSource

- (ICNotePrintActivityItemSource)initWithNote:(id)note size:(CGSize)size
{
  height = size.height;
  width = size.width;
  noteCopy = note;
  v11.receiver = self;
  v11.super_class = ICNotePrintActivityItemSource;
  v8 = [(ICNotePrintActivityItemSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ICNotePrintActivityItemSource *)v8 setNote:noteCopy];
    [(ICNotePrintActivityItemSource *)v9 setSize:width, height];
  }

  return v9;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  note = [(ICNotePrintActivityItemSource *)self note];
  isSharable = [note isSharable];

  if (isSharable)
  {
    traitCollection = [controllerCopy traitCollection];
    v9 = [traitCollection traitCollectionByModifyingTraits:&stru_10064AF30];

    note2 = [(ICNotePrintActivityItemSource *)self note];
    textStorage = [note2 textStorage];
    styler = [textStorage styler];

    if (!styler)
    {
      v13 = objc_alloc_init(ICTextController);
      note3 = [(ICNotePrintActivityItemSource *)self note];
      [(ICNotePrintActivityItemSource *)self size];
      v15 = [ICTextViewController createTextViewUsingTextController:v13 stylingTextUsingSeparateTextStorageForRendering:0 note:note3 containerWidth:0 forManualRendering:0 scrollState:v9 traitCollection:?];
    }

    note4 = [(ICNotePrintActivityItemSource *)self note];
    [(ICNotePrintActivityItemSource *)self size];
    v17 = [ICTextViewController printFormatterForNote:note4 withSize:v9 traitCollection:?];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_alloc_init(UIPrintFormatter);

  return v3;
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end