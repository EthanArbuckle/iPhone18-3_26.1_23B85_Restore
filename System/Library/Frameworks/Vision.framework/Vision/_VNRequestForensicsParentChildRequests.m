@interface _VNRequestForensicsParentChildRequests
- (BOOL)isEqual:(id)a3;
- (_VNRequestForensicsParentChildRequests)initWithParentRequest:(id)a3 orderedChildRequests:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VNRequestForensicsParentChildRequests

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      parentRequest = self->_parentRequest;
      v7 = [(_VNRequestForensicsParentChildRequests *)v5 parentRequest];

      if (parentRequest != v7)
      {
        v8 = 0;
LABEL_19:

        goto LABEL_20;
      }

      orderedChildRequests = self->_orderedChildRequests;
      v10 = [(_VNRequestForensicsParentChildRequests *)v5 orderedChildRequests];
      v11 = orderedChildRequests;
      v12 = v10;
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
  v3 = [(_VNRequestForensicsParentChildRequests *)self parentRequest];
  v4 = [v3 hash];

  v5 = [(_VNRequestForensicsParentChildRequests *)self orderedChildRequests];
  v6 = [v5 hash] ^ __ROR8__(v4, 51);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_VNRequestForensicsParentChildRequests *)self parentRequest];
  v5 = [(_VNRequestForensicsParentChildRequests *)self orderedChildRequests];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"( %@, [ %@ ])", v4, v6];

  return v7;
}

- (_VNRequestForensicsParentChildRequests)initWithParentRequest:(id)a3 orderedChildRequests:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _VNRequestForensicsParentChildRequests;
  v9 = [(_VNRequestForensicsParentChildRequests *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentRequest, a3);
    v11 = [v8 copy];
    orderedChildRequests = v10->_orderedChildRequests;
    v10->_orderedChildRequests = v11;

    v13 = v10;
  }

  return v10;
}

@end