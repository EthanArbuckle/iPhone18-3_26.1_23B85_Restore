@interface RAPReportComposerMenuSection
- (RAPReportComposerMenuSection)initWithMenu:(id)menu headerText:(id)text menuSectionIndex:(unint64_t)index selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerMenuSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  v7 = [NSIndexPath indexPathForRow:index inSection:self->_sectionIndex];
  v5 = [(RAPMenu *)self->_question menuItemForIndexPath:?];
  [(RAPMenu *)self->_question setSelectedMenuItem:v5];
  selection = self->_selection;
  if (selection)
  {
    selection[2](selection, self, v5);
  }
}

- (id)cellForRowAtIndex:(int64_t)index
{
  shouldShowSubtitles = [(RAPMenu *)self->_question shouldShowSubtitles];
  v6 = [NSIndexPath indexPathForRow:index inSection:self->_sectionIndex];
  v7 = [(RAPMenu *)self->_question menuItemForIndexPath:v6];
  if ([(RAPMenu *)self->_question shouldUseNewIncidentCells])
  {
    tableView = [(RAPTablePartSection *)self tableView];
    v9 = +[RAPIncidentsMenuTableViewCell reuseIdentifier];
    dequeueDefaultSingleLineTableViewCell = [tableView dequeueReusableCellWithIdentifier:v9];

    if (!dequeueDefaultSingleLineTableViewCell)
    {
      v11 = RAPIncidentsMenuTableViewCell;
LABEL_7:
      dequeueDefaultSingleLineTableViewCell = objc_alloc_init(v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (shouldShowSubtitles)
  {
    tableView2 = [(RAPTablePartSection *)self tableView];
    v13 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    dequeueDefaultSingleLineTableViewCell = [tableView2 dequeueReusableCellWithIdentifier:v13];

    if (!dequeueDefaultSingleLineTableViewCell)
    {
      v11 = RAPTwoLinesMenuTableViewCell;
      goto LABEL_7;
    }

LABEL_8:
    v14 = [RAPTwoLinesViewModelImpl viewModelFromRAPMenuItem:v7];
    [dequeueDefaultSingleLineTableViewCell setViewModel:v14];

    goto LABEL_10;
  }

  dequeueDefaultSingleLineTableViewCell = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  textLabel = [dequeueDefaultSingleLineTableViewCell textLabel];
  [textLabel setFont:v15];

  localizedTitle = [v7 localizedTitle];
  textLabel2 = [dequeueDefaultSingleLineTableViewCell textLabel];
  [textLabel2 setText:localizedTitle];

  [dequeueDefaultSingleLineTableViewCell setAccessoryType:1];
LABEL_10:

  return dequeueDefaultSingleLineTableViewCell;
}

- (RAPReportComposerMenuSection)initWithMenu:(id)menu headerText:(id)text menuSectionIndex:(unint64_t)index selection:(id)selection
{
  menuCopy = menu;
  textCopy = text;
  selectionCopy = selection;
  v19.receiver = self;
  v19.super_class = RAPReportComposerMenuSection;
  v14 = [(RAPTablePartSection *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_question, menu);
    v15->_sectionIndex = index;
    [(RAPTablePartSection *)v15 setHeaderTitle:textCopy];
    v16 = [selectionCopy copy];
    selection = v15->_selection;
    v15->_selection = v16;
  }

  return v15;
}

@end