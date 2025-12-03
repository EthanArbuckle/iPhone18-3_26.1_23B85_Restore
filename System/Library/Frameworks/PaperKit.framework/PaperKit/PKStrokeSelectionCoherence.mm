@interface PKStrokeSelectionCoherence
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
@end

@implementation PKStrokeSelectionCoherence

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v7 = MEMORY[0x1E69784F8];
  identifierCopy = identifier;
  dataCopy = data;
  v10 = [v7 objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy drawingClass:objc_opt_class() error:error];

  return v10;
}

@end