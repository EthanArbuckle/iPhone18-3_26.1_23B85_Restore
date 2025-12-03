@interface LPImageRemoteURLRepresentation
- (LPImageRemoteURLRepresentation)initWithScale:(unint64_t)scale URL:(id)l;
@end

@implementation LPImageRemoteURLRepresentation

- (LPImageRemoteURLRepresentation)initWithScale:(unint64_t)scale URL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = LPImageRemoteURLRepresentation;
  v8 = [(LPImageRemoteURLRepresentation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_scale = scale;
    objc_storeStrong(&v8->_URL, l);
    v10 = v9;
  }

  return v9;
}

@end