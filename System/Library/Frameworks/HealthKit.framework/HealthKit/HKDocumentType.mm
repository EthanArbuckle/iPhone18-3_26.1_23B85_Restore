@interface HKDocumentType
- (HKDocumentType)initWithIdentifier:(id)identifier;
@end

@implementation HKDocumentType

- (HKDocumentType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HKObjectType documentTypeForIdentifier:identifierCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), identifierCopy}];
  }

  return v5;
}

@end