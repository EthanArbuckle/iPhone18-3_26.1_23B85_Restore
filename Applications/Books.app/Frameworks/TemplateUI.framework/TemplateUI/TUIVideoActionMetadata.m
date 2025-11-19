@interface TUIVideoActionMetadata
- (TUIVideoActionMetadata)initWithActionCase:(unint64_t)a3 origin:(unint64_t)a4 mode:(unint64_t)a5 isMuted:(BOOL)a6 isPlaying:(BOOL)a7 mediaTimePlayed:(double)a8 mediaDuration:(double)a9 mediaId:(id)a10;
- (id)actionCaseAsString;
- (id)originAsString;
- (id)serialize;
- (id)triggerForAction:(unint64_t)a3;
@end

@implementation TUIVideoActionMetadata

- (TUIVideoActionMetadata)initWithActionCase:(unint64_t)a3 origin:(unint64_t)a4 mode:(unint64_t)a5 isMuted:(BOOL)a6 isPlaying:(BOOL)a7 mediaTimePlayed:(double)a8 mediaDuration:(double)a9 mediaId:(id)a10
{
  v13.receiver = self;
  v13.super_class = TUIVideoActionMetadata;
  result = [(TUIVideoMetadataBase *)&v13 initWithMode:a5 isMuted:a6 isPlaying:a7 mediaTimePlayed:a10 mediaDuration:a8 mediaId:a9];
  if (result)
  {
    result->_actionCase = a3;
    result->_origin = a4;
  }

  return result;
}

- (id)serialize
{
  v3 = [NSMutableDictionary alloc];
  v10.receiver = self;
  v10.super_class = TUIVideoActionMetadata;
  v4 = [(TUIVideoMetadataBase *)&v10 serialize];
  v5 = [v3 initWithDictionary:v4];

  v11[0] = @"actionCase";
  v6 = [(TUIVideoActionMetadata *)self actionCaseAsString];
  v11[1] = @"origin";
  v12[0] = v6;
  v7 = [(TUIVideoActionMetadata *)self originAsString];
  v12[1] = v7;
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

- (id)triggerForAction:(unint64_t)a3
{
  if (qword_2E64B8 != -1)
  {
    sub_19B524();
  }

  v4 = qword_2E64B0;

  return [v4 objectAtIndexedSubscript:a3];
}

@end