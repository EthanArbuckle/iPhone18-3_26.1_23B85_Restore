@interface SoundActionData
- (SoundActionData)initWithName:(id)a3 tip:(id)a4 url:(id)a5 usage:(int64_t)a6;
@end

@implementation SoundActionData

- (SoundActionData)initWithName:(id)a3 tip:(id)a4 url:(id)a5 usage:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = SoundActionData;
  v13 = [(SoundActionData *)&v18 init];
  if (v13)
  {
    v14 = [v10 copy];
    [(SoundActionData *)v13 setName:v14];

    v15 = [v11 copy];
    [(SoundActionData *)v13 setTip:v15];

    v16 = [v12 copy];
    [(SoundActionData *)v13 setSoundURL:v16];

    [(SoundActionData *)v13 setUsage:a6];
  }

  return v13;
}

@end