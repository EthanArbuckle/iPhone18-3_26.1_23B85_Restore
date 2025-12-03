@interface RAPDisclosureIndicatorSection
- (RAPDisclosureIndicatorSection)initWithOwner:(id)owner initialValues:(id)values configureForValue:(id)value selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (void)configureCell:(id)cell forValue:(id)value;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
- (void)selected:(id)selected;
- (void)setValues:(id)values;
@end

@implementation RAPDisclosureIndicatorSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(RAPTablePartSection *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  values = [(RAPDisclosureIndicatorSection *)self values];
  v8 = [values objectAtIndexedSubscript:index];
  [(RAPDisclosureIndicatorSection *)self selected:v8];
}

- (void)configureCell:(id)cell forValue:(id)value
{
  cellCopy = cell;
  valueCopy = value;
  if (self->_configure)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);

    if (WeakRetained)
    {
      configure = self->_configure;
      v9 = objc_loadWeakRetained(&self->_owner);
      configure[2](configure, self, v9, cellCopy, valueCopy);
    }
  }
}

- (id)cellForRowAtIndex:(int64_t)index
{
  dequeueDefaultSingleLineTableViewCell = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  [dequeueDefaultSingleLineTableViewCell setAccessoryType:1];
  values = [(RAPDisclosureIndicatorSection *)self values];
  v7 = [values objectAtIndexedSubscript:index];
  [(RAPDisclosureIndicatorSection *)self configureCell:dequeueDefaultSingleLineTableViewCell forValue:v7];

  return dequeueDefaultSingleLineTableViewCell;
}

- (void)selected:(id)selected
{
  selectedCopy = selected;
  if (self->_selection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);

    if (WeakRetained)
    {
      selection = self->_selection;
      v6 = objc_loadWeakRetained(&self->_owner);
      selection[2](selection, v6, selectedCopy);
    }
  }
}

- (void)setValues:(id)values
{
  if (self->_values != values)
  {
    v4 = [values copy];
    values = self->_values;
    self->_values = v4;

    [(RAPTablePartSection *)self didChange];
  }
}

- (RAPDisclosureIndicatorSection)initWithOwner:(id)owner initialValues:(id)values configureForValue:(id)value selection:(id)selection
{
  ownerCopy = owner;
  valuesCopy = values;
  valueCopy = value;
  selectionCopy = selection;
  v23.receiver = self;
  v23.super_class = RAPDisclosureIndicatorSection;
  v14 = [(RAPTablePartSection *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_owner, ownerCopy);
    v16 = [valuesCopy copy];
    values = v15->_values;
    v15->_values = v16;

    v18 = [valueCopy copy];
    configure = v15->_configure;
    v15->_configure = v18;

    v20 = [selectionCopy copy];
    selection = v15->_selection;
    v15->_selection = v20;
  }

  return v15;
}

@end