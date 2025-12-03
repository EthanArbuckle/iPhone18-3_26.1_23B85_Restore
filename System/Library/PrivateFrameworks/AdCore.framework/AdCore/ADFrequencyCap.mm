@interface ADFrequencyCap
- (ADFrequencyCap)initWithDictionary:(id)dictionary;
- (ADFrequencyCap)initWithIdentifier:(id)identifier;
- (id)description;
- (id)dictionaryRepresentation;
- (id)splitCapData:(id)data;
@end

@implementation ADFrequencyCap

- (ADFrequencyCap)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = ADFrequencyCap;
  v5 = [(ADFrequencyCap *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(ADFrequencyCap *)v5 splitCapData:identifierCopy];
    v8 = [v7 objectForKeyedSubscript:@"ADIdentifierKey"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v7 objectForKeyedSubscript:@"ADAdMetadataKey"];
    adMetadata = v6->_adMetadata;
    v6->_adMetadata = v10;

    v6->_downloadType = 0;
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v6->_setTime = v13;
  }

  return v6;
}

- (ADFrequencyCap)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ADFrequencyCap;
  v5 = [(ADFrequencyCap *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ADIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ADAdMetadataKey"];
    adMetadata = v5->_adMetadata;
    v5->_adMetadata = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ADDownloadTypeKey"];
    v5->_downloadType = [v10 intValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ADSetTimeKey"];
    [v11 doubleValue];
    v5->_setTime = v12;
  }

  return v5;
}

- (id)splitCapData:(id)data
{
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [dataCopy componentsSeparatedByString:@"|"];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 objectAtIndex:0];
    [dictionary setObject:v8 forKeyedSubscript:@"ADIdentifierKey"];

    if (v7 != 1)
    {
      string = [MEMORY[0x277CCAB68] string];
      for (i = 1; i != v7; ++i)
      {
        if (i >= 2)
        {
          v11 = [string stringByAppendingString:@"|"];
          v12 = [v11 mutableCopy];

          string = v12;
        }

        v13 = string;
        v14 = [v5 objectAtIndex:i];
        v15 = [string stringByAppendingString:v14];
        string = [v15 mutableCopy];
      }

      [dictionary setObject:string forKeyedSubscript:@"ADAdMetadataKey"];
    }
  }

  v16 = [dictionary copy];

  return v16;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_identifier forKeyedSubscript:@"ADIdentifierKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_setTime];
  [dictionary setObject:v4 forKeyedSubscript:@"ADSetTimeKey"];

  adMetadata = self->_adMetadata;
  if (adMetadata)
  {
    [dictionary setObject:adMetadata forKeyedSubscript:@"ADAdMetadataKey"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_downloadType)];
  [dictionary setObject:v6 forKeyedSubscript:@"ADDownloadTypeKey"];

  return dictionary;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(ADFrequencyCap *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

@end