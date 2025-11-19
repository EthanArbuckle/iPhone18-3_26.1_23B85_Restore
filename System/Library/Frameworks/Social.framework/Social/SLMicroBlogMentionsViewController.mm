@interface SLMicroBlogMentionsViewController
+ (id)_blankSurrogateProfileImage;
- (SLMicroBlogMentionsDelegate)delegate;
- (SLMicroBlogMentionsViewController)initWithSheetDelegate:(id)a3;
- (id)mentions;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)chooseRow:(int64_t)a3;
- (void)completeWithSelectedMention:(id)a3;
- (void)loadView;
- (void)setMentions:(id)a3;
- (void)setSearchString:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateMentions;
@end

@implementation SLMicroBlogMentionsViewController

- (SLMicroBlogMentionsViewController)initWithSheetDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SLMicroBlogMentionsViewController;
  v5 = [(SLMicroBlogMentionsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sheetDelegate, v4);
  }

  return v6;
}

- (void)completeWithSelectedMention:(id)a3
{
  v4 = a3;
  v5 = [(SLMicroBlogMentionsViewController *)self delegate];
  [v5 mentionsViewController:self finishedWithResult:v4];
}

- (id)mentions
{
  mentions = self->_mentions;
  if (!mentions)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_mentions;
    self->_mentions = v4;

    [(SLMicroBlogMentionsViewController *)self updateMentions];
    mentions = self->_mentions;
  }

  return mentions;
}

- (void)setMentions:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController setMentions:");
  mentions = self->_mentions;
  self->_mentions = v5;
  v7 = v5;

  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [(UITableView *)tableView reloadSections:v9 withRowAnimation:100];

  [(UITableView *)self->_tableView sizeThatFits:0.0, 1100.0];
  v11 = v10;
  [(NSArray *)self->_mentions count];

  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController preferredContentSize => %g %g for _mentions.count %d");

  [(SLMicroBlogMentionsViewController *)self setPreferredContentSize:320.0, v11];
}

- (void)updateMentions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke;
  v5[3] = &unk_1E8176688;
  v5[4] = self;
  v3 = MEMORY[0x1C6917BF0](v5, a2);
  WeakRetained = objc_loadWeakRetained(&self->_sheetDelegate);
  [WeakRetained recordsMatchingPrefixString:self->_searchString completion:v3];
}

uint64_t __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 7, @"Got mentions match error %{public}@ and results %@");
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke_2;
    block[3] = &unk_1E8176118;
    block[4] = *(a1 + 32);
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return 1;
}

uint64_t __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMentions:*(a1 + 40)];
  [*(a1 + 32) willChangeValueForKey:@"contentSizeForViewInPopover"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"contentSizeForViewInPopover"];
}

- (void)setSearchString:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController setSearchString: %@");
  v6 = [(NSString *)self->_searchString compare:v5, v5];
  v7 = [v5 copy];

  searchString = self->_searchString;
  self->_searchString = v7;

  if (v6)
  {
    if ([(NSString *)self->_searchString length])
    {

      [(SLMicroBlogMentionsViewController *)self updateMentions];
    }

    else
    {

      [(SLMicroBlogMentionsViewController *)self setMentions:0];
    }
  }
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = SLMicroBlogMentionsViewController;
  [(SLMicroBlogMentionsViewController *)&v13 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [(SLMicroBlogMentionsViewController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setOpaque:0];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v7];

  v8 = [(UITableView *)self->_tableView backgroundView];
  [v8 setOpaque:0];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  v10 = [(UITableView *)self->_tableView backgroundView];
  [v10 setBackgroundColor:v9];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v11 lineHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:v12 + v12];

  [(SLMicroBlogMentionsViewController *)self setView:self->_tableView];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(SLMicroBlogMentionsViewController *)self mentions:a3];
  _SLLog(v4, 7, @"Mentions tableView:numberOfRowsInSection: with results %@");
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  _SLLog(v4, 7, @"Mentions tableView:cellForRowAtIndexPath: %@");
  v9 = [v8 indexAtPosition:{1, v8}];

  v10 = [(SLMicroBlogMentionsViewController *)self mentions];
  v11 = [v10 objectAtIndex:v9];

  _SLLog(v4, 7, @"Mentions tableView:cellForRowAtIndexPath: using userRecord %@");
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v11 screen_name];
  v14 = [v12 stringWithFormat:@"@%@", v13];

  v15 = [v7 dequeueReusableCellWithIdentifier:@"MicroBlogMentionCell"];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"MicroBlogMentionCell"];
  }

  [v15 setOpaque:0];
  v16 = [MEMORY[0x1E69DC888] clearColor];
  [v15 setBackgroundColor:v16];

  v17 = [v15 textLabel];
  [v17 setText:v14];

  v18 = [v11 name];

  if (v18)
  {
    v19 = [v11 name];
    v20 = [v15 detailTextLabel];
    [v20 setText:v19];
  }

  v21 = [v11 profileImageCache];
  v22 = [v15 imageView];
  [v22 setImage:v21];

  v23 = [v15 imageView];
  v24 = [v23 image];

  if (!v24)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sheetDelegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_loadWeakRetained(&self->_sheetDelegate);
      v28 = [v11 screen_name];
      v29 = [v27 cachedProfileImageDataForScreenName:v28];

      if (v29)
      {
        v30 = [MEMORY[0x1E69DCAB8] imageWithData:v29];
        v31 = [v15 imageView];
        [v31 setImage:v30];
      }
    }
  }

  v32 = [v15 imageView];
  v33 = [v32 image];

  if (!v33)
  {
    v34 = +[SLMicroBlogMentionsViewController _blankSurrogateProfileImage];
    [v11 setProfileImageCache:v34];

    v35 = [v11 profileImageCache];
    v36 = [v15 imageView];
    [v36 setImage:v35];

    _SLLog(v4, 7, @"Mentions will fetch profile image for userRecord %@");
    v37 = objc_loadWeakRetained(&self->_sheetDelegate);
    v38 = [v11 screen_name];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v40[3] = &unk_1E81766B0;
    v41 = v11;
    v42 = self;
    v43 = v7;
    [v37 fetchProfileImageDataForScreenName:v38 completion:v40];
  }

  return v15;
}

void __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  _SLLog(v3, 7, @"Mentions did fetch profile image data %lx error %{public}@ for userRecord %@");
  if (v6 && !a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    block[3] = &unk_1E8176028;
    v8 = *(a1 + 32);
    v7 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v11 = v6;
    v12 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v11 = [*(a1 + 32) mentions];
  v3 = [v11 indexOfObject:*(a1 + 40)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:*(a1 + 48)];
    v9 = *(a1 + 40);
    _SLLog(v1, 7, @"Mentions built image %@ for userRecord %@");
    if (v5)
    {
      [*(a1 + 40) setProfileImageCache:{v5, v5, v9}];
      v6 = MEMORY[0x1E695DEC8];
      v7 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
      v8 = [v6 arrayWithObject:v7];

      v10 = *(a1 + 40);
      _SLLog(v1, 7, @"Mentions refreshing row %@ for userRecord %@");
      [*(a1 + 56) reloadRowsAtIndexPaths:v8 withRowAnimation:{100, v8, v10}];
    }
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)chooseRow:(int64_t)a3
{
  v6 = [(NSArray *)self->_mentions objectAtIndex:a3];
  v4 = [v6 screen_name];
  v5 = [v4 stringByAppendingString:@" "];

  [(SLMicroBlogMentionsViewController *)self completeWithSelectedMention:v5];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  _SLLog(v4, 7, @"SLMicroBlogMentionsViewController didSelectRowAtIndexPath: %@");
  v7 = [v6 indexAtPosition:{1, v6}];

  [(SLMicroBlogMentionsViewController *)self chooseRow:v7];
}

+ (id)_blankSurrogateProfileImage
{
  v2 = _blankSurrogateProfileImage___blankImage;
  if (!_blankSurrogateProfileImage___blankImage)
  {
    v8.width = 50.0;
    v8.height = 50.0;
    UIGraphicsBeginImageContext(v8);
    CurrentContext = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(CurrentContext);
    UIGraphicsPopContext();
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    v5 = _blankSurrogateProfileImage___blankImage;
    _blankSurrogateProfileImage___blankImage = v4;

    UIGraphicsEndImageContext();
    v2 = _blankSurrogateProfileImage___blankImage;
  }

  return v2;
}

- (SLMicroBlogMentionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end