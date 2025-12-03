@interface ADIDRecord
- (ADIDRecord)init;
- (ADIDRecord)initWithID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSData)encryptedID;
- (id)dictionaryRepresentation;
- (void)setID:(id)d;
@end

@implementation ADIDRecord

- (ADIDRecord)init
{
  v7.receiver = self;
  v7.super_class = ADIDRecord;
  v2 = [(ADIDRecord *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    ID = v2->_ID;
    v2->_ID = uUIDString;

    v2->_dirty = 1;
  }

  return v2;
}

- (ADIDRecord)initWithID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ADIDRecord;
  v5 = [(ADIDRecord *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    ID = v5->_ID;
    v5->_ID = v6;

    v5->_dirty = 1;
  }

  return v5;
}

- (void)setID:(id)d
{
  dCopy = d;
  if (![(NSString *)self->_ID isEqualToString:?])
  {
    objc_storeStrong(&self->_ID, d);
    self->_dirty = 1;
  }
}

- (NSData)encryptedID
{
  encryptedID = self->_encryptedID;
  if (!encryptedID)
  {
    v4 = ADEncryptString(self->_ID);
    v5 = self->_encryptedID;
    self->_encryptedID = v4;

    encryptedID = self->_encryptedID;
  }

  return encryptedID;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_ID forKeyedSubscript:@"kADiAdIDRecord_iAdIDKey"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(ADIDRecord *)self ID];
    v8 = [(ADIDRecord *)v6 ID];

    v9 = [v7 isEqualToString:v8];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

@end