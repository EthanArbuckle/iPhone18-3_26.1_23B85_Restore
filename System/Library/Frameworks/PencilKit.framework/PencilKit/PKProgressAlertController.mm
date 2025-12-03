@interface PKProgressAlertController
+ (id)newProgressAlertControllerWithTitle:(id)title cancel:(id)cancel;
- (PKProgressAlertControllerDelegate)delegate;
- (void)setProgress:(double)progress;
@end

@implementation PKProgressAlertController

+ (id)newProgressAlertControllerWithTitle:(id)title cancel:(id)cancel
{
  cancelCopy = cancel;
  v7 = [self alertControllerWithTitle:title message:0 preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PKProgressAlertController_newProgressAlertControllerWithTitle_cancel___block_invoke;
  v14[3] = &unk_1E82D7F10;
  v9 = v7;
  v15 = v9;
  v10 = [v8 actionWithTitle:cancelCopy style:1 handler:v14];

  [v9 addAction:v10];
  v11 = objc_alloc_init(PKProgressContentViewController);
  [v9 setContentViewController:v11];
  v12 = v9;

  return v12;
}

void __72__PKProgressAlertController_newProgressAlertControllerWithTitle_cancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 alertControllerDidCancel:*(a1 + 32)];
}

- (void)setProgress:(double)progress
{
  contentViewController = [(PKProgressAlertController *)self contentViewController];
  [contentViewController setProgress:progress];
}

- (PKProgressAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end