@interface MTRDevicePairingDelegateShim
- (BOOL)respondsToSelector:(SEL)a3;
- (MTRDevicePairingDelegateShim)initWithDelegate:(id)a3;
- (void)controller:(id)a3 commissioningComplete:(id)a4;
- (void)controller:(id)a3 commissioningSessionEstablishmentDone:(id)a4;
- (void)controller:(id)a3 statusUpdate:(int64_t)a4;
- (void)onPairingDeleted:(id)a3;
@end

@implementation MTRDevicePairingDelegateShim

- (MTRDevicePairingDelegateShim)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTRDevicePairingDelegateShim;
  v6 = [(MTRDevicePairingDelegateShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_controller_statusUpdate_ == a3 || sel_controller_commissioningSessionEstablishmentDone_ == a3 || sel_controller_commissioningComplete_ == a3)
  {
    v4 = [(MTRDevicePairingDelegateShim *)self delegate];
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

- (void)controller:(id)a3 statusUpdate:(int64_t)a4
{
  v5 = [(MTRDevicePairingDelegateShim *)self delegate];
  [v5 onStatusUpdate:a4];
}

- (void)controller:(id)a3 commissioningSessionEstablishmentDone:(id)a4
{
  v6 = a4;
  v5 = [(MTRDevicePairingDelegateShim *)self delegate];
  [v5 onPairingComplete:v6];
}

- (void)controller:(id)a3 commissioningComplete:(id)a4
{
  v6 = a4;
  v5 = [(MTRDevicePairingDelegateShim *)self delegate];
  [v5 onCommissioningComplete:v6];
}

- (void)onPairingDeleted:(id)a3
{
  v5 = a3;
  v4 = [(MTRDevicePairingDelegateShim *)self delegate];
  [v4 onPairingDeleted:v5];
}

@end