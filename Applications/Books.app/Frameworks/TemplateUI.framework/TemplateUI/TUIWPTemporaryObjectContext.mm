@interface TUIWPTemporaryObjectContext
+ (id)temporaryObjectContext;
@end

@implementation TUIWPTemporaryObjectContext

+ (id)temporaryObjectContext
{
  v2 = objc_alloc_init(TSPTemporaryObjectContextDelegate);
  v3 = [[TUIWPTemporaryObjectContext alloc] initWithDelegate:v2];

  return v3;
}

@end