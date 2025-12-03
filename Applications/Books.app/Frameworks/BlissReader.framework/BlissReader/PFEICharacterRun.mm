@interface PFEICharacterRun
- (BOOL)mapStartElementWithState:(id)state;
@end

@implementation PFEICharacterRun

- (BOOL)mapStartElementWithState:(id)state
{
  [state setCfiPathForCurrentStorage];
  v6.receiver = self;
  v6.super_class = PFEICharacterRun;
  return [(PFXCharacterRun *)&v6 mapStartElementWithState:state];
}

@end