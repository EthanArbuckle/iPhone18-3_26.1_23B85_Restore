@interface SiriUSSnippetViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (SiriUSSnippetViewController)initWithUniversalSearchResults:(id)results snippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_configureSnippetBackgroundForCell:(id)cell;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation SiriUSSnippetViewController

- (SiriUSSnippetViewController)initWithUniversalSearchResults:(id)results snippet:(id)snippet
{
  resultsCopy = results;
  snippetCopy = snippet;
  v61.receiver = self;
  v61.super_class = SiriUSSnippetViewController;
  v56 = [(SiriUSSnippetViewController *)&v61 init];
  if (v56)
  {
    v51 = snippetCopy;
    v55 = +[NSMutableArray array];
    v8 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    if ([resultsCopy count])
    {
      v10 = 0;
      height = CGSizeZero.height;
      v52 = resultsCopy;
      do
      {
        v54 = v10;
        v12 = [resultsCopy objectAtIndex:v10];
        title = [v12 title];

        if (title)
        {
          v14 = [SiriUIPlatterSectionHeaderTableViewCell alloc];
          title2 = [v12 title];
          v16 = [v14 initWithText:title2];

          v17 = +[UIColor clearColor];
          [v16 setBackgroundColor:v17];

          if ([(NSArray *)v9 count])
          {
            [(NSArray *)v9 replaceObjectAtIndex:[(NSArray *)v9 count]- 1 withObject:&__kCFBooleanFalse];
          }

          [(NSArray *)v9 addObject:&__kCFBooleanFalse];
          [(NSArray *)v55 addObject:v16];
          v18 = +[NSNull null];
          [(NSArray *)v8 addObject:v18];
        }

        v19 = v9;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v53 = v12;
        results = [v12 results];
        v21 = [results countByEnumeratingWithState:&v57 objects:v63 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v58;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v58 != v23)
              {
                objc_enumerationMutation(results);
              }

              v25 = *(*(&v57 + 1) + 8 * i);
              thumbnail = [v25 thumbnail];
              [thumbnail size];
              v28 = v27;
              v30 = v29;

              if (v28 == CGSizeZero.width && v30 == height)
              {
                [v25 setThumbnail:0];
              }

              v62 = v25;
              v32 = [NSArray arrayWithObjects:&v62 count:1];
              v33 = [SearchUI rowViewsForResults:v32 feedbackDelegate:0];
              firstObject = [v33 firstObject];

              if (firstObject)
              {
                [firstObject recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
                v35 = +[UIColor clearColor];
                [firstObject setBackgroundColor:v35];

                [(NSArray *)v55 addObject:firstObject];
                [(NSArray *)v19 addObject:&__kCFBooleanTrue];
              }

              punchout = [v25 punchout];
              if (punchout)
              {
                [(NSArray *)v8 addObject:punchout];
              }

              else
              {
                v37 = +[NSNull null];
                [(NSArray *)v8 addObject:v37];
              }

              [(SiriUSSnippetViewController *)v56 _configureSnippetBackgroundForCell:firstObject];
            }

            v22 = [results countByEnumeratingWithState:&v57 objects:v63 count:16];
          }

          while (v22);
        }

        punchOut = [v53 punchOut];

        v9 = v19;
        if (punchOut)
        {
          v39 = [SiriUSSectionFooterCell alloc];
          punchOut2 = [v53 punchOut];
          v41 = [(SiriUSSectionFooterCell *)v39 initWithPunchOut:punchOut2];

          [(SiriUSSectionFooterCell *)v41 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
          [(NSArray *)v55 addObject:v41];
          [(NSArray *)v19 addObject:&__kCFBooleanTrue];
          punchOut3 = [v53 punchOut];
          [(NSArray *)v8 addObject:punchOut3];

          [(SiriUSSnippetViewController *)v56 _configureSnippetBackgroundForCell:v41];
        }

        v10 = v54 + 1;
        resultsCopy = v52;
      }

      while (v54 + 1 < [v52 count]);
    }

    if ([(NSArray *)v9 count]== &dword_0 + 2)
    {
      v43 = [(NSArray *)v55 objectAtIndex:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(NSArray *)v9 replaceObjectAtIndex:0 withObject:&__kCFBooleanFalse];
      }
    }

    if ([(NSArray *)v9 count])
    {
      [(NSArray *)v9 replaceObjectAtIndex:[(NSArray *)v9 count]- 1 withObject:&__kCFBooleanFalse];
    }

    [(SiriUSSnippetViewController *)v56 setSnippet:v51];
    [(SiriUSSnippetViewController *)v56 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(SiriUSSnippetViewController *)v56 setIsTransparent:1];
    cells = v56->_cells;
    v56->_cells = v55;
    v46 = v55;

    punchOuts = v56->_punchOuts;
    v56->_punchOuts = v8;
    v48 = v8;

    separators = v56->_separators;
    v56->_separators = v9;

    snippetCopy = v51;
  }

  return v56;
}

- (void)_configureSnippetBackgroundForCell:(id)cell
{
  cellCopy = cell;
  if ((SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets() & 1) == 0)
  {
    v3 = +[UIColor siriui_snippetBackgroundColor];
    [cellCopy setBackgroundColor:v3];
  }

  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v5 = +[UIColor siriui_highlightColor];
  [v4 setBackgroundColor:v5];

  [cellCopy setSelectedBackgroundView:v4];
}

- (void)loadView
{
  delegate = [(SiriUSSnippetViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v5 = v4;

  v6 = [[UITableView alloc] initWithFrame:{0.0, 0.0, v5, 0.0}];
  tableView = self->_tableView;
  self->_tableView = v6;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v8 = self->_tableView;
  v9 = +[UIColor clearColor];
  [(UITableView *)v8 setBackgroundColor:v9];

  v10 = self->_tableView;
  v11 = +[UIColor siriui_keylineColor];
  [(UITableView *)v10 setSeparatorColor:v11];

  [(UITableView *)self->_tableView setScrollEnabled:0];
  v12 = self->_tableView;

  [(SiriUSSnippetViewController *)self setView:v12];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriUSSnippetViewController;
  [(SiriUSSnippetViewController *)&v4 viewDidLayoutSubviews];
  delegate = [(SiriUSSnippetViewController *)self delegate];
  [delegate siriViewControllerHeightDidChange:self];
}

- (double)desiredHeightForWidth:(double)width
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_cells;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 setNeedsUpdateConstraints];
        [v10 updateConstraintsIfNeeded];
        LODWORD(v11) = 1148846080;
        LODWORD(v12) = 1112014848;
        [v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v11, v12}];
        v8 = v8 + v13;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  cells = self->_cells;
  v5 = [path row];

  return [(NSArray *)cells objectAtIndex:v5];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  separators = self->_separators;
  cellCopy = cell;
  v7 = -[NSArray objectAtIndex:](separators, "objectAtIndex:", [path row]);
  [cellCopy setSeparatorStyle:{objc_msgSend(v7, "BOOLValue")}];

  [cellCopy setSeparatorInset:{0.0, SiriUIPlatterStyle[32], 0.0, SiriUIPlatterStyle[34]}];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndex:](self->_punchOuts, "objectAtIndex:", [path row]);
  v5 = +[NSNull null];
  v6 = [v4 isEqual:v5];

  return v6 ^ 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = -[NSArray objectAtIndex:](self->_punchOuts, "objectAtIndex:", [path row]);
  v6 = +[NSNull null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    if ([v5 isMemberOfClass:objc_opt_class()])
    {
      delegate = [(SiriUSSnippetViewController *)self delegate];
      v13 = v5;
      v9 = [NSArray arrayWithObjects:&v13 count:1];
      [delegate siriViewController:self performAceCommands:v9];
    }

    else if ([v5 isMemberOfClass:objc_opt_class()])
    {
      v10 = v5;
      delegate2 = [(SiriUSSnippetViewController *)self delegate];
      preferredOpenableURL = [v10 preferredOpenableURL];

      [delegate2 siriViewController:self openURL:preferredOpenableURL completion:0];
    }
  }
}

@end