@interface AVTSimpleAvatarPickerSwiftProvider
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSimpleAvatarPickerSwiftProvider)initWithDelegate:(id)a3 allowAddItem:(BOOL)a4 allowEditing:(BOOL)a5 interItemSpacing:(double)a6 shouldReverseNaturalLayout:(BOOL)a7;
- (AVTSimpleAvatarPickerSwiftProviderDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_notifyStoreChanged;
- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)dismissAvatarUIControllerAnimated:(BOOL)a3;
- (void)endObservingAvatarStoreChanges;
- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4;
- (void)updatePickerSelectionWithAnimation:(BOOL)a3;
- (void)updatePresentedRecordWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)updatePresentedRecordWithRecord:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTSimpleAvatarPickerSwiftProvider

- (AVTSimpleAvatarPickerSwiftProvider)initWithDelegate:(id)a3 allowAddItem:(BOOL)a4 allowEditing:(BOOL)a5 interItemSpacing:(double)a6 shouldReverseNaturalLayout:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v24.receiver = self;
  v24.super_class = AVTSimpleAvatarPickerSwiftProvider;
  v13 = [(AVTSimpleAvatarPickerSwiftProvider *)&v24 init];
  if (v13)
  {
    v14 = +[AVTUIEnvironment defaultEnvironment];
    environment = v13->_environment;
    v13->_environment = v14;

    v16 = [(AVTUIEnvironment *)v13->_environment logger];
    logger = v13->_logger;
    v13->_logger = v16;

    objc_storeWeak(&v13->_delegate, v12);
    v18 = objc_alloc_init(AVTAvatarStore);
    avatarStore = v13->_avatarStore;
    v13->_avatarStore = v18;

    v20 = [[AVTSimpleAvatarPicker alloc] initWithStore:v13->_avatarStore environment:v13->_environment allowAddItem:v10 interItemSpacing:v7 shouldReverseNaturalLayout:a6];
    avatarPicker = v13->_avatarPicker;
    v13->_avatarPicker = v20;

    [(AVTSimpleAvatarPicker *)v13->_avatarPicker setAvatarPickerDelegate:v13];
    [(AVTSimpleAvatarPicker *)v13->_avatarPicker setAllowEditing:v9];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AVTSimpleAvatarPickerSwiftProvider_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

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

- (void)updatePickerSelectionWithAnimation:(BOOL)a3
{
  v3 = a3;
  v6 = [(AVTSimpleAvatarPickerSwiftProvider *)self avatarPicker];
  v5 = [(AVTSimpleAvatarPickerSwiftProvider *)self presentedIdentifier];
  [v6 selectAvatarRecordWithIdentifier:v5 animated:v3];
}

- (void)updatePresentedRecordWithRecord:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = [a3 identifier];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  [(AVTSimpleAvatarPickerSwiftProvider *)self updatePresentedRecordWithIdentifier:v7 animated:v4];
}

- (void)updatePresentedRecordWithIdentifier:(id)a3 animated:(BOOL)a4
{
  if (self->_presentedIdentifier != a3)
  {
    v5 = a4;
    [(AVTSimpleAvatarPickerSwiftProvider *)self setPresentedIdentifier:?];

    [(AVTSimpleAvatarPickerSwiftProvider *)self updatePickerSelectionWithAnimation:v5];
  }
}

- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(AVTSimpleAvatarPickerSwiftProvider *)self updatePresentedRecordWithRecord:v7 animated:1];
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 avatarPicker:self didSelectAvatarRecord:v7];
  }
}

- (void)dismissAvatarUIControllerAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(AVTSimpleAvatarPickerSwiftProvider *)self updatePickerSelectionWithAnimation:0];
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dismissAvatarUIControllerWithIdentifier:self->_presentedIdentifier animated:v3];
  }
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 presentAvatarUIController:v8 animated:v4];
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