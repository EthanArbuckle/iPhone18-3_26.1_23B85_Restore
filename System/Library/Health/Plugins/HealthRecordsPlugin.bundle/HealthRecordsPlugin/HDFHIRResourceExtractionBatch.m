@interface HDFHIRResourceExtractionBatch
- (HDFHIRResourceExtractionBatch)init;
- (HDFHIRResourceExtractionBatch)initWithDocument:(id)a3 rulesVersion:(id)a4 highestRowID:(id)a5;
@end

@implementation HDFHIRResourceExtractionBatch

- (HDFHIRResourceExtractionBatch)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRResourceExtractionBatch)initWithDocument:(id)a3 rulesVersion:(id)a4 highestRowID:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_9E548(a2, self);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  sub_9E5C4(a2, self);
LABEL_3:
  v20.receiver = self;
  v20.super_class = HDFHIRResourceExtractionBatch;
  v13 = [(HDFHIRResourceExtractionBatch *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_document, a3);
    v15 = [v11 copy];
    rulesVersion = v14->_rulesVersion;
    v14->_rulesVersion = v15;

    v17 = [v12 copy];
    highestRowID = v14->_highestRowID;
    v14->_highestRowID = v17;
  }

  return v14;
}

@end