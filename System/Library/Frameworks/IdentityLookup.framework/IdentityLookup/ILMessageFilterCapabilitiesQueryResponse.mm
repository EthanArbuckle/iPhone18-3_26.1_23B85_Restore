@interface ILMessageFilterCapabilitiesQueryResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilitiesResponse:(id)a3;
- (ILMessageFilterCapabilitiesQueryResponse)init;
- (ILMessageFilterCapabilitiesQueryResponse)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILMessageFilterCapabilitiesQueryResponse

- (ILMessageFilterCapabilitiesQueryResponse)init
{
  v8.receiver = self;
  v8.super_class = ILMessageFilterCapabilitiesQueryResponse;
  v2 = [(ILMessageFilterCapabilitiesQueryResponse *)&v8 init];
  v3 = v2;
  if (v2)
  {
    promotionalSubActions = v2->_promotionalSubActions;
    v5 = MEMORY[0x277CBEBF8];
    v2->_promotionalSubActions = MEMORY[0x277CBEBF8];

    transactionalSubActions = v3->_transactionalSubActions;
    v3->_transactionalSubActions = v5;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ILMessageFilterCapabilitiesQueryResponse *)self transactionalSubActions];
  v6 = [(ILMessageFilterCapabilitiesQueryResponse *)self promotionalSubActions];
  v7 = [(ILMessageFilterCapabilitiesQueryResponse *)self version];
  v8 = [v3 stringWithFormat:@"<%@ %p subActions transactionalSubActions=%p promotionalSubActions=%p version=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterCapabilitiesQueryResponse *)self isEqualToCapabilitiesResponse:v4];

  return v5;
}

- (BOOL)isEqualToCapabilitiesResponse:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCA940]);
  v6 = [(ILMessageFilterCapabilitiesQueryResponse *)self transactionalSubActions];
  v7 = [v5 initWithArray:v6];

  v8 = objc_alloc(MEMORY[0x277CCA940]);
  v9 = [v4 transactionalSubActions];
  v10 = [v8 initWithArray:v9];

  v11 = objc_alloc(MEMORY[0x277CCA940]);
  v12 = [(ILMessageFilterCapabilitiesQueryResponse *)self promotionalSubActions];
  v13 = [v11 initWithArray:v12];

  v14 = objc_alloc(MEMORY[0x277CCA940]);
  v15 = [v4 promotionalSubActions];
  v16 = [v14 initWithArray:v15];

  if ([v7 isEqualToSet:v10] && objc_msgSend(v13, "isEqualToSet:", v16))
  {
    v17 = [(ILMessageFilterCapabilitiesQueryResponse *)self version];
    v18 = [v4 version];
    v19 = [v17 isEqualToString:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(ILMessageFilterCapabilitiesQueryResponse *)self transactionalSubActions];
  v4 = [v3 hash];
  v5 = [(ILMessageFilterCapabilitiesQueryResponse *)self promotionalSubActions];
  v6 = [v5 hash] ^ v4;
  v7 = [(ILMessageFilterCapabilitiesQueryResponse *)self version];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (ILMessageFilterCapabilitiesQueryResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ILMessageFilterCapabilitiesQueryResponse;
  v5 = [(ILMessageFilterCapabilitiesQueryResponse *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_promotionalSubActions);
    v8 = [v4 decodeArrayOfObjectsOfClass:v6 forKey:v7];
    promotionalSubActions = v5->_promotionalSubActions;
    v5->_promotionalSubActions = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_transactionalSubActions);
    v12 = [v4 decodeArrayOfObjectsOfClass:v10 forKey:v11];
    transactionalSubActions = v5->_transactionalSubActions;
    v5->_transactionalSubActions = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_version);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    version = v5->_version;
    v5->_version = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  promotionalSubActions = self->_promotionalSubActions;
  v5 = a3;
  v6 = NSStringFromSelector(sel_promotionalSubActions);
  [v5 encodeObject:promotionalSubActions forKey:v6];

  transactionalSubActions = self->_transactionalSubActions;
  v8 = NSStringFromSelector(sel_transactionalSubActions);
  [v5 encodeObject:transactionalSubActions forKey:v8];

  version = self->_version;
  v10 = NSStringFromSelector(sel_version);
  [v5 encodeObject:version forKey:v10];
}

@end