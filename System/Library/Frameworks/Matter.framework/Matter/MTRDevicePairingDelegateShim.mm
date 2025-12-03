@interface MTRDevicePairingDelegateShim
- (BOOL)respondsToSelector:(SEL)selector;
- (MTRDevicePairingDelegateShim)initWithDelegate:(id)delegate;
- (void)controller:(id)controller commissioningComplete:(id)complete;
- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done;
- (void)controller:(id)controller statusUpdate:(int64_t)update;
- (void)onPairingDeleted:(id)deleted;
@end

@implementation MTRDevicePairingDelegateShim

- (MTRDevicePairingDelegateShim)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MTRDevicePairingDelegateShim;
  v6 = [(MTRDevicePairingDelegateShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_controller_statusUpdate_ == selector || sel_controller_commissioningSessionEstablishmentDone_ == selector || sel_controller_commissioningComplete_ == selector)
  {
    delegate = [(MTRDevicePairingDelegateShim *)self delegate];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MTRDevicePairingDelegateShim;
    v3 = [(MTRDevicePairingDelegateShim *)&v6 respondsToSelector:?];
  }

  return v3 & 1;
}

- (void)controller:(id)controller statusUpdate:(int64_t)update
{
  delegate = [(MTRDevicePairingDelegateShim *)self delegate];
  [delegate onStatusUpdate:update];
}

- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done
{
  doneCopy = done;
  delegate = [(MTRDevicePairingDelegateShim *)self delegate];
  [delegate onPairingComplete:doneCopy];
}

- (void)controller:(id)controller commissioningComplete:(id)complete
{
  completeCopy = complete;
  delegate = [(MTRDevicePairingDelegateShim *)self delegate];
  [delegate onCommissioningComplete:completeCopy];
}

- (void)onPairingDeleted:(id)deleted
{
  deletedCopy = deleted;
  delegate = [(MTRDevicePairingDelegateShim *)self delegate];
  [delegate onPairingDeleted:deletedCopy];
}

@end