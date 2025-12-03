@interface CRLGenerativePlaygroundHelper
+ (BOOL)iccHasGenerativePlaygroundInputSelection:(id)selection;
+ (id)iptcMetadataFor:(id)for;
@end

@implementation CRLGenerativePlaygroundHelper

+ (BOOL)iccHasGenerativePlaygroundInputSelection:(id)selection
{
  selectionCopy = selection;
  v4 = sub_10126EF20(selectionCopy);

  return v4 & 1;
}

+ (id)iptcMetadataFor:(id)for
{
  forCopy = for;
  sub_10126BFAC(forCopy);
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