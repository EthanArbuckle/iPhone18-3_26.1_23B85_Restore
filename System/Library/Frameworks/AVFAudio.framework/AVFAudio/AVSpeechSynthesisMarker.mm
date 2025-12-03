@interface AVSpeechSynthesisMarker
+ (void)initialize;
- (AVSpeechSynthesisMarker)initWithCoder:(id)coder;
- (NSRange)textRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVSpeechSynthesisMarker

- (NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setMark:{-[AVSpeechSynthesisMarker mark](self, "mark")}];
  [v4 setByteSampleOffset:{-[AVSpeechSynthesisMarker byteSampleOffset](self, "byteSampleOffset")}];
  textRange = [(AVSpeechSynthesisMarker *)self textRange];
  [v4 setTextRange:{textRange, v6}];
  bookmarkName = [(AVSpeechSynthesisMarker *)self bookmarkName];
  [v4 setBookmarkName:bookmarkName];

  phoneme = [(AVSpeechSynthesisMarker *)self phoneme];
  [v4 setPhoneme:phoneme];

  return v4;
}

- (AVSpeechSynthesisMarker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AVSpeechSynthesisMarker;
  v5 = [(AVSpeechSynthesisMarker *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mark"];
    -[AVSpeechSynthesisMarker setMark:](v5, "setMark:", [v6 integerValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"byteSampleOffset"];
    -[AVSpeechSynthesisMarker setByteSampleOffset:](v5, "setByteSampleOffset:", [v7 unsignedIntegerValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textRange"];
    rangeValue = [v8 rangeValue];
    [(AVSpeechSynthesisMarker *)v5 setTextRange:rangeValue, v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkName"];
    [(AVSpeechSynthesisMarker *)v5 setBookmarkName:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneme"];
    [(AVSpeechSynthesisMarker *)v5 setPhoneme:v12];

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AVSpeechSynthesisMarker mark](self forKey:{"mark"), @"mark"}];
  [coderCopy encodeInteger:-[AVSpeechSynthesisMarker byteSampleOffset](self forKey:{"byteSampleOffset"), @"byteSampleOffset"}];
  v4 = MEMORY[0x1E696B098];
  textRange = [(AVSpeechSynthesisMarker *)self textRange];
  v7 = [v4 valueWithRange:{textRange, v6}];
  [coderCopy encodeObject:v7 forKey:@"textRange"];

  phoneme = [(AVSpeechSynthesisMarker *)self phoneme];
  [coderCopy encodeObject:phoneme forKey:@"phoneme"];

  bookmarkName = [(AVSpeechSynthesisMarker *)self bookmarkName];
  [coderCopy encodeObject:bookmarkName forKey:@"bookmarkName"];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end