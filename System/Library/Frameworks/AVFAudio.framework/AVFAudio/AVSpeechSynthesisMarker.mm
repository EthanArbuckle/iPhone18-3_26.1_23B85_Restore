@interface AVSpeechSynthesisMarker
+ (void)initialize;
- (AVSpeechSynthesisMarker)initWithCoder:(id)a3;
- (NSRange)textRange;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMark:{-[AVSpeechSynthesisMarker mark](self, "mark")}];
  [v4 setByteSampleOffset:{-[AVSpeechSynthesisMarker byteSampleOffset](self, "byteSampleOffset")}];
  v5 = [(AVSpeechSynthesisMarker *)self textRange];
  [v4 setTextRange:{v5, v6}];
  v7 = [(AVSpeechSynthesisMarker *)self bookmarkName];
  [v4 setBookmarkName:v7];

  v8 = [(AVSpeechSynthesisMarker *)self phoneme];
  [v4 setPhoneme:v8];

  return v4;
}

- (AVSpeechSynthesisMarker)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AVSpeechSynthesisMarker;
  v5 = [(AVSpeechSynthesisMarker *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mark"];
    -[AVSpeechSynthesisMarker setMark:](v5, "setMark:", [v6 integerValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"byteSampleOffset"];
    -[AVSpeechSynthesisMarker setByteSampleOffset:](v5, "setByteSampleOffset:", [v7 unsignedIntegerValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textRange"];
    v9 = [v8 rangeValue];
    [(AVSpeechSynthesisMarker *)v5 setTextRange:v9, v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkName"];
    [(AVSpeechSynthesisMarker *)v5 setBookmarkName:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneme"];
    [(AVSpeechSynthesisMarker *)v5 setPhoneme:v12];

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeInteger:-[AVSpeechSynthesisMarker mark](self forKey:{"mark"), @"mark"}];
  [v10 encodeInteger:-[AVSpeechSynthesisMarker byteSampleOffset](self forKey:{"byteSampleOffset"), @"byteSampleOffset"}];
  v4 = MEMORY[0x1E696B098];
  v5 = [(AVSpeechSynthesisMarker *)self textRange];
  v7 = [v4 valueWithRange:{v5, v6}];
  [v10 encodeObject:v7 forKey:@"textRange"];

  v8 = [(AVSpeechSynthesisMarker *)self phoneme];
  [v10 encodeObject:v8 forKey:@"phoneme"];

  v9 = [(AVSpeechSynthesisMarker *)self bookmarkName];
  [v10 encodeObject:v9 forKey:@"bookmarkName"];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end