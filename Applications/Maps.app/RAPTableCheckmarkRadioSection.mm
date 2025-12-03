@interface RAPTableCheckmarkRadioSection
- (RAPTableCheckmarkRadioSection)initWithOwner:(id)owner initialValues:(id)values initialSelectedValue:(id)value configureForValue:(id)forValue selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)dequeueCellForValue:(id)value;
- (void)configureCell:(id)cell forValue:(id)value;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
- (void)registerReuseIdentifiersForCells;
- (void)selectedValueDidChange;
- (void)setSelectedValue:(id)value;
- (void)setValues:(id)values;
@end

@implementation RAPTableCheckmarkRadioSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(RAPTablePartSection *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  values = [(RAPTableCheckmarkRadioSection *)self values];
  v9 = [values objectAtIndexedSubscript:index];

  [(RAPTableCheckmarkRadioSection *)self setSelectedValue:v9];
}

- (id)cellForRowAtIndex:(int64_t)index
{
  values = [(RAPTableCheckmarkRadioSection *)self values];
  v6 = [values objectAtIndexedSubscript:index];

  v7 = [(RAPTableCheckmarkRadioSection *)self dequeueCellForValue:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    selectedValue = [(RAPTableCheckmarkRadioSection *)self selectedValue];
    [v8 setChecked:selectedValue == v6];
  }

  else
  {
    selectedValue2 = [(RAPTableCheckmarkRadioSection *)self selectedValue];

    if (selectedValue2 == v6)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    [v7 setAccessoryType:v11];
  }

  return v7;
}

- (void)setSelectedValue:(id)value
{
  valueCopy = value;
  if (self->_selectedValue != valueCopy)
  {
    objc_storeStrong(&self->_selectedValue, value);
    sectionIndex = [(RAPTablePartSection *)self sectionIndex];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    tableView = [(RAPTablePartSection *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    v8 = [indexPathsForVisibleRows countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      p_superclass = RAPMarkerViewAttributes.superclass;
      do
      {
        v12 = 0;
        v28 = v9;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(indexPathsForVisibleRows);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          if ([v13 section] == sectionIndex)
          {
            tableView2 = [(RAPTablePartSection *)self tableView];
            v15 = [tableView2 cellForRowAtIndexPath:v13];

            v16 = [v13 row];
            values = [(RAPTableCheckmarkRadioSection *)self values];
            if (v16 >= [values count])
            {
              v25 = 0;
            }

            else
            {
              [(RAPTableCheckmarkRadioSection *)self values];
              v18 = v10;
              selfCopy = self;
              v20 = sectionIndex;
              v21 = indexPathsForVisibleRows;
              v23 = v22 = p_superclass;
              v24 = [v23 objectAtIndexedSubscript:v16];
              v25 = v24 == valueCopy;

              p_superclass = v22;
              indexPathsForVisibleRows = v21;
              sectionIndex = v20;
              self = selfCopy;
              v10 = v18;
              v9 = v28;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 setChecked:v25];
            }

            else
            {
              if (v25)
              {
                v26 = 3;
              }

              else
              {
                v26 = 0;
              }

              [v15 setAccessoryType:v26];
            }
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [indexPathsForVisibleRows countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    [(RAPTableCheckmarkRadioSection *)self selectedValueDidChange];
  }
}

- (void)setValues:(id)values
{
  valuesCopy = values;
  if (self->_values != valuesCopy)
  {
    selectedValue = [(RAPTableCheckmarkRadioSection *)self selectedValue];
    if (selectedValue)
    {
      v5 = [(NSArray *)valuesCopy containsObject:selectedValue];
      v6 = [(NSArray *)valuesCopy copy];
      values = self->_values;
      self->_values = v6;

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = [(NSArray *)valuesCopy copy];
      v9 = self->_values;
      self->_values = v8;
    }

    [(RAPTableCheckmarkRadioSection *)self setSelectedValue:0];
LABEL_7:
    [(RAPTablePartSection *)self didChange];
  }
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
      (*(self->_configure + 2))();
    }
  }
}

- (id)dequeueCellForValue:(id)value
{
  valueCopy = value;
  defaultCellClass = [(RAPTableCheckmarkRadioSection *)self defaultCellClass];
  v6 = +[RAPCheckmarkTableViewCell reuseIdentifier];
  if (defaultCellClass)
  {
    v7 = NSStringFromClass(defaultCellClass);

    v8 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:v7];
    v6 = v7;
  }

  else
  {
    v8 = [[RAPCheckmarkTableViewCell alloc] initWithStyle:0 reuseIdentifier:v6];
  }

  [(RAPCheckmarkTableViewCell *)v8 setSelectionStyle:0];
  [(RAPTableCheckmarkRadioSection *)self configureCell:v8 forValue:valueCopy];

  return v8;
}

- (void)registerReuseIdentifiersForCells
{
  v6.receiver = self;
  v6.super_class = RAPTableCheckmarkRadioSection;
  [(RAPTablePartSection *)&v6 registerReuseIdentifiersForCells];
  defaultCellClass = [(RAPTableCheckmarkRadioSection *)self defaultCellClass];
  if (defaultCellClass)
  {
    v4 = defaultCellClass;
    v5 = NSStringFromClass(defaultCellClass);
    [(RAPTablePartSection *)self registerClass:v4 forNamespacedReuseIdentifier:v5];
  }
}

- (void)selectedValueDidChange
{
  if (self->_selection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      (*(self->_selection + 2))();
      WeakRetained = v4;
    }
  }
}

- (RAPTableCheckmarkRadioSection)initWithOwner:(id)owner initialValues:(id)values initialSelectedValue:(id)value configureForValue:(id)forValue selection:(id)selection
{
  ownerCopy = owner;
  valuesCopy = values;
  valueCopy = value;
  forValueCopy = forValue;
  selectionCopy = selection;
  v24.receiver = self;
  v24.super_class = RAPTableCheckmarkRadioSection;
  v17 = [(RAPTablePartSection *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_owner, ownerCopy);
    [(RAPTableCheckmarkRadioSection *)v18 setValues:valuesCopy];
    v19 = [forValueCopy copy];
    configure = v18->_configure;
    v18->_configure = v19;

    v21 = [selectionCopy copy];
    selection = v18->_selection;
    v18->_selection = v21;

    [(RAPTableCheckmarkRadioSection *)v18 setSelectedValue:valueCopy];
  }

  return v18;
}

@end