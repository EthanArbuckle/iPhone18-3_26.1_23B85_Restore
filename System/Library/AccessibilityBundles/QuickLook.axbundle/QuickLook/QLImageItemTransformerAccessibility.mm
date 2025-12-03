@interface QLImageItemTransformerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLImageItemTransformerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"QLItemTransformerProtocol" hasOptionalInstanceMethod:@"transformedContentsFromData:context:error:"];
  [validationsCopy validateProtocol:@"QLItemTransformerProtocol" hasOptionalInstanceMethod:@"transformedContentsFromURL:context:error:"];
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  v11.receiver = self;
  v11.super_class = QLImageItemTransformerAccessibility;
  contextCopy = context;
  v8 = [(QLImageItemTransformerAccessibility *)&v11 transformedContentsFromData:data context:contextCopy error:error];
  accessibilityLabel = [contextCopy accessibilityLabel];

  [v8 setAccessibilityLabel:accessibilityLabel];

  return v8;
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  v11.receiver = self;
  v11.super_class = QLImageItemTransformerAccessibility;
  contextCopy = context;
  v8 = [(QLImageItemTransformerAccessibility *)&v11 transformedContentsFromURL:l context:contextCopy error:error];
  accessibilityLabel = [contextCopy accessibilityLabel];

  [v8 setAccessibilityLabel:accessibilityLabel];

  return v8;
}

@end