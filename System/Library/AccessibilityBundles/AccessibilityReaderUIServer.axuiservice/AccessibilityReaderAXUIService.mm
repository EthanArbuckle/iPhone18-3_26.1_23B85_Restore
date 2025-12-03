@interface AccessibilityReaderAXUIService
+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)identifier;
+ (id)sharedInstance;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
@end

@implementation AccessibilityReaderAXUIService

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = sub_1914();

  return v2;
}

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (message)
  {
    v8 = sub_44BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_450C();
  v11 = v10;
  selfCopy = self;
  sub_1CF4(v8, identifier, v9, v11);

  v13.super.isa = sub_44AC().super.isa;

  return v13.super.isa;
}

+ (id)possibleRequiredEntitlementsForProcessingMessageWithIdentifier:(int64_t)identifier
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