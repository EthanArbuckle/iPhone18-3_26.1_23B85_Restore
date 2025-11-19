@interface TUIRenderModelSpinner
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (NSString)description;
- (TUIRenderModelSpinner)initWithReuseIdentifier:(id)a3 identifier:(id)a4;
- (id)newCurrentContainerPlusInsertsWithCurrent:(id)a3 update:(id)a4;
- (id)newToContainerPlusDeletesWithUpdate:(id)a3 interests:(id)a4;
- (unint64_t)hash;
@end

@implementation TUIRenderModelSpinner

- (TUIRenderModelSpinner)initWithReuseIdentifier:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUIRenderModelSpinner;
  v8 = [(TUIRenderModelSpinner *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    reuseIdentifier = v8->_reuseIdentifier;
    v8->_reuseIdentifier = v9;

    v11 = [v7 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    v7 = [(TUIRenderModelSpinner *)self reuseIdentifier];
    v8 = [v6 reuseIdentifier];
    v9 = v7 == v8 || [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newToContainerPlusDeletesWithUpdate:(id)a3 interests:(id)a4
{
  v5 = [objc_alloc(objc_opt_class()) initWithReuseIdentifier:self->_reuseIdentifier identifier:self->_identifier];
  TUIRenderModelCopyProperties(v5, self);
  return v5;
}

- (id)newCurrentContainerPlusInsertsWithCurrent:(id)a3 update:(id)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithReuseIdentifier:self->_reuseIdentifier identifier:self->_identifier];
  TUIRenderModelCopyProperties(v6, v5);

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TUIRenderModelSpinner *)self identifier];
  v3 = TUIIdentifierHash(v2);

  return v3;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  [(TUIRenderModelSpinner *)self size];
  v11[0] = v7;
  v11[1] = v8;
  v9 = [NSValue valueWithBytes:v11 objCType:"{CGSize=dd}"];
  [v6 appendFormat:@" size=%@", v9];

  [v6 appendFormat:@" identifier=%@", self->_identifier];
  [v6 appendFormat:@" reuseIdentifier=%@", self->_reuseIdentifier];
  [v6 appendFormat:@">"];

  return v6;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end