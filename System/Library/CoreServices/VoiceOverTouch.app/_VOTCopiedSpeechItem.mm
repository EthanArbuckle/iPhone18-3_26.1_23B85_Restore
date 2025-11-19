@interface _VOTCopiedSpeechItem
- (_VOTCopiedSpeechItem)initWithText:(id)a3;
@end

@implementation _VOTCopiedSpeechItem

- (_VOTCopiedSpeechItem)initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _VOTCopiedSpeechItem;
  v5 = [(_VOTCopiedSpeechItem *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_VOTCopiedSpeechItem *)v5 setText:v4];
    v7 = +[NSDate now];
    [(_VOTCopiedSpeechItem *)v6 setTimestamp:v7];
  }

  return v6;
}

@end