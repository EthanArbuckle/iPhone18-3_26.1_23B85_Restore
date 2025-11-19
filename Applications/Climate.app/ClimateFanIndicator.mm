@interface ClimateFanIndicator
- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4;
- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateFanIndicator

- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  sub_10007B468(v6, a4);
}

- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4
{
  v4 = self;
  sub_10007AEE4();
}

- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10007B948(v6, a4);
}

@end