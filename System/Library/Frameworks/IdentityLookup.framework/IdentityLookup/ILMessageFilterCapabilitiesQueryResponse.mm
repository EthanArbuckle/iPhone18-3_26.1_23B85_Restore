@interface ILMessageFilterCapabilitiesQueryResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCapabilitiesResponse:(id)response;
- (ILMessageFilterCapabilitiesQueryResponse)init;
- (ILMessageFilterCapabilitiesQueryResponse)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  transactionalSubActions = [(ILMessageFilterCapabilitiesQueryResponse *)self transactionalSubActions];
  promotionalSubActions = [(ILMessageFilterCapabilitiesQueryResponse *)self promotionalSubActions];
  version = [(ILMessageFilterCapabilitiesQueryResponse *)self version];
  v8 = [v3 stringWithFormat:@"<%@ %p subActions transactionalSubActions=%p promotionalSubActions=%p version=%@>", v4, self, transactionalSubActions, promotionalSubActions, version];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterCapabilitiesQueryResponse *)self isEqualToCapabilitiesResponse:equalCopy];

  return v5;
}

- (BOOL)isEqualToCapabilitiesResponse:(id)response
{
  responseCopy = response;
  v5 = objc_alloc(MEMORY[0x277CCA940]);
  transactionalSubActions = [(ILMessageFilterCapabilitiesQueryResponse *)self transactionalSubActions];
  v7 = [v5 initWithArray:transactionalSubActions];

  v8 = objc_alloc(MEMORY[0x277CCA940]);
  transactionalSubActions2 = [responseCopy transactionalSubActions];
  v10 = [v8 initWithArray:transactionalSubActions2];

  v11 = objc_alloc(MEMORY[0x277CCA940]);
  promotionalSubActions = [(ILMessageFilterCapabilitiesQueryResponse *)self promotionalSubActions];
  v13 = [v11 initWithArray:promotionalSubActions];

  v14 = objc_alloc(MEMORY[0x277CCA940]);
  promotionalSubActions2 = [responseCopy promotionalSubActions];
  v16 = [v14 initWithArray:promotionalSubActions2];

  if ([v7 isEqualToSet:v10] && objc_msgSend(v13, "isEqualToSet:", v16))
  {
    version = [(ILMessageFilterCapabilitiesQueryResponse *)self version];
    version2 = [responseCopy version];
    v19 = [version isEqualToString:version2];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  transactionalSubActions = [(ILMessageFilterCapabilitiesQueryResponse *)self transactionalSubActions];
  v4 = [transactionalSubActions hash];
  promotionalSubActions = [(ILMessageFilterCapabilitiesQueryResponse *)self promotionalSubActions];
  v6 = [promotionalSubActions hash] ^ v4;
  version = [(ILMessageFilterCapabilitiesQueryResponse *)self version];
  v8 = [version hash];

  return v6 ^ v8;
}

- (ILMessageFilterCapabilitiesQueryResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ILMessageFilterCapabilitiesQueryResponse;
  v5 = [(ILMessageFilterCapabilitiesQueryResponse *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_promotionalSubActions);
    v8 = [coderCopy decodeArrayOfObjectsOfClass:v6 forKey:v7];
    promotionalSubActions = v5->_promotionalSubActions;
    v5->_promotionalSubActions = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_transactionalSubActions);
    v12 = [coderCopy decodeArrayOfObjectsOfClass:v10 forKey:v11];
    transactionalSubActions = v5->_transactionalSubActions;
    v5->_transactionalSubActions = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_version);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    version = v5->_version;
    v5->_version = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  promotionalSubActions = self->_promotionalSubActions;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_promotionalSubActions);
  [coderCopy encodeObject:promotionalSubActions forKey:v6];

  transactionalSubActions = self->_transactionalSubActions;
  v8 = NSStringFromSelector(sel_transactionalSubActions);
  [coderCopy encodeObject:transactionalSubActions forKey:v8];

  version = self->_version;
  v10 = NSStringFromSelector(sel_version);
  [coderCopy encodeObject:version forKey:v10];
}

@end