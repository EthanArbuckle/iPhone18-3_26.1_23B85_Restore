@interface ASCCollectionRequest
- (ASCCollectionRequest)initWithCoder:(id)a3;
- (ASCCollectionRequest)initWithID:(id)a3 kind:(id)a4 context:(id)a5 limit:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id)_collectionRequestWithClientID:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCCollectionRequest

- (ASCCollectionRequest)initWithID:(id)a3 kind:(id)a4 context:(id)a5 limit:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  +[ASCEligibility assertCurrentProcessEligibility];
  v21.receiver = self;
  v21.super_class = ASCCollectionRequest;
  v13 = [(ASCCollectionRequest *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    id = v13->_id;
    v13->_id = v14;

    v16 = [v11 copy];
    kind = v13->_kind;
    v13->_kind = v16;

    v18 = [v12 copy];
    context = v13->_context;
    v13->_context = v18;

    v13->_limit = a6;
  }

  return v13;
}

- (ASCCollectionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v7)
      {
        v8 = -[ASCCollectionRequest initWithID:kind:context:limit:](self, "initWithID:kind:context:limit:", v5, v6, v7, [v4 decodeIntegerForKey:@"limit"]);
        if (v8)
        {
          v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
          clientID = v8->_clientID;
          v8->_clientID = v9;
        }

        self = v8;
        v11 = self;
      }

      else
      {
        v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v28)
        {
          [(ASCCollectionRequest *)v28 initWithCoder:v29, v30, v31, v32, v33, v34, v35];
        }

        v11 = 0;
      }
    }

    else
    {
      v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v20)
      {
        [(ASCCollectionRequest *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v12)
    {
      [(ASCCollectionRequest *)v12 initWithCoder:v13, v14, v15, v16, v17, v18, v19];
    }

    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCCollectionRequest *)self id];
  [v4 encodeObject:v5 forKey:@"id"];

  v6 = [(ASCCollectionRequest *)self kind];
  [v4 encodeObject:v6 forKey:@"kind"];

  v7 = [(ASCCollectionRequest *)self context];
  [v4 encodeObject:v7 forKey:@"context"];

  [v4 encodeInteger:-[ASCCollectionRequest limit](self forKey:{"limit"), @"limit"}];
  v8 = [(ASCCollectionRequest *)self clientID];
  [v4 encodeObject:v8 forKey:@"clientID"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCCollectionRequest *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCCollectionRequest *)self kind];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCCollectionRequest *)self context];
  [(ASCHasher *)v3 combineObject:v6];

  [(ASCHasher *)v3 combineInteger:[(ASCCollectionRequest *)self limit]];
  v7 = [(ASCCollectionRequest *)self clientID];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCHasher *)v3 finalizeHash];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    v5 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (!v8)
    {
      v7 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v9 = [(ASCCollectionRequest *)self id];
    v10 = [(ASCCollectionRequest *)v8 id];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        v12 = [(ASCCollectionRequest *)self kind];
        v13 = [(ASCCollectionRequest *)v8 kind];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
LABEL_15:
            v15 = [(ASCCollectionRequest *)self context];
            v16 = [(ASCCollectionRequest *)v8 context];
            v17 = v16;
            if (v15 && v16)
            {
              if (![v15 isEqual:v16])
              {
                goto LABEL_29;
              }
            }

            else if (v15 != v16)
            {
              goto LABEL_29;
            }

            v18 = [(ASCCollectionRequest *)self limit];
            if (v18 == [(ASCCollectionRequest *)v8 limit])
            {
              v19 = [(ASCCollectionRequest *)self clientID];
              v20 = [(ASCCollectionRequest *)v8 clientID];
              v21 = v20;
              v23 = v19;
              if (v19 && v20)
              {
                v7 = [v19 isEqual:v20];
              }

              else
              {
                v7 = v19 == v20;
              }

              goto LABEL_32;
            }

LABEL_29:
            v7 = 0;
LABEL_32:

            goto LABEL_33;
          }
        }

        else if (v12 == v13)
        {
          goto LABEL_15;
        }

        v7 = 0;
LABEL_33:

        goto LABEL_34;
      }
    }

    else if (v9 == v10)
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v7 = 1;
LABEL_36:

  return v7;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCCollectionRequest *)self id];
  [(ASCDescriber *)v3 addObject:v4 withName:@"id"];

  v5 = [(ASCCollectionRequest *)self kind];
  [(ASCDescriber *)v3 addObject:v5 withName:@"kind"];

  v6 = [(ASCCollectionRequest *)self context];
  [(ASCDescriber *)v3 addObject:v6 withName:@"context"];

  [(ASCDescriber *)v3 addInteger:[(ASCCollectionRequest *)self limit] withName:@"limit"];
  v7 = [(ASCCollectionRequest *)self clientID];
  [(ASCDescriber *)v3 addObject:v7 withName:@"clientID"];

  v8 = [(ASCDescriber *)v3 finalizeDescription];

  return v8;
}

- (id)_collectionRequestWithClientID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCCollectionRequest *)self id];
  v7 = [(ASCCollectionRequest *)self kind];
  v8 = [(ASCCollectionRequest *)self context];
  v9 = [v5 initWithID:v6 kind:v7 context:v8 limit:{-[ASCCollectionRequest limit](self, "limit")}];

  v10 = v9[5];
  v9[5] = v4;

  return v9;
}

@end