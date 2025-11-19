@interface THModelGlossaryEntryBody
- (THModelGlossaryEntryBody)initWithContext:(id)a3;
- (void)addFloatingInfo:(id)a3;
- (void)dealloc;
- (void)setBodyStorage:(id)a3;
- (void)setHeaderInfo:(id)a3;
- (void)setLinksInfo:(id)a3;
- (void)setRelatedTermsInfo:(id)a3;
- (void)setStylesheet:(id)a3;
@end

@implementation THModelGlossaryEntryBody

- (void)setHeaderInfo:(id)a3
{
  [(THModelGlossaryEntryBody *)self willModify];
  v5 = a3;

  self->mHeaderInfo = a3;
}

- (void)setBodyStorage:(id)a3
{
  [(THModelGlossaryEntryBody *)self willModify];
  v5 = a3;

  self->mBodyStorage = a3;
}

- (void)setRelatedTermsInfo:(id)a3
{
  [(THModelGlossaryEntryBody *)self willModify];
  v5 = a3;

  self->mRelatedTermsInfo = a3;
}

- (void)setLinksInfo:(id)a3
{
  [(THModelGlossaryEntryBody *)self willModify];
  v5 = a3;

  self->mLinksInfo = a3;
}

- (void)setStylesheet:(id)a3
{
  [(THModelGlossaryEntryBody *)self willModify];
  v5 = a3;

  self->mStylesheet = a3;
}

- (THModelGlossaryEntryBody)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THModelGlossaryEntryBody;
  v3 = [(THModelGlossaryEntryBody *)&v5 initWithContext:a3];
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

- (void)addFloatingInfo:(id)a3
{
  [(THModelGlossaryEntryBody *)self willModify];
  mBodyFloatingInfos = self->mBodyFloatingInfos;

  [(NSMutableArray *)mBodyFloatingInfos addObject:a3];
}

@end