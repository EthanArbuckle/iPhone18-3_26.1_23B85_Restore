@interface IdsDeviceObserver
- (IdsDeviceObserver)initWithCallback:(function<void)(;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 linkedDevicesChanged:(id)a4;
@end

@implementation IdsDeviceObserver

- (IdsDeviceObserver)initWithCallback:(function<void)(
{
  v7.receiver = self;
  v7.super_class = IdsDeviceObserver;
  v4 = [(IdsDeviceObserver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    sub_10025ABF0(v4->fCallback.__f_.__buf_.__data, a3);
  }

  return v5;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v8 = a3;
  v6 = a4;
  f = self->fCallback.__f_.__f_;
  if (!f)
  {
    sub_100022DB4();
  }

  (*(*f + 48))(f);
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v8 = a3;
  v6 = a4;
  f = self->fCallback.__f_.__f_;
  if (!f)
  {
    sub_100022DB4();
  }

  (*(*f + 48))(f);
}

- (void)service:(id)a3 linkedDevicesChanged:(id)a4
{
  v8 = a3;
  v6 = a4;
  f = self->fCallback.__f_.__f_;
  if (!f)
  {
    sub_100022DB4();
  }

  (*(*f + 48))(f);
}

@end