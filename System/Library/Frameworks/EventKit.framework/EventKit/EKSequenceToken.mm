@interface EKSequenceToken
- (EKSequenceToken)initWithCADSequenceToken:(id)token;
- (EKSequenceToken)initWithCoder:(id)coder;
- (id)CADToken;
- (int)legacyToken;
@end

@implementation EKSequenceToken

- (EKSequenceToken)initWithCADSequenceToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = EKSequenceToken;
  v5 = [(EKSequenceToken *)&v9 init];
  if (v5)
  {
    allDBSequenceMap = [tokenCopy allDBSequenceMap];
    sequenceNumbers = v5->_sequenceNumbers;
    v5->_sequenceNumbers = allDBSequenceMap;
  }

  return v5;
}

- (EKSequenceToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = EKSequenceToken;
  v5 = [(EKSequenceToken *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"sequenceNumbers"];
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
    intValue = [v4 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

@end