@interface ASCCollectionRequest
+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context limit:(int64_t)limit clientID:(id)iD;
- (ASCCollectionRequest)initWithCoder:(id)coder;
- (ASCCollectionRequest)initWithID:(id)d kind:(id)kind context:(id)context limit:(int64_t)limit;
- (BOOL)isEqual:(id)equal;
- (id)_collectionRequestWithClientID:(id)d;
- (id)_initWithID:(id)d kind:(id)kind context:(id)context limit:(int64_t)limit clientID:(id)iD;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCCollectionRequest

- (ASCCollectionRequest)initWithID:(id)d kind:(id)kind context:(id)context limit:(int64_t)limit
{
  dCopy = d;
  kindCopy = kind;
  contextCopy = context;
  +[ASCEligibility assertCurrentProcessEligibility];
  v21.receiver = self;
  v21.super_class = ASCCollectionRequest;
  v13 = [(ASCCollectionRequest *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    id = v13->_id;
    v13->_id = v14;

    v16 = [kindCopy copy];
    kind = v13->_kind;
    v13->_kind = v16;

    v18 = [contextCopy copy];
    context = v13->_context;
    v13->_context = v18;

    v13->_limit = limit;
  }

  return v13;
}

- (ASCCollectionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
      if (v7)
      {
        v8 = -[ASCCollectionRequest initWithID:kind:context:limit:](self, "initWithID:kind:context:limit:", v5, v6, v7, [coderCopy decodeIntegerForKey:@"limit"]);
        if (v8)
        {
          v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
          clientID = v8->_clientID;
          v8->_clientID = v9;
        }

        self = v8;
        selfCopy = self;
      }

      else
      {
        v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v28)
        {
          [(ASCCollectionRequest *)v28 initWithCoder:v29, v30, v31, v32, v33, v34, v35];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v20)
      {
        [(ASCCollectionRequest *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v12)
    {
      [(ASCCollectionRequest *)v12 initWithCoder:v13, v14, v15, v16, v17, v18, v19];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASCCollectionRequest *)self id];
  [coderCopy encodeObject:v5 forKey:@"id"];

  kind = [(ASCCollectionRequest *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  context = [(ASCCollectionRequest *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  [coderCopy encodeInteger:-[ASCCollectionRequest limit](self forKey:{"limit"), @"limit"}];
  clientID = [(ASCCollectionRequest *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCCollectionRequest *)self id];
  [(ASCHasher *)v3 combineObject:v4];

  kind = [(ASCCollectionRequest *)self kind];
  [(ASCHasher *)v3 combineObject:kind];

  context = [(ASCCollectionRequest *)self context];
  [(ASCHasher *)v3 combineObject:context];

  [(ASCHasher *)v3 combineInteger:[(ASCCollectionRequest *)self limit]];
  clientID = [(ASCCollectionRequest *)self clientID];
  [(ASCHasher *)v3 combineObject:clientID];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = equalCopy;
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
        kind = [(ASCCollectionRequest *)self kind];
        kind2 = [(ASCCollectionRequest *)v8 kind];
        v14 = kind2;
        if (kind && kind2)
        {
          if ([kind isEqual:kind2])
          {
LABEL_15:
            context = [(ASCCollectionRequest *)self context];
            context2 = [(ASCCollectionRequest *)v8 context];
            v17 = context2;
            if (context && context2)
            {
              if (![context isEqual:context2])
              {
                goto LABEL_29;
              }
            }

            else if (context != context2)
            {
              goto LABEL_29;
            }

            limit = [(ASCCollectionRequest *)self limit];
            if (limit == [(ASCCollectionRequest *)v8 limit])
            {
              clientID = [(ASCCollectionRequest *)self clientID];
              clientID2 = [(ASCCollectionRequest *)v8 clientID];
              v21 = clientID2;
              v23 = clientID;
              if (clientID && clientID2)
              {
                v7 = [clientID isEqual:clientID2];
              }

              else
              {
                v7 = clientID == clientID2;
              }

              goto LABEL_32;
            }

LABEL_29:
            v7 = 0;
LABEL_32:

            goto LABEL_33;
          }
        }

        else if (kind == kind2)
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

  kind = [(ASCCollectionRequest *)self kind];
  [(ASCDescriber *)v3 addObject:kind withName:@"kind"];

  context = [(ASCCollectionRequest *)self context];
  [(ASCDescriber *)v3 addObject:context withName:@"context"];

  [(ASCDescriber *)v3 addInteger:[(ASCCollectionRequest *)self limit] withName:@"limit"];
  clientID = [(ASCCollectionRequest *)self clientID];
  [(ASCDescriber *)v3 addObject:clientID withName:@"clientID"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)_collectionRequestWithClientID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ASCCollectionRequest *)self id];
  kind = [(ASCCollectionRequest *)self kind];
  context = [(ASCCollectionRequest *)self context];
  v9 = [v5 initWithID:v6 kind:kind context:context limit:{-[ASCCollectionRequest limit](self, "limit")}];

  v10 = v9[5];
  v9[5] = dCopy;

  return v9;
}

- (id)_initWithID:(id)d kind:(id)kind context:(id)context limit:(int64_t)limit clientID:(id)iD
{
  iDCopy = iD;
  v13 = [(ASCCollectionRequest *)self initWithID:d kind:kind context:context limit:limit];
  v14 = [(ASCCollectionRequest *)v13 collectionRequestWithClientID:iDCopy];

  return v14;
}

+ (id)_requestWithID:(id)d kind:(id)kind context:(id)context limit:(int64_t)limit clientID:(id)iD
{
  iDCopy = iD;
  contextCopy = context;
  kindCopy = kind;
  dCopy = d;
  v15 = [[ASCCollectionRequest alloc] _initWithID:dCopy kind:kindCopy context:contextCopy limit:limit clientID:iDCopy];

  return v15;
}

@end