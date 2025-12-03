@interface RAPTableCollapsableCheckmarkSection
- (RAPTableCollapsableCheckmarkSection)initWithOwner:(id)owner initialValues:(id)values initialSelectedValue:(id)value configureForValue:(id)forValue selection:(id)selection;
- (void)_sharedInit;
- (void)_showAll;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
- (void)selectedValueDidChange;
- (void)setHeaderTitle:(id)title;
- (void)setValues:(id)values;
- (void)toggleCollapse;
@end

@implementation RAPTableCollapsableCheckmarkSection

- (void)toggleCollapse
{
  tableView = [(RAPTablePartSection *)self tableView];
  selectedValue = [(RAPTableCheckmarkRadioSection *)self selectedValue];
  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    selectedIndex = -1;
  }

  else
  {
    selectedIndex = self->_selectedIndex;
  }

  [RAPCollapsableHeaderFooterView toggleCollapseForTableView:tableView AtSection:0 withSelectedValue:selectedValue withSelectedIndex:selectedIndex withAllValues:self->_originalValues];
}

- (void)selectedValueDidChange
{
  if ([(NSArray *)self->_originalValues count]== 1)
  {
    selfCopy = self;
    v3 = &selfCopy;
  }

  else
  {
    selectedValue = [(RAPTableCheckmarkRadioSection *)self selectedValue];

    if (selectedValue)
    {
      selectedValue2 = [(RAPTableCheckmarkRadioSection *)self selectedValue];
      v14 = selectedValue2;
      v6 = [NSArray arrayWithObjects:&v14 count:1];
      values = self->super._values;
      self->super._values = v6;

      originalValues = self->_originalValues;
      selectedValue3 = [(RAPTableCheckmarkRadioSection *)self selectedValue];
      self->_selectedIndex = [(NSArray *)originalValues indexOfObject:selectedValue3];
    }

    if ([(NSArray *)self->_originalValues count]< 2)
    {
      v11 = 0;
    }

    else
    {
      selectedValue4 = [(RAPTableCheckmarkRadioSection *)self selectedValue];
      v11 = selectedValue4 != 0;
    }

    [(RAPCollapsableHeaderFooterView *)self->_collapsableHeaderView setShowAllButtonVisible:v11];
    [(RAPTableCollapsableCheckmarkSection *)self toggleCollapse];
    selfCopy2 = self;
    v3 = &selfCopy2;
  }

  v3[1] = RAPTableCollapsableCheckmarkSection;
  objc_msgSendSuper2(v3, "selectedValueDidChange", selfCopy2);
}

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  if (index || self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9.receiver = self;
    v9.super_class = RAPTableCollapsableCheckmarkSection;
    pathCopy = path;
    [(RAPTableCheckmarkRadioSection *)&v9 didSelectCellForRowAtIndex:index tableIndexPath:pathCopy];
  }

  else
  {
    pathCopy2 = path;
    tableView = [(RAPTablePartSection *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy2 animated:1];

    [(RAPTableCollapsableCheckmarkSection *)self _showAll];
  }
}

- (void)_showAll
{
  objc_storeStrong(&self->super._values, self->_originalValues);
  [(RAPTableCheckmarkRadioSection *)self setSelectedValue:0];
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setValues:(id)values
{
  valuesCopy = values;
  v5 = valuesCopy;
  if (self->super._values != valuesCopy)
  {
    v6 = [(NSArray *)valuesCopy copy];
    originalValues = self->_originalValues;
    self->_originalValues = v6;

    selectedValue = [(RAPTableCheckmarkRadioSection *)self selectedValue];
    if (selectedValue)
    {
      v9 = self->_originalValues;
      selectedValue2 = [(RAPTableCheckmarkRadioSection *)self selectedValue];
      self->_selectedIndex = [(NSArray *)v9 indexOfObject:selectedValue2];
    }

    else
    {
      self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v11.receiver = self;
  v11.super_class = RAPTableCollapsableCheckmarkSection;
  [(RAPTableCheckmarkRadioSection *)&v11 setValues:v5];
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_headerTitle] & 1) == 0)
  {
    [(RAPHeaderFooterView *)self->_collapsableHeaderView setTitleLabelText:titleCopy];
  }

  v5.receiver = self;
  v5.super_class = RAPTableCollapsableCheckmarkSection;
  [(RAPTablePartSection *)&v5 setHeaderTitle:titleCopy];
}

- (void)_sharedInit
{
  v3 = [(RAPHeaderFooterView *)[RAPCollapsableHeaderFooterView alloc] initWithReuseIdentifier:@"RAPSearchResultsHeaderView"];
  collapsableHeaderView = self->_collapsableHeaderView;
  self->_collapsableHeaderView = v3;

  [(RAPCollapsableHeaderFooterView *)self->_collapsableHeaderView setTarget:self action:"_showAll"];
  v5 = self->_collapsableHeaderView;

  [(RAPTablePartSection *)self setHeaderView:v5];
}

- (RAPTableCollapsableCheckmarkSection)initWithOwner:(id)owner initialValues:(id)values initialSelectedValue:(id)value configureForValue:(id)forValue selection:(id)selection
{
  selectionCopy = selection;
  valueCopy = value;
  valuesCopy = values;
  ownerCopy = owner;
  v16 = [forValue copy];
  v17 = [selectionCopy copy];

  v20.receiver = self;
  v20.super_class = RAPTableCollapsableCheckmarkSection;
  v18 = [(RAPTableCheckmarkRadioSection *)&v20 initWithOwner:ownerCopy initialValues:valuesCopy initialSelectedValue:valueCopy configureForValue:v16 selection:v17];

  if (v18)
  {
    [(RAPTableCollapsableCheckmarkSection *)v18 _sharedInit];
  }

  return v18;
}

@end