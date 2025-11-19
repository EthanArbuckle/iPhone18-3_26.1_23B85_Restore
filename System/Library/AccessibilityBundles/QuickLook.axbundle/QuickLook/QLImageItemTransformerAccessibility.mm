@interface QLImageItemTransformerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5;
- (id)transformedContentsFromURL:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation QLImageItemTransformerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"QLItemTransformerProtocol" hasOptionalInstanceMethod:@"transformedContentsFromData:context:error:"];
  [v3 validateProtocol:@"QLItemTransformerProtocol" hasOptionalInstanceMethod:@"transformedContentsFromURL:context:error:"];
}

- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5
{
  v11.receiver = self;
  v11.super_class = QLImageItemTransformerAccessibility;
  v7 = a4;
  v8 = [(QLImageItemTransformerAccessibility *)&v11 transformedContentsFromData:a3 context:v7 error:a5];
  v9 = [v7 accessibilityLabel];

  [v8 setAccessibilityLabel:v9];

  return v8;
}

- (id)transformedContentsFromURL:(id)a3 context:(id)a4 error:(id *)a5
{
  v11.receiver = self;
  v11.super_class = QLImageItemTransformerAccessibility;
  v7 = a4;
  v8 = [(QLImageItemTransformerAccessibility *)&v11 transformedContentsFromURL:a3 context:v7 error:a5];
  v9 = [v7 accessibilityLabel];

  [v8 setAccessibilityLabel:v9];

  return v8;
}

@end