@interface HMAccessoryEventTopic
+ (id)filterTopicsReplacingWithIndex:(id)index;
+ (id)topicFromSuffixID:(unint64_t)d homeUUID:(id)iD accessoryUUID:(id)uID;
+ (id)topicPrefixWithHomeUUID:(id)d accessoryUUID:(id)iD;
+ (unint64_t)suffixIDFromTopicSuffix:(id)suffix;
@end

@implementation HMAccessoryEventTopic

+ (id)filterTopicsReplacingWithIndex:(id)index
{
  indexCopy = index;
  v4 = objc_autoreleasePoolPush();
  v5 = [indexCopy na_map:&__block_literal_global_17452];
  objc_autoreleasePoolPop(v4);

  return v5;
}

__CFString *__56__HMAccessoryEventTopic_filterTopicsReplacingWithIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMEventTopicHelper decodeTopic:v2];
  v4 = [v3 asAccessorySettingTopic];

  if (v4)
  {
    v5 = @"index.xpc.client.spi.settings";
  }

  else
  {
    v6 = [v3 asAccessoryTopic];

    if (v6)
    {
      v7 = [v3 topicSuffix];
      v8 = [(X *)&unk_1F0EFDB10 objectForKeyedSubscript:v7];
      v9 = [v8 objectForKeyedSubscript:@"indexes"];
      v10 = [v9 objectForKeyedSubscript:@"SpiIndex"];
      v11 = @"index.xpc.client.spi";
      if (!v10)
      {
        v11 = v2;
      }

      v5 = v11;
    }

    else
    {
      v5 = v2;
    }
  }

  return v5;
}

+ (id)topicPrefixWithHomeUUID:(id)d accessoryUUID:(id)iD
{
  v5 = MEMORY[0x1E69A2A20];
  v6 = MEMORY[0x1E696AEC0];
  iDCopy = iD;
  uUIDString = [d UUIDString];
  uUIDString2 = [iDCopy UUIDString];

  v10 = [v6 stringWithFormat:@"home.%@.accessory.%@.", uUIDString, uUIDString2];
  v11 = [v5 hmf_cachedInstanceForString:v10];

  return v11;
}

+ (id)topicFromSuffixID:(unint64_t)d homeUUID:(id)iD accessoryUUID:(id)uID
{
  iDCopy = iD;
  uIDCopy = uID;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", d];
  v10 = [&unk_1F0EFD778 objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = MEMORY[0x1E69A2A20];
    v12 = MEMORY[0x1E696AEC0];
    uUIDString = [iDCopy UUIDString];
    uUIDString2 = [uIDCopy UUIDString];
    v15 = [v12 stringWithFormat:@"home.%@.accessory.%@.%@", uUIDString, uUIDString2, v10];
    v16 = [v11 hmf_cachedInstanceForString:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (unint64_t)suffixIDFromTopicSuffix:(id)suffix
{
  v3 = [(X *)&unk_1F0EFD750 objectForKeyedSubscript:suffix];
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