@interface ADFrequencyCap
- (ADFrequencyCap)initWithDictionary:(id)a3;
- (ADFrequencyCap)initWithIdentifier:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)splitCapData:(id)a3;
@end

@implementation ADFrequencyCap

- (ADFrequencyCap)initWithIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADFrequencyCap;
  v5 = [(ADFrequencyCap *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(ADFrequencyCap *)v5 splitCapData:v4];
    v8 = [v7 objectForKeyedSubscript:@"ADIdentifierKey"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v7 objectForKeyedSubscript:@"ADAdMetadataKey"];
    adMetadata = v6->_adMetadata;
    v6->_adMetadata = v10;

    v6->_downloadType = 0;
    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSince1970];
    v6->_setTime = v13;
  }

  return v6;
}

- (ADFrequencyCap)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ADFrequencyCap;
  v5 = [(ADFrequencyCap *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ADIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"ADAdMetadataKey"];
    adMetadata = v5->_adMetadata;
    v5->_adMetadata = v8;

    v10 = [v4 objectForKeyedSubscript:@"ADDownloadTypeKey"];
    v5->_downloadType = [v10 intValue];

    v11 = [v4 objectForKeyedSubscript:@"ADSetTimeKey"];
    [v11 doubleValue];
    v5->_setTime = v12;
  }

  return v5;
}

- (id)splitCapData:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 componentsSeparatedByString:@"|"];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 objectAtIndex:0];
    [v4 setObject:v8 forKeyedSubscript:@"ADIdentifierKey"];

    if (v7 != 1)
    {
      v9 = [MEMORY[0x277CCAB68] string];
      for (i = 1; i != v7; ++i)
      {
        if (i >= 2)
        {
          v11 = [v9 stringByAppendingString:@"|"];
          v12 = [v11 mutableCopy];

          v9 = v12;
        }

        v13 = v9;
        v14 = [v5 objectAtIndex:i];
        v15 = [v9 stringByAppendingString:v14];
        v9 = [v15 mutableCopy];
      }

      [v4 setObject:v9 forKeyedSubscript:@"ADAdMetadataKey"];
    }
  }

  v16 = [v4 copy];

  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_identifier forKeyedSubscript:@"ADIdentifierKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_setTime];
  [v3 setObject:v4 forKeyedSubscript:@"ADSetTimeKey"];

  adMetadata = self->_adMetadata;
  if (adMetadata)
  {
    [v3 setObject:adMetadata forKeyedSubscript:@"ADAdMetadataKey"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_downloadType)];
  [v3 setObject:v6 forKeyedSubscript:@"ADDownloadTypeKey"];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ADFrequencyCap *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end