@interface PFAIEntryOrientationState
- (PFAIEntryOrientationState)initWithStackEntry:(id)a3 parentEntryOrientationState:(id)a4;
- (void)loadPropertiesIfNecessary;
@end

@implementation PFAIEntryOrientationState

- (PFAIEntryOrientationState)initWithStackEntry:(id)a3 parentEntryOrientationState:(id)a4
{
  v5.receiver = self;
  v5.super_class = PFAIEntryOrientationState;
  return [(PFXHtmlEntryMediaState *)&v5 initWithHtmlStackEntry:a3 parentEntryMediaState:a4];
}

- (void)loadPropertiesIfNecessary
{
  if (!self->super.mPropertySet)
  {
    v10 = v2;
    v11 = v3;
    mHtmlStackEntry = self->super.mHtmlStackEntry;
    v6 = [(PFXHtmlStackEntry *)mHtmlStackEntry currentEntryOrientationState];
    v7 = [(PFXHtmlStackEntry *)mHtmlStackEntry flowState];
    v9.receiver = self;
    v9.super_class = PFAIEntryOrientationState;
    [(PFXHtmlEntryMediaState *)&v9 loadPropertiesIfNecessary];
    v8 = [(PFXHtmlStackEntry *)mHtmlStackEntry applePubReaderState];
    if (v6 == v7)
    {
      [v8 setFlowAsCurrent];
    }

    else
    {
      [v8 setPaginatedAsCurrent];
    }
  }
}

@end