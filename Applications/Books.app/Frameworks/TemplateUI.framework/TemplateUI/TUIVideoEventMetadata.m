@interface TUIVideoEventMetadata
- (TUIVideoEventMetadata)initWithEventCase:(unint64_t)a3 mode:(unint64_t)a4 isMuted:(BOOL)a5 isPlaying:(BOOL)a6 mediaTimePlayed:(double)a7 mediaDuration:(double)a8 mediaId:(id)a9;
- (id)eventCaseAsString;
- (id)serialize;
- (id)triggerForEvent:(unint64_t)a3;
@end

@implementation TUIVideoEventMetadata

- (TUIVideoEventMetadata)initWithEventCase:(unint64_t)a3 mode:(unint64_t)a4 isMuted:(BOOL)a5 isPlaying:(BOOL)a6 mediaTimePlayed:(double)a7 mediaDuration:(double)a8 mediaId:(id)a9
{
  v11.receiver = self;
  v11.super_class = TUIVideoEventMetadata;
  result = [(TUIVideoMetadataBase *)&v11 initWithMode:a4 isMuted:a5 isPlaying:a6 mediaTimePlayed:a9 mediaDuration:a7 mediaId:a8];
  if (result)
  {
    result->_eventCase = a3;
  }

  return result;
}

- (id)serialize
{
  v3 = [NSMutableDictionary alloc];
  v9.receiver = self;
  v9.super_class = TUIVideoEventMetadata;
  v4 = [(TUIVideoMetadataBase *)&v9 serialize];
  v5 = [v3 initWithDictionary:v4];

  v10 = @"eventCase";
  v6 = [(TUIVideoEventMetadata *)self eventCaseAsString];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

- (id)eventCaseAsString
{
  if (qword_2E6478 != -1)
  {
    sub_19B4D4();
  }

  v3 = qword_2E6470;
  eventCase = self->_eventCase;

  return [v3 objectAtIndexedSubscript:eventCase];
}

- (id)triggerForEvent:(unint64_t)a3
{
  if (qword_2E6488 != -1)
  {
    sub_19B4E8();
  }

  v4 = qword_2E6480;

  return [v4 objectAtIndexedSubscript:a3];
}

@end