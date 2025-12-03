@interface CuttlefishPCSIdentity
- (CuttlefishPCSIdentity)initWithCoder:(id)coder;
- (id)description;
- (id)init:(id)init item:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CuttlefishPCSIdentity

- (CuttlefishPCSIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CuttlefishPCSIdentity;
  v5 = [(CuttlefishPCSIdentity *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    service = v5->_service;
    v5->_service = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  service = [(CuttlefishPCSIdentity *)self service];
  [coderCopy encodeObject:service forKey:@"service"];

  item = [(CuttlefishPCSIdentity *)self item];
  [coderCopy encodeObject:item forKey:@"item"];
}

- (id)description
{
  service = [(CuttlefishPCSIdentity *)self service];
  v3 = [NSString stringWithFormat:@"<CuttlefishPCSIdentity(%@)>", service];

  return v3;
}

- (id)init:(id)init item:(id)item
{
  initCopy = init;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = CuttlefishPCSIdentity;
  v9 = [(CuttlefishPCSIdentity *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_service, init);
    objc_storeStrong(p_isa + 2, item);
  }

  return p_isa;
}

@end