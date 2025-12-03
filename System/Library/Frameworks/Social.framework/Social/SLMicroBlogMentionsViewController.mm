@interface SLMicroBlogMentionsViewController
+ (id)_blankSurrogateProfileImage;
- (SLMicroBlogMentionsDelegate)delegate;
- (SLMicroBlogMentionsViewController)initWithSheetDelegate:(id)delegate;
- (id)mentions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)chooseRow:(int64_t)row;
- (void)completeWithSelectedMention:(id)mention;
- (void)loadView;
- (void)setMentions:(id)mentions;
- (void)setSearchString:(id)string;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateMentions;
@end

@implementation SLMicroBlogMentionsViewController

- (SLMicroBlogMentionsViewController)initWithSheetDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SLMicroBlogMentionsViewController;
  v5 = [(SLMicroBlogMentionsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sheetDelegate, delegateCopy);
  }

  return v6;
}

- (void)completeWithSelectedMention:(id)mention
{
  mentionCopy = mention;
  delegate = [(SLMicroBlogMentionsViewController *)self delegate];
  [delegate mentionsViewController:self finishedWithResult:mentionCopy];
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

- (void)setMentions:(id)mentions
{
  mentionsCopy = mentions;
  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController setMentions:");
  mentions = self->_mentions;
  self->_mentions = mentionsCopy;
  v7 = mentionsCopy;

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

- (void)setSearchString:(id)string
{
  stringCopy = string;
  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController setSearchString: %@");
  stringCopy = [(NSString *)self->_searchString compare:stringCopy, stringCopy];
  v7 = [stringCopy copy];

  searchString = self->_searchString;
  self->_searchString = v7;

  if (stringCopy)
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
  view = [(SLMicroBlogMentionsViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:clearColor];

  backgroundView = [(UITableView *)self->_tableView backgroundView];
  [backgroundView setOpaque:0];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  backgroundView2 = [(UITableView *)self->_tableView backgroundView];
  [backgroundView2 setBackgroundColor:clearColor2];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v11 lineHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:v12 + v12];

  [(SLMicroBlogMentionsViewController *)self setView:self->_tableView];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(SLMicroBlogMentionsViewController *)self mentions:view];
  _SLLog(v4, 7, @"Mentions tableView:numberOfRowsInSection: with results %@");
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  _SLLog(v4, 7, @"Mentions tableView:cellForRowAtIndexPath: %@");
  v9 = [pathCopy indexAtPosition:{1, pathCopy}];

  mentions = [(SLMicroBlogMentionsViewController *)self mentions];
  v11 = [mentions objectAtIndex:v9];

  _SLLog(v4, 7, @"Mentions tableView:cellForRowAtIndexPath: using userRecord %@");
  v12 = MEMORY[0x1E696AEC0];
  screen_name = [v11 screen_name];
  v14 = [v12 stringWithFormat:@"@%@", screen_name];

  v15 = [viewCopy dequeueReusableCellWithIdentifier:@"MicroBlogMentionCell"];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"MicroBlogMentionCell"];
  }

  [v15 setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v15 setBackgroundColor:clearColor];

  textLabel = [v15 textLabel];
  [textLabel setText:v14];

  name = [v11 name];

  if (name)
  {
    name2 = [v11 name];
    detailTextLabel = [v15 detailTextLabel];
    [detailTextLabel setText:name2];
  }

  profileImageCache = [v11 profileImageCache];
  imageView = [v15 imageView];
  [imageView setImage:profileImageCache];

  imageView2 = [v15 imageView];
  image = [imageView2 image];

  if (!image)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sheetDelegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_loadWeakRetained(&self->_sheetDelegate);
      screen_name2 = [v11 screen_name];
      v29 = [v27 cachedProfileImageDataForScreenName:screen_name2];

      if (v29)
      {
        v30 = [MEMORY[0x1E69DCAB8] imageWithData:v29];
        imageView3 = [v15 imageView];
        [imageView3 setImage:v30];
      }
    }
  }

  imageView4 = [v15 imageView];
  image2 = [imageView4 image];

  if (!image2)
  {
    v34 = +[SLMicroBlogMentionsViewController _blankSurrogateProfileImage];
    [v11 setProfileImageCache:v34];

    profileImageCache2 = [v11 profileImageCache];
    imageView5 = [v15 imageView];
    [imageView5 setImage:profileImageCache2];

    _SLLog(v4, 7, @"Mentions will fetch profile image for userRecord %@");
    v37 = objc_loadWeakRetained(&self->_sheetDelegate);
    screen_name3 = [v11 screen_name];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v40[3] = &unk_1E81766B0;
    v41 = v11;
    selfCopy = self;
    v43 = viewCopy;
    [v37 fetchProfileImageDataForScreenName:screen_name3 completion:v40];
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (void)chooseRow:(int64_t)row
{
  v6 = [(NSArray *)self->_mentions objectAtIndex:row];
  screen_name = [v6 screen_name];
  v5 = [screen_name stringByAppendingString:@" "];

  [(SLMicroBlogMentionsViewController *)self completeWithSelectedMention:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  _SLLog(v4, 7, @"SLMicroBlogMentionsViewController didSelectRowAtIndexPath: %@");
  v7 = [pathCopy indexAtPosition:{1, pathCopy}];

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