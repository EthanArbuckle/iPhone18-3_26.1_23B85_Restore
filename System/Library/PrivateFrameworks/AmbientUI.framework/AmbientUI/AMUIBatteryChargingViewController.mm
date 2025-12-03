@interface AMUIBatteryChargingViewController
- (AMUIBatteryChargingViewController)init;
- (id)_internalBattery;
- (void)_createNewChargingViewIfNecessary;
- (void)_updateChargingViewIfNecessary;
- (void)_updateChargingViewLegibility;
- (void)connectedDevicesDidChange:(id)change;
- (void)dealloc;
- (void)performChargingAnimation:(id)animation;
- (void)viewDidLoad;
@end

@implementation AMUIBatteryChargingViewController

- (AMUIBatteryChargingViewController)init
{
  v6.receiver = self;
  v6.super_class = AMUIBatteryChargingViewController;
  v2 = [(AMUIBatteryChargingViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    batteryController = v2->_batteryController;
    v2->_batteryController = v3;

    [(BCBatteryDeviceController *)v2->_batteryController addBatteryDeviceObserver:v2 queue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_chargingAnimationDismissalTimer invalidate];
  chargingAnimationDismissalTimer = self->_chargingAnimationDismissalTimer;
  self->_chargingAnimationDismissalTimer = 0;

  [(BCBatteryDeviceController *)self->_batteryController removeBatteryDeviceObserver:self];
  v4.receiver = self;
  v4.super_class = AMUIBatteryChargingViewController;
  [(AMUIBatteryChargingViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMUIBatteryChargingViewController;
  [(AMUIBatteryChargingViewController *)&v3 viewDidLoad];
  [(AMUIBatteryChargingViewController *)self _createNewChargingViewIfNecessary];
  [(AMUIBatteryChargingViewController *)self _updateChargingViewIfNecessary];
}

- (void)performChargingAnimation:(id)animation
{
  animationCopy = animation;
  [(AMUIBatteryChargingViewController *)self _updateChargingViewLegibility];
  [(AMUIBatteryChargingView *)self->_chargingView presentChargingViewWithCompletionHandler:animationCopy];
}

- (void)_updateChargingViewIfNecessary
{
  _internalBattery = [(AMUIBatteryChargingViewController *)self _internalBattery];
  [(AMUIBatteryChargingView *)self->_chargingView updateWithBattery:_internalBattery];
}

- (void)_createNewChargingViewIfNecessary
{
  if (!self->_chargingView)
  {
    v14 = +[AMUIBatteryChargingUIConfiguration defaultConfiguration];
    v3 = [AMUIBatteryChargingView batteryChargingRingViewWithConfiguration:v14];
    view = [(AMUIBatteryChargingViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(AMUIBatteryChargingView *)v3 setFrame:v6, v8, v10, v12];
    [(AMUIBatteryChargingView *)v3 setAutoresizingMask:18];
    [(AMUIBatteryChargingViewController *)self setView:v3];
    chargingView = self->_chargingView;
    self->_chargingView = v3;

    [(AMUIBatteryChargingViewController *)self _updateChargingViewLegibility];
  }
}

- (void)_updateChargingViewLegibility
{
  chargingView = self->_chargingView;
  v3 = [objc_alloc(MEMORY[0x277D760A8]) initWithStyle:1];
  [(AMUIBatteryChargingView *)chargingView setLegibilitySettings:v3];
}

- (id)_internalBattery
{
  v14 = *MEMORY[0x277D85DE8];
  [(BCBatteryDeviceController *)self->_batteryController connectedDevices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isInternal])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)connectedDevicesDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  changeCopy = change;
  v5 = [changeCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(changeCopy);
        }

        if ([*(*(&v10 + 1) + 8 * v8) isPowerSource])
        {

          [(AMUIBatteryChargingViewController *)self _updateChargingViewIfNecessary];
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [changeCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
}

@end