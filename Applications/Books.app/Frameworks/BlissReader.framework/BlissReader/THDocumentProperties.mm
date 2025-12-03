@interface THDocumentProperties
- (THDocumentProperties)initWithContext:(id)context;
- (THPresentationType)defaultPresentationType;
- (void)dealloc;
- (void)setBookLocale:(id)locale;
- (void)setBookVersion:(id)version;
- (void)setChapterBrowserPagePresentationType:(id)type;
- (void)setEquationEnvironmentEntry:(id)entry;
- (void)setIntroMediaUrl:(id)url;
- (void)setModificationDate:(id)date;
- (void)setOriginalAssetSizes:(id)sizes;
- (void)setSearchIndexEntry:(id)entry;
- (void)setSearchRefTextEntry:(id)entry;
- (void)setThinnedAssetSizes:(id)sizes;
@end

@implementation THDocumentProperties

- (void)setChapterBrowserPagePresentationType:(id)type
{
  [(THDocumentProperties *)self willModify];
  typeCopy = type;

  self->mChapterBrowserPagePresentationType = type;
}

- (THDocumentProperties)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = THDocumentProperties;
  return [(THDocumentProperties *)&v4 initWithContext:context];
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

- (void)setBookLocale:(id)locale
{
  [(THDocumentProperties *)self willModify];
  localeCopy = locale;

  self->mBookLocale = locale;
}

- (void)setBookVersion:(id)version
{
  [(THDocumentProperties *)self willModify];
  versionCopy = version;

  self->mBookVersion = version;
}

- (void)setIntroMediaUrl:(id)url
{
  [(THDocumentProperties *)self willModify];
  urlCopy = url;

  self->mIntroMediaUrl = url;
}

- (void)setSearchIndexEntry:(id)entry
{
  [(THDocumentProperties *)self willModify];
  entryCopy = entry;

  self->mSearchIndexEntry = entry;
}

- (void)setSearchRefTextEntry:(id)entry
{
  [(THDocumentProperties *)self willModify];
  entryCopy = entry;

  self->mSearchRefTextEntry = entry;
}

- (void)setEquationEnvironmentEntry:(id)entry
{
  [(THDocumentProperties *)self willModify];
  entryCopy = entry;

  self->mEquationEnvironmentEntry = entry;
}

- (void)setOriginalAssetSizes:(id)sizes
{
  [(THDocumentProperties *)self willModify];
  sizesCopy = sizes;

  self->mOriginalAssetSizes = sizes;
}

- (void)setThinnedAssetSizes:(id)sizes
{
  [(THDocumentProperties *)self willModify];
  sizesCopy = sizes;

  self->mThinnedAssetSizes = sizes;
}

- (void)setModificationDate:(id)date
{
  [(THDocumentProperties *)self willModify];
  dateCopy = date;

  self->mModificationDate = date;
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