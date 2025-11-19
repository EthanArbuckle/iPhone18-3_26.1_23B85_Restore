@interface LPImageRemoteURLRepresentation
- (LPImageRemoteURLRepresentation)initWithScale:(unint64_t)a3 URL:(id)a4;
@end

@implementation LPImageRemoteURLRepresentation

- (LPImageRemoteURLRepresentation)initWithScale:(unint64_t)a3 URL:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LPImageRemoteURLRepresentation;
  v8 = [(LPImageRemoteURLRepresentation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_scale = a3;
    objc_storeStrong(&v8->_URL, a4);
    v10 = v9;
  }

  return v9;
}

@end