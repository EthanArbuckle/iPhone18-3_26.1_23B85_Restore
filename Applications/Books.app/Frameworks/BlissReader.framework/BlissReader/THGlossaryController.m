@interface THGlossaryController
- (THGlossaryController)initWithModel:(id)a3 documentRoot:(id)a4;
- (id)alphabeticalTermIndex;
- (void)dealloc;
@end

@implementation THGlossaryController

- (THGlossaryController)initWithModel:(id)a3 documentRoot:(id)a4
{
  v7.receiver = self;
  v7.super_class = THGlossaryController;
  result = [(THGlossaryController *)&v7 init];
  if (result)
  {
    result->mDocumentRoot = a4;
    result->mModel = a3;
  }

  return result;
}

- (void)dealloc
{
  self->mAlphabeticalTermIndex = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryController;
  [(THGlossaryController *)&v3 dealloc];
}

- (id)alphabeticalTermIndex
{
  result = self->mAlphabeticalTermIndex;
  if (!result)
  {
    result = [THGlossaryIndex alphabeticalIndexForGlossary:self->mModel withPrefix:0];
    self->mAlphabeticalTermIndex = result;
  }

  return result;
}

@end