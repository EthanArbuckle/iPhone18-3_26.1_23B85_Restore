@interface THGlossaryController
- (THGlossaryController)initWithModel:(id)model documentRoot:(id)root;
- (id)alphabeticalTermIndex;
- (void)dealloc;
@end

@implementation THGlossaryController

- (THGlossaryController)initWithModel:(id)model documentRoot:(id)root
{
  v7.receiver = self;
  v7.super_class = THGlossaryController;
  result = [(THGlossaryController *)&v7 init];
  if (result)
  {
    result->mDocumentRoot = root;
    result->mModel = model;
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