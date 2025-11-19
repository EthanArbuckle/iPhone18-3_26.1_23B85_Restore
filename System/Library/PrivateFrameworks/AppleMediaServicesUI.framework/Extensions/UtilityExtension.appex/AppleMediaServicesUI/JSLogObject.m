@interface JSLogObject
- (void)debug:(id)a3;
- (void)default:(id)a3;
- (void)error:(id)a3;
- (void)fault:(id)a3;
- (void)info:(id)a3;
@end

@implementation JSLogObject

- (void)debug:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EC3C(v4);
}

- (void)default:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001ECBC(v4);
}

- (void)error:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001ED3C(v4);
}

- (void)fault:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EDBC(v4);
}

- (void)info:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EE3C(v4);
}

@end