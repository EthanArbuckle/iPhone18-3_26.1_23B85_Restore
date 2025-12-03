@interface EKEventEditedByDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (BOOL)hasDetailViewControllerAtIndex:(unint64_t)index;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)shortenCell:(id)cell;
@end

@implementation EKEventEditedByDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v6 = [(EKEvent *)self->super._event calendar:event];
  if ([v6 sharingStatus] && -[EKEvent isEditable](self->super._event, "isEditable"))
  {
    sharedItemModifiedByDisplayName = [(EKEvent *)self->super._event sharedItemModifiedByDisplayName];
    if (sharedItemModifiedByDisplayName && ([(EKEvent *)self->super._event sharedItemModifiedDate], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = 1;
    }

    else
    {
      sharedItemCreatedByDisplayName = [(EKEvent *)self->super._event sharedItemCreatedByDisplayName];
      if (sharedItemCreatedByDisplayName)
      {
        v11 = sharedItemCreatedByDisplayName;
        sharedItemCreatedDate = [(EKEvent *)self->super._event sharedItemCreatedDate];
        v9 = sharedItemCreatedDate != 0;

        if (!sharedItemModifiedByDisplayName)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
        if (!sharedItemModifiedByDisplayName)
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      v8 = 0;
    }

    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  cell = self->_cell;
  if (!cell)
  {
    width = [(EKEventEditedByDetailItem *)self cellForSubitemAtIndex:index, update, width];
    cell = self->_cell;
  }

  [(UITableViewCell *)cell frame:index];
  return v8;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    sharedItemCreatedDate = [(EKEvent *)self->super._event sharedItemCreatedDate];
    sharedItemModifiedDate = [(EKEvent *)self->super._event sharedItemModifiedDate];
    v8 = [sharedItemCreatedDate compare:sharedItemModifiedDate];

    event = self->super._event;
    if (v8)
    {
      sharedItemModifiedDate2 = [(EKEvent *)event sharedItemModifiedDate];
      v11 = [[EKEventDetailTwoValueCell alloc] initWithEvent:self->super._event editable:1 platformStyle:0];
      v12 = self->_cell;
      self->_cell = &v11->super.super.super;

      sharedItemModifiedDate = EventKitUIBundle();
      [sharedItemModifiedDate localizedStringForKey:@"Edited by" value:&stru_1F4EF6790 table:0];
    }

    else
    {
      sharedItemModifiedDate2 = [(EKEvent *)event sharedItemCreatedDate];
      v14 = [[EKEventDetailTwoValueCell alloc] initWithEvent:self->super._event editable:1 platformStyle:0];
      v15 = self->_cell;
      self->_cell = &v14->super.super.super;

      v3 = EventKitUIBundle();
      [v3 localizedStringForKey:@"Created by" value:&stru_1F4EF6790 table:0];
    }
    v13 = ;
    titleView = [(UITableViewCell *)self->_cell titleView];
    [titleView setText:v13];

    if (v8)
    {

      [(EKEvent *)self->super._event sharedItemModifiedByDisplayName];
    }

    else
    {

      [(EKEvent *)self->super._event sharedItemCreatedByDisplayName];
    }
    v17 = ;
    valueView = [(UITableViewCell *)self->_cell valueView];
    [valueView setText:v17];

    v19 = CUIKStringForDateAndTime();
    value2View = [(UITableViewCell *)self->_cell value2View];
    [value2View setText:v19];

    [(UITableViewCell *)self->_cell update];
    [(UITableViewCell *)self->_cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:300.0];

    cell = self->_cell;
  }

  return cell;
}

- (void)shortenCell:(id)cell
{
  event = self->super._event;
  cellCopy = cell;
  startDate = [(EKEvent *)event startDate];
  v5 = CUIKStringForTimeWithTZIfDivergent();
  value2View = [cellCopy value2View];

  [value2View setText:v5];
}

- (BOOL)hasDetailViewControllerAtIndex:(unint64_t)index
{
  sharedItemCreatedDate = [(EKEvent *)self->super._event sharedItemCreatedDate];
  sharedItemModifiedDate = [(EKEvent *)self->super._event sharedItemModifiedDate];
  v6 = [sharedItemCreatedDate compare:sharedItemModifiedDate];

  event = self->super._event;
  if (v6)
  {
    [(EKEvent *)event sharedItemModifiedByAddress];
  }

  else
  {
    [(EKEvent *)event sharedItemCreatedByAddress];
  }
  v8 = ;
  v9 = v8 != 0;

  return v9;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v5 = [(EKEvent *)self->super._event sharedItemCreatedDate:index];
  sharedItemModifiedDate = [(EKEvent *)self->super._event sharedItemModifiedDate];
  v7 = [v5 compare:sharedItemModifiedDate];

  event = self->super._event;
  if (v7)
  {
    sharedItemModifiedByDisplayName = [(EKEvent *)event sharedItemModifiedByDisplayName];
    [(EKEvent *)self->super._event sharedItemModifiedByAddress];
  }

  else
  {
    sharedItemModifiedByDisplayName = [(EKEvent *)event sharedItemCreatedByDisplayName];
    [(EKEvent *)self->super._event sharedItemCreatedByAddress];
  }
  v10 = ;
  v11 = [MEMORY[0x1E6966AE8] shareeWithName:sharedItemModifiedByDisplayName url:v10];
  v12 = [[EKIdentityViewController alloc] initWithIdentity:v11];

  return v12;
}

@end