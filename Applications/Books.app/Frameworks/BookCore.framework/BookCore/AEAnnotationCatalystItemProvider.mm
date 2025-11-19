@interface AEAnnotationCatalystItemProvider
+ (id)writableTypeIdentifiersForItemProvider;
- (id)writableTypeIdentifiersForItemProvider;
@end

@implementation AEAnnotationCatalystItemProvider

+ (id)writableTypeIdentifiersForItemProvider
{
  v2 = [UTTypeUTF8PlainText identifier];
  v6[0] = v2;
  v3 = [UTTypeHTML identifier];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)writableTypeIdentifiersForItemProvider
{
  v2 = objc_opt_class();

  return [v2 writableTypeIdentifiersForItemProvider];
}

@end