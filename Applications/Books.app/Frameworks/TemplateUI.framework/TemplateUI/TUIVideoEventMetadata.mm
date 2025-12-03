@interface TUIVideoEventMetadata
- (TUIVideoEventMetadata)initWithEventCase:(unint64_t)case mode:(unint64_t)mode isMuted:(BOOL)muted isPlaying:(BOOL)playing mediaTimePlayed:(double)played mediaDuration:(double)duration mediaId:(id)id;
- (id)eventCaseAsString;
- (id)serialize;
- (id)triggerForEvent:(unint64_t)event;
@end

@implementation TUIVideoEventMetadata

- (TUIVideoEventMetadata)initWithEventCase:(unint64_t)case mode:(unint64_t)mode isMuted:(BOOL)muted isPlaying:(BOOL)playing mediaTimePlayed:(double)played mediaDuration:(double)duration mediaId:(id)id
{
  v11.receiver = self;
  v11.super_class = TUIVideoEventMetadata;
  result = [(TUIVideoMetadataBase *)&v11 initWithMode:mode isMuted:muted isPlaying:playing mediaTimePlayed:id mediaDuration:played mediaId:duration];
  if (result)
  {
    result->_eventCase = case;
  }

  return result;
}

- (id)serialize
{
  v3 = [NSMutableDictionary alloc];
  v9.receiver = self;
  v9.super_class = TUIVideoEventMetadata;
  serialize = [(TUIVideoMetadataBase *)&v9 serialize];
  v5 = [v3 initWithDictionary:serialize];

  v10 = @"eventCase";
  eventCaseAsString = [(TUIVideoEventMetadata *)self eventCaseAsString];
  v11 = eventCaseAsString;
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

- (id)triggerForEvent:(unint64_t)event
{
  if (qword_2E6488 != -1)
  {
    sub_19B4E8();
  }

  v4 = qword_2E6480;

  return [v4 objectAtIndexedSubscript:event];
}

@end