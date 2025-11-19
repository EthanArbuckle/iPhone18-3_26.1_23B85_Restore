@interface RAPReportComposerMenuSection
- (RAPReportComposerMenuSection)initWithMenu:(id)a3 headerText:(id)a4 menuSectionIndex:(unint64_t)a5 selection:(id)a6;
- (id)cellForRowAtIndex:(int64_t)a3;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
@end

@implementation RAPReportComposerMenuSection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v7 = [NSIndexPath indexPathForRow:a3 inSection:self->_sectionIndex];
  v5 = [(RAPMenu *)self->_question menuItemForIndexPath:?];
  [(RAPMenu *)self->_question setSelectedMenuItem:v5];
  selection = self->_selection;
  if (selection)
  {
    selection[2](selection, self, v5);
  }
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v5 = [(RAPMenu *)self->_question shouldShowSubtitles];
  v6 = [NSIndexPath indexPathForRow:a3 inSection:self->_sectionIndex];
  v7 = [(RAPMenu *)self->_question menuItemForIndexPath:v6];
  if ([(RAPMenu *)self->_question shouldUseNewIncidentCells])
  {
    v8 = [(RAPTablePartSection *)self tableView];
    v9 = +[RAPIncidentsMenuTableViewCell reuseIdentifier];
    v10 = [v8 dequeueReusableCellWithIdentifier:v9];

    if (!v10)
    {
      v11 = RAPIncidentsMenuTableViewCell;
LABEL_7:
      v10 = objc_alloc_init(v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v12 = [(RAPTablePartSection *)self tableView];
    v13 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    v10 = [v12 dequeueReusableCellWithIdentifier:v13];

    if (!v10)
    {
      v11 = RAPTwoLinesMenuTableViewCell;
      goto LABEL_7;
    }

LABEL_8:
    v14 = [RAPTwoLinesViewModelImpl viewModelFromRAPMenuItem:v7];
    [v10 setViewModel:v14];

    goto LABEL_10;
  }

  v10 = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v16 = [v10 textLabel];
  [v16 setFont:v15];

  v17 = [v7 localizedTitle];
  v18 = [v10 textLabel];
  [v18 setText:v17];

  [v10 setAccessoryType:1];
LABEL_10:

  return v10;
}

- (RAPReportComposerMenuSection)initWithMenu:(id)a3 headerText:(id)a4 menuSectionIndex:(unint64_t)a5 selection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = RAPReportComposerMenuSection;
  v14 = [(RAPTablePartSection *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_question, a3);
    v15->_sectionIndex = a5;
    [(RAPTablePartSection *)v15 setHeaderTitle:v12];
    v16 = [v13 copy];
    selection = v15->_selection;
    v15->_selection = v16;
  }

  return v15;
}

@end