@interface SoundActionData
- (SoundActionData)initWithName:(id)name tip:(id)tip url:(id)url usage:(int64_t)usage;
@end

@implementation SoundActionData

- (SoundActionData)initWithName:(id)name tip:(id)tip url:(id)url usage:(int64_t)usage
{
  nameCopy = name;
  tipCopy = tip;
  urlCopy = url;
  v18.receiver = self;
  v18.super_class = SoundActionData;
  v13 = [(SoundActionData *)&v18 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    [(SoundActionData *)v13 setName:v14];

    v15 = [tipCopy copy];
    [(SoundActionData *)v13 setTip:v15];

    v16 = [urlCopy copy];
    [(SoundActionData *)v13 setSoundURL:v16];

    [(SoundActionData *)v13 setUsage:usage];
  }

  return v13;
}

@end