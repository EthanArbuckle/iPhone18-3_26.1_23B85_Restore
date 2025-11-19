@interface PromptLocationActionImplementation
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation PromptLocationActionImplementation

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DF0C0(v4);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_DF5B4(v7, v8);
}

@end