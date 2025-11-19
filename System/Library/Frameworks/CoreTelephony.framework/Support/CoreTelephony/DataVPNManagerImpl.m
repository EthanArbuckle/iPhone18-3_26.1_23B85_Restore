@interface DataVPNManagerImpl
- (DataVPNManagerImpl)initWithCallback:(function<void)(BOOL;
- (id).cxx_construct;
- (void)connectivityManagerDidChange:(id)a3;
@end

@implementation DataVPNManagerImpl

- (DataVPNManagerImpl)initWithCallback:(function<void)(BOOL
{
  v6.receiver = self;
  v6.super_class = DataVPNManagerImpl;
  v4 = [(DataVPNManagerImpl *)&v6 init];
  if (v4)
  {
    sub_1007A5CD4(v4->_callback.__f_.__buf_.__data, a3);
    operator new();
  }

  return 0;
}

- (void)connectivityManagerDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 connectivityState];
  v6 = [v4 usesPolicyBasedRouting];
  v7 = [DataVPNManagerImpl connectedState:v5];
  v8 = sub_100032AC8(self->_logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = asStringBool(v7);
    v11 = 1024;
    v12 = v5;
    v13 = 2080;
    v14 = asStringBool(v6);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I VPN connectivity: %s (%d), usesPolicyBasedRouting: %s", &v9, 0x1Cu);
  }

  sub_100447630(&self->_callback, v7, v6);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  return self;
}

@end