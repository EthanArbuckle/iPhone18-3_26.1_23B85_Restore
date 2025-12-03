@interface COSResumePairingState
- (BOOL)hasSavedValueForClassName:(id)name;
- (COSResumePairingState)init;
- (COSResumePairingState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateSavedValuesUsingBlock:(id)block;
@end

@implementation COSResumePairingState

- (COSResumePairingState)init
{
  v6.receiver = self;
  v6.super_class = COSResumePairingState;
  v2 = [(COSResumePairingState *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    savedValues = v2->_savedValues;
    v2->_savedValues = v3;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  pairingStartedDate = self->_pairingStartedDate;
  coderCopy = coder;
  [coderCopy encodeObject:pairingStartedDate forKey:@"pairingStartedDate"];
  [coderCopy encodeBool:self->_isTinkerPairing forKey:@"isTinkerPairing"];
  [coderCopy encodeObject:self->_savedValues forKey:@"savedValues"];
}

- (COSResumePairingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = COSResumePairingState;
  v5 = [(COSResumePairingState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingStartedDate"];
    pairingStartedDate = v5->_pairingStartedDate;
    v5->_pairingStartedDate = v6;

    v5->_isTinkerPairing = [coderCopy decodeBoolForKey:@"isTinkerPairing"];
    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"savedValues"];
    v10 = [v9 mutableCopy];
    savedValues = v5->_savedValues;
    v5->_savedValues = v10;
  }

  return v5;
}

- (void)enumerateSavedValuesUsingBlock:(id)block
{
  blockCopy = block;
  savedValues = self->_savedValues;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026A18;
  v7[3] = &unk_1002688D0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)savedValues enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)hasSavedValueForClassName:(id)name
{
  savedValues = self->_savedValues;
  nameCopy = name;
  allKeys = [(NSMutableDictionary *)savedValues allKeys];
  v6 = [allKeys containsObject:nameCopy];

  return v6;
}

@end