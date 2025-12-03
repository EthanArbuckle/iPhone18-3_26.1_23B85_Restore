@interface MKSearchFoundationRichText
- (MKSearchFoundationRichText)initWithString:(id)string;
- (id)initRichTextTitleWithMapItem:(id)item resultsType:(unint64_t)type;
- (void)_invokeCompletionHandlers;
- (void)loadRichTextWithCompletionHandler:(id)handler;
- (void)setFormattedTextPieces:(id)pieces;
- (void)setText:(id)text;
@end

@implementation MKSearchFoundationRichText

- (void)_invokeCompletionHandlers
{
  block = [(MKSearchFoundationRichText *)self completionHandlers];
  if (block)
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([(MKSearchFoundationRichText *)self isRichTextResolved])
  {
    [(MKSearchFoundationRichText *)self setCompletionHandlers:0];
  }
}

- (void)setFormattedTextPieces:(id)pieces
{
  v4.receiver = self;
  v4.super_class = MKSearchFoundationRichText;
  [(SFRichText *)&v4 setFormattedTextPieces:pieces];
  [(MKSearchFoundationRichText *)self _invokeCompletionHandlers];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = MKSearchFoundationRichText;
  [(SFText *)&v4 setText:text];
  [(MKSearchFoundationRichText *)self _invokeCompletionHandlers];
}

- (void)loadRichTextWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    if (![(MKSearchFoundationRichText *)self isRichTextResolved])
    {
      completionHandlers = [(MKSearchFoundationRichText *)self completionHandlers];
      v7 = completionHandlers;
      if (completionHandlers)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __64__MKSearchFoundationRichText_loadRichTextWithCompletionHandler___block_invoke;
        v8[3] = &unk_1E76CCF68;
        v9 = completionHandlers;
        v10 = v5;
        [(MKSearchFoundationRichText *)self setCompletionHandlers:v8];
      }

      else
      {
        [(MKSearchFoundationRichText *)self setCompletionHandlers:v5];
      }
    }
  }
}

uint64_t __64__MKSearchFoundationRichText_loadRichTextWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)initRichTextTitleWithMapItem:(id)item resultsType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = itemCopy;
  if (type == 2)
  {
    _geoAddress = [itemCopy _geoAddress];
    singleLineAddress = [_geoAddress singleLineAddress];
  }

  else if (type == 1)
  {
    if ([itemCopy _hasTransitDisplayName])
    {
      [v7 _transitDisplayName];
    }

    else
    {
      [v7 name];
    }
    singleLineAddress = ;
  }

  else
  {
    singleLineAddress = 0;
  }

  v10 = MKGetMKSearchFoundationResultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 138477827;
    v15 = singleLineAddress;
    _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_INFO, "MapItem name: %{private}@", &v14, 0xCu);
  }

  v11 = [(MKSearchFoundationRichText *)self initWithString:singleLineAddress];
  v12 = v11;
  if (v11)
  {
    [(SFText *)v11 setMaxLines:1];
  }

  return v12;
}

- (MKSearchFoundationRichText)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = MKSearchFoundationRichText;
  v5 = [(MKSearchFoundationRichText *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKSearchFoundationRichText *)v5 setText:stringCopy];
  }

  return v6;
}

@end