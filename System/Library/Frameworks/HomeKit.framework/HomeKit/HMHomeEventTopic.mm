@interface HMHomeEventTopic
+ (id)topicFromSuffixID:(unint64_t)d homeUUID:(id)iD;
+ (unint64_t)suffixIDFromTopicSuffix:(id)suffix;
@end

@implementation HMHomeEventTopic

+ (id)topicFromSuffixID:(unint64_t)d homeUUID:(id)iD
{
  iDCopy = iD;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", d];
  v7 = [&unk_1F0EFD390 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    uUIDString = [iDCopy UUIDString];
    v10 = [v8 stringWithFormat:@"home.%@.%@", uUIDString, v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (unint64_t)suffixIDFromTopicSuffix:(id)suffix
{
  v3 = [&unk_1F0EFD368 objectForKeyedSubscript:suffix];
  v4 = [v3 objectForKeyedSubscript:@"topicID"];

  if (v4)
  {
    unsignedLongLongValue = [v4 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

@end