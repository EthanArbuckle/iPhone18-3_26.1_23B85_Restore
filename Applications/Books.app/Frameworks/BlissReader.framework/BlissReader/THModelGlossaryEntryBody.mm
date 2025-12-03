@interface THModelGlossaryEntryBody
- (THModelGlossaryEntryBody)initWithContext:(id)context;
- (void)addFloatingInfo:(id)info;
- (void)dealloc;
- (void)setBodyStorage:(id)storage;
- (void)setHeaderInfo:(id)info;
- (void)setLinksInfo:(id)info;
- (void)setRelatedTermsInfo:(id)info;
- (void)setStylesheet:(id)stylesheet;
@end

@implementation THModelGlossaryEntryBody

- (void)setHeaderInfo:(id)info
{
  [(THModelGlossaryEntryBody *)self willModify];
  infoCopy = info;

  self->mHeaderInfo = info;
}

- (void)setBodyStorage:(id)storage
{
  [(THModelGlossaryEntryBody *)self willModify];
  storageCopy = storage;

  self->mBodyStorage = storage;
}

- (void)setRelatedTermsInfo:(id)info
{
  [(THModelGlossaryEntryBody *)self willModify];
  infoCopy = info;

  self->mRelatedTermsInfo = info;
}

- (void)setLinksInfo:(id)info
{
  [(THModelGlossaryEntryBody *)self willModify];
  infoCopy = info;

  self->mLinksInfo = info;
}

- (void)setStylesheet:(id)stylesheet
{
  [(THModelGlossaryEntryBody *)self willModify];
  stylesheetCopy = stylesheet;

  self->mStylesheet = stylesheet;
}

- (THModelGlossaryEntryBody)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = THModelGlossaryEntryBody;
  v3 = [(THModelGlossaryEntryBody *)&v5 initWithContext:context];
  if (v3)
  {
    v3->mBodyFloatingInfos = objc_alloc_init(NSMutableArray);
  }

  return v3;
}

- (void)dealloc
{
  self->mHeaderInfo = 0;

  self->mBodyStorage = 0;
  self->mBodyFloatingInfos = 0;

  self->mRelatedTermsInfo = 0;
  self->mLinksInfo = 0;

  self->mStylesheet = 0;
  v3.receiver = self;
  v3.super_class = THModelGlossaryEntryBody;
  [(THModelGlossaryEntryBody *)&v3 dealloc];
}

- (void)addFloatingInfo:(id)info
{
  [(THModelGlossaryEntryBody *)self willModify];
  mBodyFloatingInfos = self->mBodyFloatingInfos;

  [(NSMutableArray *)mBodyFloatingInfos addObject:info];
}

@end