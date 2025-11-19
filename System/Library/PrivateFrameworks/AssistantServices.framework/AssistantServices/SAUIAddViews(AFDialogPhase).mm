@interface SAUIAddViews(AFDialogPhase)
- (id)af_dialogPhase;
@end

@implementation SAUIAddViews(AFDialogPhase)

- (id)af_dialogPhase
{
  v1 = [a1 propertyForKeyWithoutDeserializing:*MEMORY[0x1E69C82C0]];
  v2 = [AFDialogPhase dialogPhaseForAceDialogPhase:v1];

  return v2;
}

@end