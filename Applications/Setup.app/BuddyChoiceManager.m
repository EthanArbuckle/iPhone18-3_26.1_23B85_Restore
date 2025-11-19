@interface BuddyChoiceManager
- (BFFFlowItemDelegate)delegate;
- (BuddyChoiceManager)initWithFlowItem:(id)a3;
- (BuddyChooseable)chooseableDelegate;
- (void)_tappedChoice:(id)a3;
- (void)selectChoice:(id)a3;
- (void)setChoices:(id)a3;
@end

@implementation BuddyChoiceManager

- (BuddyChoiceManager)initWithFlowItem:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = BuddyChoiceManager;
  v4 = [(BuddyChoiceManager *)&v7 init];
  v9 = v4;
  objc_storeStrong(&v9, v4);
  if (v4)
  {
    objc_storeWeak(v9 + 3, location[0]);
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setChoices:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_choices != location[0])
  {
    [(NSArray *)v4->_choices makeObjectsPerformSelector:"setChoiceController:" withObject:0];
    objc_storeStrong(&v4->_choices, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_tappedChoice:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F65B4;
  v8 = &unk_10032AEF0;
  v9 = v12;
  v10 = location[0];
  [v3 runConfirmationIfNeededCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)selectChoice:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyChoiceManager *)v8 chooseableDelegate];
  v4 = v3 == 0;

  if (v4)
  {
    v5 = [(BuddyChoiceManager *)v8 delegate];
    v6 = [(BuddyChoiceManager *)v8 chooseableDelegate];
    -[BFFFlowItemDelegate flowItemDone:nextItemClass:](v5, "flowItemDone:nextItemClass:", v6, [location[0] nextControllerClass]);
  }

  else
  {
    v5 = [(BuddyChoiceManager *)v8 chooseableDelegate];
    [(BFFFlowItemDelegate *)v5 didSelectChoice:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BuddyChooseable)chooseableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chooseableDelegate);

  return WeakRetained;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end