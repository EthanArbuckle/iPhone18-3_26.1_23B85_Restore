@interface ICNotePrintActivityItemSource
- (CGSize)size;
- (ICNote)note;
- (ICNotePrintActivityItemSource)initWithNote:(id)a3 size:(CGSize)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ICNotePrintActivityItemSource

- (ICNotePrintActivityItemSource)initWithNote:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ICNotePrintActivityItemSource;
  v8 = [(ICNotePrintActivityItemSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ICNotePrintActivityItemSource *)v8 setNote:v7];
    [(ICNotePrintActivityItemSource *)v9 setSize:width, height];
  }

  return v9;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a3;
  v6 = [(ICNotePrintActivityItemSource *)self note];
  v7 = [v6 isSharable];

  if (v7)
  {
    v8 = [v5 traitCollection];
    v9 = [v8 traitCollectionByModifyingTraits:&stru_10064AF30];

    v10 = [(ICNotePrintActivityItemSource *)self note];
    v11 = [v10 textStorage];
    v12 = [v11 styler];

    if (!v12)
    {
      v13 = objc_alloc_init(ICTextController);
      v14 = [(ICNotePrintActivityItemSource *)self note];
      [(ICNotePrintActivityItemSource *)self size];
      v15 = [ICTextViewController createTextViewUsingTextController:v13 stylingTextUsingSeparateTextStorageForRendering:0 note:v14 containerWidth:0 forManualRendering:0 scrollState:v9 traitCollection:?];
    }

    v16 = [(ICNotePrintActivityItemSource *)self note];
    [(ICNotePrintActivityItemSource *)self size];
    v17 = [ICTextViewController printFormatterForNote:v16 withSize:v9 traitCollection:?];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
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