@interface CRLGenerativePlaygroundHelper
+ (BOOL)iccHasGenerativePlaygroundInputSelection:(id)a3;
+ (id)iptcMetadataFor:(id)a3;
@end

@implementation CRLGenerativePlaygroundHelper

+ (BOOL)iccHasGenerativePlaygroundInputSelection:(id)a3
{
  v3 = a3;
  v4 = sub_10126EF20(v3);

  return v4 & 1;
}

+ (id)iptcMetadataFor:(id)a3
{
  v3 = a3;
  sub_10126BFAC(v3);
  v5 = v4;

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

@end