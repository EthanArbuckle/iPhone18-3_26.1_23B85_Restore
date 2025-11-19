@interface PFXValidatedElementReader
- (BOOL)mapStartElementWithState:(id)a3;
@end

@implementation PFXValidatedElementReader

- (BOOL)mapStartElementWithState:(id)a3
{
  v4 = [a3 currentXmlStackEntry];

  return [(PFXValidatedElementReader *)self isParentValid:v4];
}

@end