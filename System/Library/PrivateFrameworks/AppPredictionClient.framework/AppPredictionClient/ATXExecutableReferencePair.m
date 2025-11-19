@interface ATXExecutableReferencePair
- (ATXExecutableReferencePair)initWithReference:(id)a3 executable:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXExecutableReferencePair

- (unint64_t)hash
{
  v2 = [(ATXExecutableReferencePair *)self executable];
  v3 = [v2 hash];

  return v3;
}

- (ATXExecutableReferencePair)initWithReference:(id)a3 executable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ATXExecutableReferencePair;
  v9 = [(ATXExecutableReferencePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reference, a3);
    objc_storeStrong(&v10->_executable, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_executable;
      v7 = v6;
      if (v6 == v5->_executable)
      {
      }

      else
      {
        v8 = [(ATXExecutableIdentifier *)v6 isEqual:?];

        if (!v8)
        {
          v9 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      v10 = self->_reference;
      v11 = v10;
      if (v10 == v5->_reference)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(ATXExecutableReference *)v10 isEqual:?];
      }

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

@end