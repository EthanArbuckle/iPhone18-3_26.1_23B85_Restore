@interface COSResumePairingState
- (BOOL)hasSavedValueForClassName:(id)a3;
- (COSResumePairingState)init;
- (COSResumePairingState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateSavedValuesUsingBlock:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  pairingStartedDate = self->_pairingStartedDate;
  v5 = a3;
  [v5 encodeObject:pairingStartedDate forKey:@"pairingStartedDate"];
  [v5 encodeBool:self->_isTinkerPairing forKey:@"isTinkerPairing"];
  [v5 encodeObject:self->_savedValues forKey:@"savedValues"];
}

- (COSResumePairingState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = COSResumePairingState;
  v5 = [(COSResumePairingState *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingStartedDate"];
    pairingStartedDate = v5->_pairingStartedDate;
    v5->_pairingStartedDate = v6;

    v5->_isTinkerPairing = [v4 decodeBoolForKey:@"isTinkerPairing"];
    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"savedValues"];
    v10 = [v9 mutableCopy];
    savedValues = v5->_savedValues;
    v5->_savedValues = v10;
  }

  return v5;
}

- (void)enumerateSavedValuesUsingBlock:(id)a3
{
  v4 = a3;
  savedValues = self->_savedValues;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026A18;
  v7[3] = &unk_1002688D0;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)savedValues enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)hasSavedValueForClassName:(id)a3
{
  savedValues = self->_savedValues;
  v4 = a3;
  v5 = [(NSMutableDictionary *)savedValues allKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end