@interface _VNRequestForensicsParentChildRequests
- (BOOL)isEqual:(id)equal;
- (_VNRequestForensicsParentChildRequests)initWithParentRequest:(id)request orderedChildRequests:(id)requests;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VNRequestForensicsParentChildRequests

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      parentRequest = self->_parentRequest;
      parentRequest = [(_VNRequestForensicsParentChildRequests *)v5 parentRequest];

      if (parentRequest != parentRequest)
      {
        v8 = 0;
LABEL_19:

        goto LABEL_20;
      }

      orderedChildRequests = self->_orderedChildRequests;
      orderedChildRequests = [(_VNRequestForensicsParentChildRequests *)v5 orderedChildRequests];
      v11 = orderedChildRequests;
      v12 = orderedChildRequests;
      if (v11 != v12)
      {
        v13 = [(NSArray *)v11 count];
        if ([(NSArray *)v12 count]!= v13)
        {
          v8 = 0;
          goto LABEL_18;
        }

        if (v13)
        {
          v14 = 0;
          v15 = v13 - 1;
          do
          {
            v16 = [(NSArray *)v11 objectAtIndexedSubscript:v14];
            v17 = [(NSArray *)v12 objectAtIndexedSubscript:v14];

            v8 = v16 == v17;
            if (!v8)
            {
              break;
            }
          }

          while (v15 != v14++);
          goto LABEL_18;
        }
      }

      v8 = 1;
LABEL_18:

      goto LABEL_19;
    }

    v8 = 0;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  parentRequest = [(_VNRequestForensicsParentChildRequests *)self parentRequest];
  v4 = [parentRequest hash];

  orderedChildRequests = [(_VNRequestForensicsParentChildRequests *)self orderedChildRequests];
  v6 = [orderedChildRequests hash] ^ __ROR8__(v4, 51);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  parentRequest = [(_VNRequestForensicsParentChildRequests *)self parentRequest];
  orderedChildRequests = [(_VNRequestForensicsParentChildRequests *)self orderedChildRequests];
  v6 = [orderedChildRequests componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"( %@, [ %@ ])", parentRequest, v6];

  return v7;
}

- (_VNRequestForensicsParentChildRequests)initWithParentRequest:(id)request orderedChildRequests:(id)requests
{
  requestCopy = request;
  requestsCopy = requests;
  v15.receiver = self;
  v15.super_class = _VNRequestForensicsParentChildRequests;
  v9 = [(_VNRequestForensicsParentChildRequests *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentRequest, request);
    v11 = [requestsCopy copy];
    orderedChildRequests = v10->_orderedChildRequests;
    v10->_orderedChildRequests = v11;

    v13 = v10;
  }

  return v10;
}

@end