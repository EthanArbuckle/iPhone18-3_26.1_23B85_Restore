@interface TUILinkEntityReference
- (NSString)description;
- (TUILinkEntityReference)initWithModel:(id)a3 path:(id)a4 renderIdentifier:(id)a5;
- (id)resolvePath;
@end

@implementation TUILinkEntityReference

- (TUILinkEntityReference)initWithModel:(id)a3 path:(id)a4 renderIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUILinkEntityReference;
  v12 = [(TUILinkEntityReference *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, a3);
    objc_storeStrong(&v13->_path, a4);
    objc_storeStrong(&v13->_renderIdentifier, a5);
  }

  return v13;
}

- (id)resolvePath
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  v4 = self->_path;
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 identifier];
      [v3 insertObject:v6 atIndex:0];

      v7 = [v5 parent];

      v5 = v7;
    }

    while (v7);
  }

  [v3 addObject:self->_renderIdentifier];
  v8 = [v3 copy];

  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TUILinkEntityModel *)self->_model type];
  v6 = [(TUILinkEntityModel *)self->_model identifier];
  v7 = [(TUILinkEntityModel *)self->_model title];
  v8 = [NSString stringWithFormat:@"<%@ type=%@ identifier=%@ title='%@'>", v4, v5, v6, v7];

  return v8;
}

@end