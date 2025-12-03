@interface PFAIEntryOrientationState
- (PFAIEntryOrientationState)initWithStackEntry:(id)entry parentEntryOrientationState:(id)state;
- (void)loadPropertiesIfNecessary;
@end

@implementation PFAIEntryOrientationState

- (PFAIEntryOrientationState)initWithStackEntry:(id)entry parentEntryOrientationState:(id)state
{
  v5.receiver = self;
  v5.super_class = PFAIEntryOrientationState;
  return [(PFXHtmlEntryMediaState *)&v5 initWithHtmlStackEntry:entry parentEntryMediaState:state];
}

- (void)loadPropertiesIfNecessary
{
  if (!self->super.mPropertySet)
  {
    v10 = v2;
    v11 = v3;
    mHtmlStackEntry = self->super.mHtmlStackEntry;
    currentEntryOrientationState = [(PFXHtmlStackEntry *)mHtmlStackEntry currentEntryOrientationState];
    flowState = [(PFXHtmlStackEntry *)mHtmlStackEntry flowState];
    v9.receiver = self;
    v9.super_class = PFAIEntryOrientationState;
    [(PFXHtmlEntryMediaState *)&v9 loadPropertiesIfNecessary];
    applePubReaderState = [(PFXHtmlStackEntry *)mHtmlStackEntry applePubReaderState];
    if (currentEntryOrientationState == flowState)
    {
      [applePubReaderState setFlowAsCurrent];
    }

    else
    {
      [applePubReaderState setPaginatedAsCurrent];
    }
  }
}

@end