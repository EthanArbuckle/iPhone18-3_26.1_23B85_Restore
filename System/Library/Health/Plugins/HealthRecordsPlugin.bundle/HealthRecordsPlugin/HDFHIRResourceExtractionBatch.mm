@interface HDFHIRResourceExtractionBatch
- (HDFHIRResourceExtractionBatch)init;
- (HDFHIRResourceExtractionBatch)initWithDocument:(id)document rulesVersion:(id)version highestRowID:(id)d;
@end

@implementation HDFHIRResourceExtractionBatch

- (HDFHIRResourceExtractionBatch)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRResourceExtractionBatch)initWithDocument:(id)document rulesVersion:(id)version highestRowID:(id)d
{
  documentCopy = document;
  versionCopy = version;
  dCopy = d;
  if (documentCopy)
  {
    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_9E548(a2, self);
    if (versionCopy)
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
    objc_storeStrong(&v13->_document, document);
    v15 = [versionCopy copy];
    rulesVersion = v14->_rulesVersion;
    v14->_rulesVersion = v15;

    v17 = [dCopy copy];
    highestRowID = v14->_highestRowID;
    v14->_highestRowID = v17;
  }

  return v14;
}

@end