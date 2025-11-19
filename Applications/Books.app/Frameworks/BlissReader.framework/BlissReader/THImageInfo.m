@interface THImageInfo
- (void)dealloc;
- (void)setPopUpInfo:(id)a3;
@end

@implementation THImageInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THImageInfo;
  [(THImageInfo *)&v3 dealloc];
}

- (void)setPopUpInfo:(id)a3
{
  mPopUpInfo = self->mPopUpInfo;
  if (mPopUpInfo != a3)
  {

    self->mPopUpInfo = a3;
  }
}

@end