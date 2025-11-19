@interface AVMessageParser
+ (AVMessageParser)airMessageParser;
- (AVMessageParser)init;
- (AVMessageParser)initWithLineSeparator:(id)a3 headerBodySeparator:(id)a4 bodyLengthKey:(id)a5 compressionMethodKey:(id)a6;
- (id)partsWithData:(id)a3;
- (void)setHeaderBodySeparator:(id)a3;
- (void)setLineSeparator:(id)a3;
@end

@implementation AVMessageParser

- (id)partsWithData:(id)a3
{
  v4 = a3;
  v5 = [(AVMessageParser *)self lineSeparator];
  v6 = [(AVMessageParser *)self lineSeparatorData];
  v7 = [(AVMessageParser *)self headerBodySeparator];
  v8 = [(AVMessageParser *)self headerBodySeparatorData];
  v9 = [(AVMessageParser *)self bodyLengthKey];
  v10 = [AVAirMessageParts messagePartsWithData:v4 lineSeparator:v5 data:v6 headerBodySeparator:v7 data:v8 bodyLengthKey:v9];

  v11 = [(AVMessageParser *)self compressionMethodKey];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v10 uniqueHeaders];
    v14 = [(AVMessageParser *)self compressionMethodKey];
    v15 = [v13 objectForKeyedSubscript:v14];

    if ([v15 length])
    {
      v16 = [v10 decompressBodyUsingNamedAlgorithm:v15];
      [v10 setUncompressedBodyData:v16];
    }
  }

  return v10;
}

- (void)setHeaderBodySeparator:(id)a3
{
  if (self->_headerBodySeparator != a3)
  {
    v5 = a3;
    v6 = [v5 copy];
    headerBodySeparator = self->_headerBodySeparator;
    self->_headerBodySeparator = v6;

    v8 = [v5 dataUsingEncoding:1];

    [(AVMessageParser *)self setHeaderBodySeparatorData:v8];
  }
}

- (void)setLineSeparator:(id)a3
{
  if (self->_lineSeparator != a3)
  {
    v5 = a3;
    v6 = [v5 copy];
    lineSeparator = self->_lineSeparator;
    self->_lineSeparator = v6;

    v8 = [v5 dataUsingEncoding:1];

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

- (AVMessageParser)initWithLineSeparator:(id)a3 headerBodySeparator:(id)a4 bodyLengthKey:(id)a5 compressionMethodKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AVMessageParser;
  v14 = [(AVMessageParser *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(AVMessageParser *)v14 setLineSeparator:v10];
    [(AVMessageParser *)v15 setHeaderBodySeparator:v11];
    [(AVMessageParser *)v15 setBodyLengthKey:v12];
    [(AVMessageParser *)v15 setCompressionMethodKey:v13];
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