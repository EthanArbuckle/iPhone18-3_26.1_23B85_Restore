@interface AEAnnotationCatalystItemProvider
+ (id)writableTypeIdentifiersForItemProvider;
- (id)writableTypeIdentifiersForItemProvider;
@end

@implementation AEAnnotationCatalystItemProvider

+ (id)writableTypeIdentifiersForItemProvider
{
  identifier = [UTTypeUTF8PlainText identifier];
  v6[0] = identifier;
  identifier2 = [UTTypeHTML identifier];
  v6[1] = identifier2;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)writableTypeIdentifiersForItemProvider
{
  v2 = objc_opt_class();

  return [v2 writableTypeIdentifiersForItemProvider];
}

@end