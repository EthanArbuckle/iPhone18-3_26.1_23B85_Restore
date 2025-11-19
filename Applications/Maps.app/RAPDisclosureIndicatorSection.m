@interface RAPDisclosureIndicatorSection
- (RAPDisclosureIndicatorSection)initWithOwner:(id)a3 initialValues:(id)a4 configureForValue:(id)a5 selection:(id)a6;
- (id)cellForRowAtIndex:(int64_t)a3;
- (void)configureCell:(id)a3 forValue:(id)a4;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
- (void)selected:(id)a3;
- (void)setValues:(id)a3;
@end

@implementation RAPDisclosureIndicatorSection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(RAPTablePartSection *)self tableView];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v9 = [(RAPDisclosureIndicatorSection *)self values];
  v8 = [v9 objectAtIndexedSubscript:a3];
  [(RAPDisclosureIndicatorSection *)self selected:v8];
}

- (void)configureCell:(id)a3 forValue:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_configure)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);

    if (WeakRetained)
    {
      configure = self->_configure;
      v9 = objc_loadWeakRetained(&self->_owner);
      configure[2](configure, self, v9, v10, v6);
    }
  }
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v5 = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  [v5 setAccessoryType:1];
  v6 = [(RAPDisclosureIndicatorSection *)self values];
  v7 = [v6 objectAtIndexedSubscript:a3];
  [(RAPDisclosureIndicatorSection *)self configureCell:v5 forValue:v7];

  return v5;
}

- (void)selected:(id)a3
{
  v7 = a3;
  if (self->_selection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);

    if (WeakRetained)
    {
      selection = self->_selection;
      v6 = objc_loadWeakRetained(&self->_owner);
      selection[2](selection, v6, v7);
    }
  }
}

- (void)setValues:(id)a3
{
  if (self->_values != a3)
  {
    v4 = [a3 copy];
    values = self->_values;
    self->_values = v4;

    [(RAPTablePartSection *)self didChange];
  }
}

- (RAPDisclosureIndicatorSection)initWithOwner:(id)a3 initialValues:(id)a4 configureForValue:(id)a5 selection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = RAPDisclosureIndicatorSection;
  v14 = [(RAPTablePartSection *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_owner, v10);
    v16 = [v11 copy];
    values = v15->_values;
    v15->_values = v16;

    v18 = [v12 copy];
    configure = v15->_configure;
    v15->_configure = v18;

    v20 = [v13 copy];
    selection = v15->_selection;
    v15->_selection = v20;
  }

  return v15;
}

@end