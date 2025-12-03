@interface _VOTCopiedSpeechItem
- (_VOTCopiedSpeechItem)initWithText:(id)text;
@end

@implementation _VOTCopiedSpeechItem

- (_VOTCopiedSpeechItem)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = _VOTCopiedSpeechItem;
  v5 = [(_VOTCopiedSpeechItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_VOTCopiedSpeechItem *)v5 setText:textCopy];
    v7 = +[NSDate now];
    [(_VOTCopiedSpeechItem *)v6 setTimestamp:v7];
  }

  return v6;
}

@end