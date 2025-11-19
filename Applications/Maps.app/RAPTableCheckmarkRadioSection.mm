@interface RAPTableCheckmarkRadioSection
- (RAPTableCheckmarkRadioSection)initWithOwner:(id)a3 initialValues:(id)a4 initialSelectedValue:(id)a5 configureForValue:(id)a6 selection:(id)a7;
- (id)cellForRowAtIndex:(int64_t)a3;
- (id)dequeueCellForValue:(id)a3;
- (void)configureCell:(id)a3 forValue:(id)a4;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
- (void)registerReuseIdentifiersForCells;
- (void)selectedValueDidChange;
- (void)setSelectedValue:(id)a3;
- (void)setValues:(id)a3;
@end

@implementation RAPTableCheckmarkRadioSection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(RAPTablePartSection *)self tableView];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v8 = [(RAPTableCheckmarkRadioSection *)self values];
  v9 = [v8 objectAtIndexedSubscript:a3];

  [(RAPTableCheckmarkRadioSection *)self setSelectedValue:v9];
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v5 = [(RAPTableCheckmarkRadioSection *)self values];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(RAPTableCheckmarkRadioSection *)self dequeueCellForValue:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(RAPTableCheckmarkRadioSection *)self selectedValue];
    [v8 setChecked:v9 == v6];
  }

  else
  {
    v10 = [(RAPTableCheckmarkRadioSection *)self selectedValue];

    if (v10 == v6)
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

- (void)setSelectedValue:(id)a3
{
  v27 = a3;
  if (self->_selectedValue != v27)
  {
    objc_storeStrong(&self->_selectedValue, a3);
    v5 = [(RAPTablePartSection *)self sectionIndex];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [(RAPTablePartSection *)self tableView];
    v7 = [v6 indexPathsForVisibleRows];

    v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          if ([v13 section] == v5)
          {
            v14 = [(RAPTablePartSection *)self tableView];
            v15 = [v14 cellForRowAtIndexPath:v13];

            v16 = [v13 row];
            v17 = [(RAPTableCheckmarkRadioSection *)self values];
            if (v16 >= [v17 count])
            {
              v25 = 0;
            }

            else
            {
              [(RAPTableCheckmarkRadioSection *)self values];
              v18 = v10;
              v19 = self;
              v20 = v5;
              v21 = v7;
              v23 = v22 = p_superclass;
              v24 = [v23 objectAtIndexedSubscript:v16];
              v25 = v24 == v27;

              p_superclass = v22;
              v7 = v21;
              v5 = v20;
              self = v19;
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
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    [(RAPTableCheckmarkRadioSection *)self selectedValueDidChange];
  }
}

- (void)setValues:(id)a3
{
  v10 = a3;
  if (self->_values != v10)
  {
    v4 = [(RAPTableCheckmarkRadioSection *)self selectedValue];
    if (v4)
    {
      v5 = [(NSArray *)v10 containsObject:v4];
      v6 = [(NSArray *)v10 copy];
      values = self->_values;
      self->_values = v6;

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = [(NSArray *)v10 copy];
      v9 = self->_values;
      self->_values = v8;
    }

    [(RAPTableCheckmarkRadioSection *)self setSelectedValue:0];
LABEL_7:
    [(RAPTablePartSection *)self didChange];
  }
}

- (void)configureCell:(id)a3 forValue:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_configure)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    if (WeakRetained)
    {
      (*(self->_configure + 2))();
    }
  }
}

- (id)dequeueCellForValue:(id)a3
{
  v4 = a3;
  v5 = [(RAPTableCheckmarkRadioSection *)self defaultCellClass];
  v6 = +[RAPCheckmarkTableViewCell reuseIdentifier];
  if (v5)
  {
    v7 = NSStringFromClass(v5);

    v8 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:v7];
    v6 = v7;
  }

  else
  {
    v8 = [[RAPCheckmarkTableViewCell alloc] initWithStyle:0 reuseIdentifier:v6];
  }

  [(RAPCheckmarkTableViewCell *)v8 setSelectionStyle:0];
  [(RAPTableCheckmarkRadioSection *)self configureCell:v8 forValue:v4];

  return v8;
}

- (void)registerReuseIdentifiersForCells
{
  v6.receiver = self;
  v6.super_class = RAPTableCheckmarkRadioSection;
  [(RAPTablePartSection *)&v6 registerReuseIdentifiersForCells];
  v3 = [(RAPTableCheckmarkRadioSection *)self defaultCellClass];
  if (v3)
  {
    v4 = v3;
    v5 = NSStringFromClass(v3);
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

- (RAPTableCheckmarkRadioSection)initWithOwner:(id)a3 initialValues:(id)a4 initialSelectedValue:(id)a5 configureForValue:(id)a6 selection:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = RAPTableCheckmarkRadioSection;
  v17 = [(RAPTablePartSection *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_owner, v12);
    [(RAPTableCheckmarkRadioSection *)v18 setValues:v13];
    v19 = [v15 copy];
    configure = v18->_configure;
    v18->_configure = v19;

    v21 = [v16 copy];
    selection = v18->_selection;
    v18->_selection = v21;

    [(RAPTableCheckmarkRadioSection *)v18 setSelectedValue:v14];
  }

  return v18;
}

@end