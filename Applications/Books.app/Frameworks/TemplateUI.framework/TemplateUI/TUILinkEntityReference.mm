@interface TUILinkEntityReference
- (NSString)description;
- (TUILinkEntityReference)initWithModel:(id)model path:(id)path renderIdentifier:(id)identifier;
- (id)resolvePath;
@end

@implementation TUILinkEntityReference

- (TUILinkEntityReference)initWithModel:(id)model path:(id)path renderIdentifier:(id)identifier
{
  modelCopy = model;
  pathCopy = path;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = TUILinkEntityReference;
  v12 = [(TUILinkEntityReference *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, model);
    objc_storeStrong(&v13->_path, path);
    objc_storeStrong(&v13->_renderIdentifier, identifier);
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
      identifier = [v5 identifier];
      [v3 insertObject:identifier atIndex:0];

      parent = [v5 parent];

      v5 = parent;
    }

    while (parent);
  }

  [v3 addObject:self->_renderIdentifier];
  v8 = [v3 copy];

  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  type = [(TUILinkEntityModel *)self->_model type];
  identifier = [(TUILinkEntityModel *)self->_model identifier];
  title = [(TUILinkEntityModel *)self->_model title];
  v8 = [NSString stringWithFormat:@"<%@ type=%@ identifier=%@ title='%@'>", v4, type, identifier, title];

  return v8;
}

@end