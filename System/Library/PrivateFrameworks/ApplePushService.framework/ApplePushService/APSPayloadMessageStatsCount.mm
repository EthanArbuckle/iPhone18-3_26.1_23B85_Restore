@interface APSPayloadMessageStatsCount
- (APSPayloadMessageStatsCount)init;
- (unint64_t)sumOfBucketType:(unsigned __int8)type;
- (void)countTopic:(id)topic now:(double)now;
- (void)dealloc;
- (void)shiftBucketsBasedOnNow:(double)now;
@end

@implementation APSPayloadMessageStatsCount

- (APSPayloadMessageStatsCount)init
{
  v6.receiver = self;
  v6.super_class = APSPayloadMessageStatsCount;
  v2 = [(APSPayloadMessageStatsCount *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_buckets[0].interval = 300.0;
    v2->_buckets[0].count = 12;
    v2->_buckets[0].data = 0;
    v2->_buckets[1].interval = 3600.0;
    v2->_buckets[1].count = 24;
    v2->_buckets[1].data = 0;
    v4 = malloc_type_calloc(0x24uLL, 2uLL, 0x1000040BDFB0063uLL);
    v3->_buckets[0].data = v4;
    v3->_buckets[1].data = &v4[v3->_buckets[0].count];
  }

  return v3;
}

- (void)dealloc
{
  data = self->_buckets[0].data;
  if (data)
  {
    free(data);
  }

  v4.receiver = self;
  v4.super_class = APSPayloadMessageStatsCount;
  [(APSPayloadMessageStatsCount *)&v4 dealloc];
}

- (void)shiftBucketsBasedOnNow:(double)now
{
  lastMessageTime = self->_lastMessageTime;
  if (lastMessageTime != 0.0)
  {
    v4 = 0;
    v5 = now - lastMessageTime;
    buckets = self->_buckets;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = &buckets[v4];
      count = v9->count;
      data = v9->data;
      v12 = (v5 / v9->interval);
      v13 = v12 - count;
      if (v12 >= count)
      {
        bzero(data, 2 * count);
      }

      else if (v12 >= 1 && ~v12 + count >= 0)
      {
        v14 = &data[count - 1];
        v15 = -2 * v12;
        do
        {
          *v14 = *&v14[v15];
          *&v14[v15] = 0;
          v14 -= 2;
        }

        while (!__CFADD__(v13++, 1));
      }

      v7 = 0;
      v4 = 1;
    }

    while ((v8 & 1) != 0);
  }
}

- (void)countTopic:(id)topic now:(double)now
{
  topicCopy = topic;
  [(APSPayloadMessageStatsCount *)self shiftBucketsBasedOnNow:now];
  ++*self->_buckets[0].data;
  count = self->_count;
  ++*self->_buckets[1].data;
  self->_count = count + 1;
  self->_lastMessageTime = now;
  lastMessageTopic = self->_lastMessageTopic;
  self->_lastMessageTopic = topicCopy;
}

- (unint64_t)sumOfBucketType:(unsigned __int8)type
{
  v3 = self + 24 * type;
  v4 = v3[16];
  if (!v3[16])
  {
    return 0;
  }

  result = 0;
  v6 = *(v3 + 3);
  do
  {
    v7 = *v6++;
    result += v7;
    --v4;
  }

  while (v4);
  return result;
}

@end