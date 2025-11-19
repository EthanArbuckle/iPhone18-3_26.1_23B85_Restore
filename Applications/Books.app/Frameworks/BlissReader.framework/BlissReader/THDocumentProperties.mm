@interface THDocumentProperties
- (THDocumentProperties)initWithContext:(id)a3;
- (THPresentationType)defaultPresentationType;
- (void)dealloc;
- (void)setBookLocale:(id)a3;
- (void)setBookVersion:(id)a3;
- (void)setChapterBrowserPagePresentationType:(id)a3;
- (void)setEquationEnvironmentEntry:(id)a3;
- (void)setIntroMediaUrl:(id)a3;
- (void)setModificationDate:(id)a3;
- (void)setOriginalAssetSizes:(id)a3;
- (void)setSearchIndexEntry:(id)a3;
- (void)setSearchRefTextEntry:(id)a3;
- (void)setThinnedAssetSizes:(id)a3;
@end

@implementation THDocumentProperties

- (void)setChapterBrowserPagePresentationType:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mChapterBrowserPagePresentationType = a3;
}

- (THDocumentProperties)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = THDocumentProperties;
  return [(THDocumentProperties *)&v4 initWithContext:a3];
}

- (void)dealloc
{
  self->mFlowPresentationType = 0;

  self->mPaginatedPresentationType = 0;
  self->mChapterBrowserPagePresentationType = 0;

  self->mBookLocale = 0;
  self->mIntroMediaUrl = 0;

  self->mSearchIndexEntry = 0;
  self->mSearchRefTextEntry = 0;

  self->mEquationEnvironmentEntry = 0;
  self->mBookVersion = 0;

  self->mOriginalAssetSizes = 0;
  self->mThinnedAssetSizes = 0;

  self->mModificationDate = 0;
  self->_paginatedPresentationType = 0;

  self->_flowPresentationType = 0;
  v3.receiver = self;
  v3.super_class = THDocumentProperties;
  [(THDocumentProperties *)&v3 dealloc];
}

- (void)setBookLocale:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mBookLocale = a3;
}

- (void)setBookVersion:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mBookVersion = a3;
}

- (void)setIntroMediaUrl:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mIntroMediaUrl = a3;
}

- (void)setSearchIndexEntry:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mSearchIndexEntry = a3;
}

- (void)setSearchRefTextEntry:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mSearchRefTextEntry = a3;
}

- (void)setEquationEnvironmentEntry:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mEquationEnvironmentEntry = a3;
}

- (void)setOriginalAssetSizes:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mOriginalAssetSizes = a3;
}

- (void)setThinnedAssetSizes:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mThinnedAssetSizes = a3;
}

- (void)setModificationDate:(id)a3
{
  [(THDocumentProperties *)self willModify];
  v5 = a3;

  self->mModificationDate = a3;
}

- (THPresentationType)defaultPresentationType
{
  if ([(THDocumentProperties *)self paginatedPresentationType])
  {

    return [(THDocumentProperties *)self paginatedPresentationType];
  }

  else
  {

    return [(THDocumentProperties *)self flowPresentationType];
  }
}

@end