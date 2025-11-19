@interface SLSafeLocationManagerDelegate
- (CLLocationManagerDelegate)delegate;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation SLSafeLocationManagerDelegate

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v5 = *&a4;
  v8 = a3;
  v7 = [(SLSafeLocationManagerDelegate *)self delegate];
  _SLLog(v4, 7, @"SLSafeLocationManagerDelegate locationManager:didChangeAuthorizationStatus: calling strong delegate %@");
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 locationManager:v8 didChangeAuthorizationStatus:{v5, v7}];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(SLSafeLocationManagerDelegate *)self delegate];
  _SLLog(v4, 7, @"SLSafeLocationManagerDelegate locationManager:didUpdateLocations: calling strong delegate %@");
  [v9 locationManager:v8 didUpdateLocations:{v7, v9}];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(SLSafeLocationManagerDelegate *)self delegate];
  _SLLog(v4, 7, @"SLSafeLocationManagerDelegate locationManager:didFailWithError: calling strong delegate %@");
  [v9 locationManager:v8 didFailWithError:{v7, v9}];
}

- (CLLocationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end