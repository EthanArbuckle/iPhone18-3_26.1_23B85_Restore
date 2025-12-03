@interface ATXExecutableReferencePair
- (ATXExecutableReferencePair)initWithReference:(id)reference executable:(id)executable;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ATXExecutableReferencePair

- (unint64_t)hash
{
  executable = [(ATXExecutableReferencePair *)self executable];
  v3 = [executable hash];

  return v3;
}

- (ATXExecutableReferencePair)initWithReference:(id)reference executable:(id)executable
{
  referenceCopy = reference;
  executableCopy = executable;
  v13.receiver = self;
  v13.super_class = ATXExecutableReferencePair;
  v9 = [(ATXExecutableReferencePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reference, reference);
    objc_storeStrong(&v10->_executable, executable);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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