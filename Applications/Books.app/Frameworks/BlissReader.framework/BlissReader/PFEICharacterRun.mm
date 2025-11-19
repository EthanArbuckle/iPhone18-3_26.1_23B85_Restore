@interface PFEICharacterRun
- (BOOL)mapStartElementWithState:(id)a3;
@end

@implementation PFEICharacterRun

- (BOOL)mapStartElementWithState:(id)a3
{
  [a3 setCfiPathForCurrentStorage];
  v6.receiver = self;
  v6.super_class = PFEICharacterRun;
  return [(PFXCharacterRun *)&v6 mapStartElementWithState:a3];
}

@end