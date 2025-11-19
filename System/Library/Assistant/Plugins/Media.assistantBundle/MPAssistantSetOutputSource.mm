@interface MPAssistantSetOutputSource
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSetOutputSource

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPAssistantSetOutputSource *)self _validate];
  if (!v5)
  {
    v5 = [(MPAssistantSetOutputSource *)self _perform];
  }

  v7 = v5;
  v6 = [v5 dictionary];
  v4[2](v4, v6);
}

@end