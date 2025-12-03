@interface THNotesNoSearchResultsViewController
- (CGSize)sizeForContainerView:(id)view;
- (THNotesNoSearchResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)p_getConstraint:(id)constraint onView:(id)view;
- (id)p_findConstraint:(id)constraint onView:(id)view;
- (void)dealloc;
- (void)p_prepForFirstLaunchViewLayout;
- (void)p_releaseOutlets;
- (void)p_setConstraint:(id)constraint onView:(id)view toValue:(double)value;
- (void)p_updateNoteIconVisibility;
- (void)setChapterIndex:(unint64_t)index;
- (void)setFooterType:(int)type;
- (void)setMessageType:(int)type;
- (void)setResults:(unint64_t)results;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation THNotesNoSearchResultsViewController

- (THNotesNoSearchResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = THBundle();
  v8.receiver = self;
  v8.super_class = THNotesNoSearchResultsViewController;
  return [(THNotesNoSearchResultsViewController *)&v8 initWithNibName:name bundle:v6];
}

- (void)p_releaseOutlets
{
  [(THNotesNoSearchResultContainerView *)self->mNoResultsView setSizeProvider:0];
  [(THNotesNoSearchResultContainerView *)self->mFirstLaunchView setSizeProvider:0];
  [(THNotesNoSearchResultContainerView *)self->mInstructionsView setSizeProvider:0];

  self->mNoResultsView = 0;
  self->mNoResultsViewHeader = 0;

  self->mPercentFoundLabel = 0;
  self->mFirstLaunchView = 0;

  self->mFirstLaunchViewHeader = 0;
  self->mStepOneLabel = 0;

  self->mStepTwoLabel = 0;
  self->mStepThreeLabel = 0;

  self->mFooterLabel = 0;
  self->mNoteIcon = 0;

  self->mInlineNoteIcon = 0;
  self->mInstructionsView = 0;
}

- (void)dealloc
{
  [(THNotesNoSearchResultsViewController *)self p_releaseOutlets];
  v3.receiver = self;
  v3.super_class = THNotesNoSearchResultsViewController;
  [(THNotesNoSearchResultsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = THNotesNoSearchResultsViewController;
  [(THNotesNoSearchResultsViewController *)&v25 viewDidLoad];
  [(THNotesNoSearchResultContainerView *)self->mNoResultsView setSizeProvider:self];
  [(THNotesNoSearchResultContainerView *)self->mFirstLaunchView setSizeProvider:self];
  [(THNotesNoSearchResultContainerView *)self->mInstructionsView setSizeProvider:self];
  [-[THNotesNoSearchResultsViewController view](self "view")];
  [(UILabel *)self->mFirstLaunchViewHeader bounds];
  [(UILabel *)self->mFirstLaunchViewHeader setBounds:0.0];
  [(THNotesNoSearchResultsViewController *)self setChapterIndex:self->mChapterIndex];
  [(THNotesNoSearchResultsViewController *)self setResults:self->mResults];
  [(THNotesNoSearchResultsViewController *)self setFooterType:self->mFooterType];
  -[UILabel setText:](self->mStepOneLabel, "setText:", [THBundle() localizedStringForKey:@"1. Tap and hold a word. Start dragging your finger to highlight text." value:&stru_471858 table:0]);
  -[UILabel setText:](self->mStepTwoLabel, "setText:", [THBundle() localizedStringForKey:@"2. You can extend your highlight to include an entire passage." value:&stru_471858 table:0]);
  -[UILabel setText:](self->mStepThreeLabel, "setText:", [THBundle() localizedStringForKey:@"3. To add a note value:tap the highlight and select the Note icon." table:{&stru_471858, 0}]);
  [-[THNotesNoSearchResultsViewController view](self "view")];
  mFirstLaunchView = self->mFirstLaunchView;
  v29[0] = self->mNoResultsView;
  v29[1] = mFirstLaunchView;
  v29[2] = self->mInstructionsView;
  v4 = [NSArray arrayWithObjects:v29 count:3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) setBackgroundColor:{+[UIColor bc_booksBackground](UIColor, "bc_booksBackground")}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v6);
  }

  mPercentFoundLabel = self->mPercentFoundLabel;
  v27[0] = self->mNoResultsViewHeader;
  v27[1] = mPercentFoundLabel;
  mStepOneLabel = self->mStepOneLabel;
  v27[2] = self->mFirstLaunchViewHeader;
  v27[3] = mStepOneLabel;
  mStepThreeLabel = self->mStepThreeLabel;
  v27[4] = self->mStepTwoLabel;
  v27[5] = mStepThreeLabel;
  v27[6] = self->mFooterLabel;
  v12 = [NSArray arrayWithObjects:v27 count:7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * j) setTextColor:{+[UIColor bc_booksSecondaryLabelColor](UIColor, "bc_booksSecondaryLabelColor")}];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = THNotesNoSearchResultsViewController;
  [(THNotesNoSearchResultsViewController *)&v3 viewWillLayoutSubviews];
  [(THNotesNoSearchResultsViewController *)self p_prepForFirstLaunchViewLayout];
}

- (void)p_updateNoteIconVisibility
{
  p_shouldShowNoteIcon = [(THNotesNoSearchResultsViewController *)self p_shouldShowNoteIcon];
  [(UIImageView *)self->mNoteIcon setHidden:p_shouldShowNoteIcon ^ 1];
  mFirstLaunchViewHeader = self->mFirstLaunchViewHeader;
  v5 = 158.0;
  if (!p_shouldShowNoteIcon)
  {
    v5 = 0.0;
  }

  [(THNotesNoSearchResultsViewController *)self p_setConstraint:@"FirstLaunchViewHeaderVerticalSpace" onView:mFirstLaunchViewHeader toValue:v5];
}

- (id)p_findConstraint:(id)constraint onView:(id)view
{
  if (!view)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  constraints = [view constraints];
  v8 = [constraints countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(constraints);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      if ([objc_msgSend(v12 "identifier")])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [constraints countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        return -[THNotesNoSearchResultsViewController p_findConstraint:onView:](self, "p_findConstraint:onView:", constraint, [view superview]);
      }
    }

    if (v12)
    {
      return v12;
    }
  }

  return -[THNotesNoSearchResultsViewController p_findConstraint:onView:](self, "p_findConstraint:onView:", constraint, [view superview]);
}

- (void)p_setConstraint:(id)constraint onView:(id)view toValue:(double)value
{
  v7 = [(THNotesNoSearchResultsViewController *)self p_findConstraint:constraint onView:view];
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [v7 setConstant:value];
}

- (double)p_getConstraint:(id)constraint onView:(id)view
{
  v5 = [(THNotesNoSearchResultsViewController *)self p_findConstraint:constraint onView:view];
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [v5 constant];
  return result;
}

- (void)p_prepForFirstLaunchViewLayout
{
  [-[THNotesNoSearchResultsViewController view](self "view")];
  v3 = CGRectGetWidth(v12) + -20.0;
  [[(UIImageView *)self->mInlineNoteIcon image] size];
  v5 = v4 + 0.0;
  [(UILabel *)self->mStepOneLabel setPreferredMaxLayoutWidth:v3];
  [(UILabel *)self->mStepTwoLabel setPreferredMaxLayoutWidth:v3];
  [(UILabel *)self->mStepThreeLabel setPreferredMaxLayoutWidth:v3 - v5];
  [(UILabel *)self->mStepOneLabel intrinsicContentSize];
  v7 = v6;
  self->mInstructionsViewWidth = v6;
  [(UILabel *)self->mStepTwoLabel intrinsicContentSize];
  if (v7 < v8)
  {
    v7 = v8;
  }

  self->mInstructionsViewWidth = v7;
  [(UILabel *)self->mStepThreeLabel intrinsicContentSize];
  v10 = v5 + v9;
  if (v7 >= v10)
  {
    v10 = v7;
  }

  self->mInstructionsViewWidth = v10;
  [(UILabel *)self->mStepOneLabel setPreferredMaxLayoutWidth:?];
  [(UILabel *)self->mStepTwoLabel setPreferredMaxLayoutWidth:self->mInstructionsViewWidth];
  [(UILabel *)self->mStepThreeLabel setPreferredMaxLayoutWidth:self->mInstructionsViewWidth - v5];
  [(THNotesNoSearchResultContainerView *)self->mInstructionsView invalidateIntrinsicContentSize];
  [(THNotesNoSearchResultContainerView *)self->mFirstLaunchView invalidateIntrinsicContentSize];

  [(THNotesNoSearchResultsViewController *)self p_updateNoteIconVisibility];
}

- (void)setChapterIndex:(unint64_t)index
{
  self->mChapterIndex = index;
  mMessageType = self->mMessageType;
  v5 = THBundle();
  if (mMessageType == 1)
  {
    v6 = @"No Highlights or Notes in this Chapter";
  }

  else
  {
    v6 = @"No Results";
  }

  v7 = [v5 localizedStringForKey:v6 value:&stru_471858 table:0];
  mNoResultsViewHeader = self->mNoResultsViewHeader;

  [(UILabel *)mNoResultsViewHeader setText:v7];
}

- (void)setResults:(unint64_t)results
{
  self->mResults = results;
  mMessageType = self->mMessageType;
  mPercentFoundLabel = self->mPercentFoundLabel;
  if (mMessageType == 1)
  {

    [(UILabel *)mPercentFoundLabel setHidden:1];
    return;
  }

  [(UILabel *)mPercentFoundLabel setHidden:0];
  if (results)
  {
    if (self->mResults != 1)
    {
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"%lu results found total" value:&stru_471858 table:0], self->mResults);
      goto LABEL_11;
    }

    v7 = THBundle();
    v8 = @"1 result found total";
  }

  else
  {
    v7 = THBundle();
    v8 = @"No results found total";
  }

  v9 = [v7 localizedStringForKey:v8 value:&stru_471858 table:0];
LABEL_11:
  v10 = v9;
  v11 = self->mPercentFoundLabel;

  [(UILabel *)v11 setText:v10];
}

- (void)setFooterType:(int)type
{
  self->mFooterType = type;
  if (type == 1)
  {
    mFooterLabel = self->mFooterLabel;

    [(UILabel *)mFooterLabel setHidden:?];
  }

  else if (type)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  else
  {
    [(UILabel *)self->mFooterLabel setHidden:0];
    v4 = [THBundle() localizedStringForKey:@"Tap the Study Cards button to view this chapter’s glossary terms." value:&stru_471858 table:0];
    v5 = self->mFooterLabel;

    [(UILabel *)v5 setText:v4];
  }
}

- (void)setMessageType:(int)type
{
  self->mMessageType = type;
  if (type >= 2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (CGSize)sizeForContainerView:(id)view
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  subviews = [view subviews];
  v6 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = 0.0;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [v11 tag];
        if ((v12 - 3) < 7 || v12 == &dword_0 + 1 && [(THNotesNoSearchResultsViewController *)self p_shouldShowNoteIcon])
        {
          [v11 intrinsicContentSize];
          v9 = v9 + v13;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v14 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
      v7 = v14;
    }

    while (v14);
  }

  else
  {
    v9 = 0.0;
  }

  mInstructionsViewWidth = UIViewNoIntrinsicMetric;
  if (self->mNoResultsView == view)
  {
    [(THNotesNoSearchResultsViewController *)self p_getConstraint:@"NoResultsViewHeaderVerticalSpace" onView:self->mNoResultsViewHeader];
    v9 = v9 + v21;
    v19 = @"NoResultsViewPercentFoundVerticalSpace";
    v20 = &OBJC_IVAR___THNotesNoSearchResultsViewController_mPercentFoundLabel;
    goto LABEL_24;
  }

  if (self->mFirstLaunchView == view)
  {
    if ([(THNotesNoSearchResultsViewController *)self p_shouldShowNoteIcon])
    {
      [(THNotesNoSearchResultsViewController *)self p_getConstraint:@"FirstLaunchViewHeaderVerticalSpace" onView:self->mFirstLaunchViewHeader];
      v23 = v22;
      [[(UIImageView *)self->mNoteIcon image] size];
      v9 = v9 + v23 - v24;
    }

    v19 = @"FirstLaunchViewInstructionsViewVerticalSpace";
    v20 = &OBJC_IVAR___THNotesNoSearchResultsViewController_mInstructionsView;
    goto LABEL_24;
  }

  if (self->mInstructionsView == view)
  {
    mInstructionsViewWidth = self->mInstructionsViewWidth;
    [(THNotesNoSearchResultsViewController *)self p_getConstraint:@"FirstLaunchViewStepOneVerticalSpace" onView:self->mStepOneLabel];
    v17 = v9 + v16;
    [(THNotesNoSearchResultsViewController *)self p_getConstraint:@"FirstLaunchViewStepTwoVerticalSpace" onView:self->mStepTwoLabel];
    v9 = v17 + v18;
    v19 = @"FirstLaunchViewStepThreeVerticalSpace";
    v20 = &OBJC_IVAR___THNotesNoSearchResultsViewController_mStepThreeLabel;
LABEL_24:
    [(THNotesNoSearchResultsViewController *)self p_getConstraint:v19 onView:*(&self->super.super.super.isa + *v20)];
    v9 = v9 + v25;
  }

  v26 = mInstructionsViewWidth;
  v27 = v9;
  result.height = v27;
  result.width = v26;
  return result;
}

@end