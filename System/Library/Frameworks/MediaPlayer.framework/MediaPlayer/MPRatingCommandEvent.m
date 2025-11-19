@interface MPRatingCommandEvent
- (MPRatingCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPRatingCommandEvent

- (MPRatingCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v13.receiver = self;
  v13.super_class = MPRatingCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B11F0]];
    [v10 floatValue];
    v9->_rating = v11;
  }

  return v9;
}

@end