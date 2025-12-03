@interface AVTSimpleAvatarPickerSwiftProvider
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSimpleAvatarPickerSwiftProvider)initWithDelegate:(id)delegate allowAddItem:(BOOL)item allowEditing:(BOOL)editing interItemSpacing:(double)spacing shouldReverseNaturalLayout:(BOOL)layout;
- (AVTSimpleAvatarPickerSwiftProviderDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_notifyStoreChanged;
- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)dismissAvatarUIControllerAnimated:(BOOL)animated;
- (void)endObservingAvatarStoreChanges;
- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated;
- (void)updatePickerSelectionWithAnimation:(BOOL)animation;
- (void)updatePresentedRecordWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)updatePresentedRecordWithRecord:(id)record animated:(BOOL)animated;
@end

@implementation AVTSimpleAvatarPickerSwiftProvider

- (AVTSimpleAvatarPickerSwiftProvider)initWithDelegate:(id)delegate allowAddItem:(BOOL)item allowEditing:(BOOL)editing interItemSpacing:(double)spacing shouldReverseNaturalLayout:(BOOL)layout
{
  layoutCopy = layout;
  editingCopy = editing;
  itemCopy = item;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = AVTSimpleAvatarPickerSwiftProvider;
  v13 = [(AVTSimpleAvatarPickerSwiftProvider *)&v24 init];
  if (v13)
  {
    v14 = +[AVTUIEnvironment defaultEnvironment];
    environment = v13->_environment;
    v13->_environment = v14;

    logger = [(AVTUIEnvironment *)v13->_environment logger];
    logger = v13->_logger;
    v13->_logger = logger;

    objc_storeWeak(&v13->_delegate, delegateCopy);
    v18 = objc_alloc_init(AVTAvatarStore);
    avatarStore = v13->_avatarStore;
    v13->_avatarStore = v18;

    v20 = [[AVTSimpleAvatarPicker alloc] initWithStore:v13->_avatarStore environment:v13->_environment allowAddItem:itemCopy interItemSpacing:layoutCopy shouldReverseNaturalLayout:spacing];
    avatarPicker = v13->_avatarPicker;
    v13->_avatarPicker = v20;

    [(AVTSimpleAvatarPicker *)v13->_avatarPicker setAvatarPickerDelegate:v13];
    [(AVTSimpleAvatarPicker *)v13->_avatarPicker setAllowEditing:editingCopy];
    [(AVTSimpleAvatarPicker *)v13->_avatarPicker reloadDataSource];
    [(AVTSimpleAvatarPicker *)v13->_avatarPicker setPresenterDelegate:v13];
    presentedIdentifier = v13->_presentedIdentifier;
    v13->_presentedIdentifier = 0;

    [(AVTSimpleAvatarPickerSwiftProvider *)v13 beginObservingAvatarStoreChanges];
  }

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTSimpleAvatarPickerSwiftProvider;
  [(AVTSimpleAvatarPickerSwiftProvider *)&v5 dealloc];
}

- (UIEdgeInsets)contentInset
{
  [(AVTSimpleAvatarPicker *)self->_avatarPicker contentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AVTSimpleAvatarPickerSwiftProvider_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __70__AVTSimpleAvatarPickerSwiftProvider_beginObservingAvatarStoreChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyStoreChanged];
}

- (void)endObservingAvatarStoreChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;
}

- (void)_notifyStoreChanged
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__AVTSimpleAvatarPickerSwiftProvider__notifyStoreChanged__block_invoke;
  v2[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __57__AVTSimpleAvatarPickerSwiftProvider__notifyStoreChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained avatarPicker];

  if (v1)
  {
    v2 = [WeakRetained avatarPicker];
    [v2 reloadDataSource];

    [WeakRetained updatePickerSelectionWithAnimation:1];
  }
}

- (void)updatePickerSelectionWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  avatarPicker = [(AVTSimpleAvatarPickerSwiftProvider *)self avatarPicker];
  presentedIdentifier = [(AVTSimpleAvatarPickerSwiftProvider *)self presentedIdentifier];
  [avatarPicker selectAvatarRecordWithIdentifier:presentedIdentifier animated:animationCopy];
}

- (void)updatePresentedRecordWithRecord:(id)record animated:(BOOL)animated
{
  animatedCopy = animated;
  if (record)
  {
    identifier = [record identifier];
    v7 = [identifier copy];
  }

  else
  {
    v7 = 0;
  }

  [(AVTSimpleAvatarPickerSwiftProvider *)self updatePresentedRecordWithIdentifier:v7 animated:animatedCopy];
}

- (void)updatePresentedRecordWithIdentifier:(id)identifier animated:(BOOL)animated
{
  if (self->_presentedIdentifier != identifier)
  {
    animatedCopy = animated;
    [(AVTSimpleAvatarPickerSwiftProvider *)self setPresentedIdentifier:?];

    [(AVTSimpleAvatarPickerSwiftProvider *)self updatePickerSelectionWithAnimation:animatedCopy];
  }
}

- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record
{
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(AVTSimpleAvatarPickerSwiftProvider *)self updatePresentedRecordWithRecord:recordCopy animated:1];
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 avatarPicker:self didSelectAvatarRecord:recordCopy];
  }
}

- (void)dismissAvatarUIControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(AVTSimpleAvatarPickerSwiftProvider *)self updatePickerSelectionWithAnimation:0];
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dismissAvatarUIControllerWithIdentifier:self->_presentedIdentifier animated:animatedCopy];
  }
}

- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 presentAvatarUIController:controllerCopy animated:animatedCopy];
  }
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->avatarPickerDelegate);

  return WeakRetained;
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (AVTSimpleAvatarPickerSwiftProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end