@interface HMHomeEventTopic
+ (id)topicFromSuffixID:(unint64_t)a3 homeUUID:(id)a4;
+ (unint64_t)suffixIDFromTopicSuffix:(id)a3;
@end

@implementation HMHomeEventTopic

+ (id)topicFromSuffixID:(unint64_t)a3 homeUUID:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  v7 = [&unk_1F0EFD390 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v5 UUIDString];
    v10 = [v8 stringWithFormat:@"home.%@.%@", v9, v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (unint64_t)suffixIDFromTopicSuffix:(id)a3
{
  v3 = [&unk_1F0EFD368 objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"topicID"];

  if (v4)
  {
    v5 = [v4 unsignedLongLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end