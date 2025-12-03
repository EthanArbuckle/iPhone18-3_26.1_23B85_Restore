@interface AVMessageParser
+ (AVMessageParser)airMessageParser;
- (AVMessageParser)init;
- (AVMessageParser)initWithLineSeparator:(id)separator headerBodySeparator:(id)bodySeparator bodyLengthKey:(id)key compressionMethodKey:(id)methodKey;
- (id)partsWithData:(id)data;
- (void)setHeaderBodySeparator:(id)separator;
- (void)setLineSeparator:(id)separator;
@end

@implementation AVMessageParser

- (id)partsWithData:(id)data
{
  dataCopy = data;
  lineSeparator = [(AVMessageParser *)self lineSeparator];
  lineSeparatorData = [(AVMessageParser *)self lineSeparatorData];
  headerBodySeparator = [(AVMessageParser *)self headerBodySeparator];
  headerBodySeparatorData = [(AVMessageParser *)self headerBodySeparatorData];
  bodyLengthKey = [(AVMessageParser *)self bodyLengthKey];
  v10 = [AVAirMessageParts messagePartsWithData:dataCopy lineSeparator:lineSeparator data:lineSeparatorData headerBodySeparator:headerBodySeparator data:headerBodySeparatorData bodyLengthKey:bodyLengthKey];

  compressionMethodKey = [(AVMessageParser *)self compressionMethodKey];
  v12 = [compressionMethodKey length];

  if (v12)
  {
    uniqueHeaders = [v10 uniqueHeaders];
    compressionMethodKey2 = [(AVMessageParser *)self compressionMethodKey];
    v15 = [uniqueHeaders objectForKeyedSubscript:compressionMethodKey2];

    if ([v15 length])
    {
      v16 = [v10 decompressBodyUsingNamedAlgorithm:v15];
      [v10 setUncompressedBodyData:v16];
    }
  }

  return v10;
}

- (void)setHeaderBodySeparator:(id)separator
{
  if (self->_headerBodySeparator != separator)
  {
    separatorCopy = separator;
    v6 = [separatorCopy copy];
    headerBodySeparator = self->_headerBodySeparator;
    self->_headerBodySeparator = v6;

    v8 = [separatorCopy dataUsingEncoding:1];

    [(AVMessageParser *)self setHeaderBodySeparatorData:v8];
  }
}

- (void)setLineSeparator:(id)separator
{
  if (self->_lineSeparator != separator)
  {
    separatorCopy = separator;
    v6 = [separatorCopy copy];
    lineSeparator = self->_lineSeparator;
    self->_lineSeparator = v6;

    v8 = [separatorCopy dataUsingEncoding:1];

    [(AVMessageParser *)self setLineSeparatorData:v8];
  }
}

- (AVMessageParser)init
{
  v5.receiver = self;
  v5.super_class = AVMessageParser;
  v2 = [(AVMessageParser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVMessageParser *)v2 setLineSeparator:@"\n"];
    [(AVMessageParser *)v3 setHeaderBodySeparator:@"\n\n"];
  }

  return v3;
}

- (AVMessageParser)initWithLineSeparator:(id)separator headerBodySeparator:(id)bodySeparator bodyLengthKey:(id)key compressionMethodKey:(id)methodKey
{
  separatorCopy = separator;
  bodySeparatorCopy = bodySeparator;
  keyCopy = key;
  methodKeyCopy = methodKey;
  v17.receiver = self;
  v17.super_class = AVMessageParser;
  v14 = [(AVMessageParser *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(AVMessageParser *)v14 setLineSeparator:separatorCopy];
    [(AVMessageParser *)v15 setHeaderBodySeparator:bodySeparatorCopy];
    [(AVMessageParser *)v15 setBodyLengthKey:keyCopy];
    [(AVMessageParser *)v15 setCompressionMethodKey:methodKeyCopy];
  }

  return v15;
}

+ (AVMessageParser)airMessageParser
{
  if (airMessageParser_onceToken != -1)
  {
    dispatch_once(&airMessageParser_onceToken, &__block_literal_global_27936);
  }

  v3 = airMessageParser__shared;

  return v3;
}

uint64_t __50__AVMessageParser_AVAirMessages__airMessageParser__block_invoke()
{
  v0 = objc_alloc_init(AVMessageParser);
  v1 = airMessageParser__shared;
  airMessageParser__shared = v0;

  [airMessageParser__shared setLineSeparator:@"\n"];
  [airMessageParser__shared setHeaderBodySeparator:@"\n\n"];
  [airMessageParser__shared setBodyLengthKey:@"length"];
  v2 = airMessageParser__shared;

  return [v2 setCompressionMethodKey:@"compression"];
}

@end