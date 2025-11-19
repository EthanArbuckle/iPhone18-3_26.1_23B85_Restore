@interface AccessibilityReaderAXUIService
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)a3;
+ (id)sharedInstance;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
@end

@implementation AccessibilityReaderAXUIService

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = sub_1914();

  return v2;
}

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = sub_44BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_450C();
  v11 = v10;
  v12 = self;
  sub_1CF4(v8, a4, v9, v11);

  v13.super.isa = sub_44AC().super.isa;

  return v13.super.isa;
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)a3
{
  if (sub_41F8())
  {
    v3.super.isa = sub_455C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

@end