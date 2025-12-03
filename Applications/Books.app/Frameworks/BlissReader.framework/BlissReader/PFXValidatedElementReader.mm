@interface PFXValidatedElementReader
- (BOOL)mapStartElementWithState:(id)state;
@end

@implementation PFXValidatedElementReader

- (BOOL)mapStartElementWithState:(id)state
{
  currentXmlStackEntry = [state currentXmlStackEntry];

  return [(PFXValidatedElementReader *)self isParentValid:currentXmlStackEntry];
}

@end