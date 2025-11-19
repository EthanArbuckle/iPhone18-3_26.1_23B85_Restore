@interface EKSequenceToken
- (EKSequenceToken)initWithCADSequenceToken:(id)a3;
- (EKSequenceToken)initWithCoder:(id)a3;
- (id)CADToken;
- (int)legacyToken;
@end

@implementation EKSequenceToken

- (EKSequenceToken)initWithCADSequenceToken:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKSequenceToken;
  v5 = [(EKSequenceToken *)&v9 init];
  if (v5)
  {
    v6 = [v4 allDBSequenceMap];
    sequenceNumbers = v5->_sequenceNumbers;
    v5->_sequenceNumbers = v6;
  }

  return v5;
}

- (EKSequenceToken)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EKSequenceToken;
  v5 = [(EKSequenceToken *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"sequenceNumbers"];
    sequenceNumbers = v5->_sequenceNumbers;
    v5->_sequenceNumbers = v7;
  }

  return v5;
}

- (id)CADToken
{
  v2 = [objc_alloc(MEMORY[0x1E69923C0]) initWithAllDBSequenceMap:self->_sequenceNumbers];

  return v2;
}

- (int)legacyToken
{
  sequenceNumbers = self->_sequenceNumbers;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E6992E18]];
  v4 = [(NSDictionary *)sequenceNumbers objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 intValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

@end