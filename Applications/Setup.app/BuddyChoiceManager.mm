@interface BuddyChoiceManager
- (BFFFlowItemDelegate)delegate;
- (BuddyChoiceManager)initWithFlowItem:(id)item;
- (BuddyChooseable)chooseableDelegate;
- (void)_tappedChoice:(id)choice;
- (void)selectChoice:(id)choice;
- (void)setChoices:(id)choices;
@end

@implementation BuddyChoiceManager

- (BuddyChoiceManager)initWithFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = BuddyChoiceManager;
  v4 = [(BuddyChoiceManager *)&v7 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    objc_storeWeak(selfCopy + 3, location[0]);
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setChoices:(id)choices
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choices);
  if (selfCopy->_choices != location[0])
  {
    [(NSArray *)selfCopy->_choices makeObjectsPerformSelector:"setChoiceController:" withObject:0];
    objc_storeStrong(&selfCopy->_choices, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_tappedChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F65B4;
  v8 = &unk_10032AEF0;
  v9 = selfCopy;
  v10 = location[0];
  [v3 runConfirmationIfNeededCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)selectChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  chooseableDelegate = [(BuddyChoiceManager *)selfCopy chooseableDelegate];
  v4 = chooseableDelegate == 0;

  if (v4)
  {
    delegate = [(BuddyChoiceManager *)selfCopy delegate];
    chooseableDelegate2 = [(BuddyChoiceManager *)selfCopy chooseableDelegate];
    -[BFFFlowItemDelegate flowItemDone:nextItemClass:](delegate, "flowItemDone:nextItemClass:", chooseableDelegate2, [location[0] nextControllerClass]);
  }

  else
  {
    delegate = [(BuddyChoiceManager *)selfCopy chooseableDelegate];
    [(BFFFlowItemDelegate *)delegate didSelectChoice:location[0]];
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