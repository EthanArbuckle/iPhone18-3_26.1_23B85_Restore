@interface THImageInfo
- (void)dealloc;
- (void)setPopUpInfo:(id)info;
@end

@implementation THImageInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THImageInfo;
  [(THImageInfo *)&v3 dealloc];
}

- (void)setPopUpInfo:(id)info
{
  mPopUpInfo = self->mPopUpInfo;
  if (mPopUpInfo != info)
  {

    self->mPopUpInfo = info;
  }
}

@end