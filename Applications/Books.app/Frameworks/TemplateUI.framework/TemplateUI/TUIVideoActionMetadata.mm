@interface TUIVideoActionMetadata
- (TUIVideoActionMetadata)initWithActionCase:(unint64_t)case origin:(unint64_t)origin mode:(unint64_t)mode isMuted:(BOOL)muted isPlaying:(BOOL)playing mediaTimePlayed:(double)played mediaDuration:(double)duration mediaId:(id)self0;
- (id)actionCaseAsString;
- (id)originAsString;
- (id)serialize;
- (id)triggerForAction:(unint64_t)action;
@end

@implementation TUIVideoActionMetadata

- (TUIVideoActionMetadata)initWithActionCase:(unint64_t)case origin:(unint64_t)origin mode:(unint64_t)mode isMuted:(BOOL)muted isPlaying:(BOOL)playing mediaTimePlayed:(double)played mediaDuration:(double)duration mediaId:(id)self0
{
  v13.receiver = self;
  v13.super_class = TUIVideoActionMetadata;
  result = [(TUIVideoMetadataBase *)&v13 initWithMode:mode isMuted:muted isPlaying:playing mediaTimePlayed:id mediaDuration:played mediaId:duration];
  if (result)
  {
    result->_actionCase = case;
    result->_origin = origin;
  }

  return result;
}

- (id)serialize
{
  v3 = [NSMutableDictionary alloc];
  v10.receiver = self;
  v10.super_class = TUIVideoActionMetadata;
  serialize = [(TUIVideoMetadataBase *)&v10 serialize];
  v5 = [v3 initWithDictionary:serialize];

  v11[0] = @"actionCase";
  actionCaseAsString = [(TUIVideoActionMetadata *)self actionCaseAsString];
  v11[1] = @"origin";
  v12[0] = actionCaseAsString;
  originAsString = [(TUIVideoActionMetadata *)self originAsString];
  v12[1] = originAsString;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 addEntriesFromDictionary:v8];

  return v5;
}

- (id)actionCaseAsString
{
  if (qword_2E6498 != -1)
  {
    sub_19B4FC();
  }

  v3 = qword_2E6490;
  actionCase = self->_actionCase;

  return [v3 objectAtIndexedSubscript:actionCase];
}

- (id)originAsString
{
  if (qword_2E64A8 != -1)
  {
    sub_19B510();
  }

  v3 = qword_2E64A0;
  origin = self->_origin;

  return [v3 objectAtIndexedSubscript:origin];
}

- (id)triggerForAction:(unint64_t)action
{
  if (qword_2E64B8 != -1)
  {
    sub_19B524();
  }

  v4 = qword_2E64B0;

  return [v4 objectAtIndexedSubscript:action];
}

@end