@interface HMAccessoryEventTopic
+ (id)filterTopicsReplacingWithIndex:(id)a3;
+ (id)topicFromSuffixID:(unint64_t)a3 homeUUID:(id)a4 accessoryUUID:(id)a5;
+ (id)topicPrefixWithHomeUUID:(id)a3 accessoryUUID:(id)a4;
+ (unint64_t)suffixIDFromTopicSuffix:(id)a3;
@end

@implementation HMAccessoryEventTopic

+ (id)filterTopicsReplacingWithIndex:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 na_map:&__block_literal_global_17452];
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

+ (id)topicPrefixWithHomeUUID:(id)a3 accessoryUUID:(id)a4
{
  v5 = MEMORY[0x1E69A2A20];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [a3 UUIDString];
  v9 = [v7 UUIDString];

  v10 = [v6 stringWithFormat:@"home.%@.accessory.%@.", v8, v9];
  v11 = [v5 hmf_cachedInstanceForString:v10];

  return v11;
}

+ (id)topicFromSuffixID:(unint64_t)a3 homeUUID:(id)a4 accessoryUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  v10 = [&unk_1F0EFD778 objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = MEMORY[0x1E69A2A20];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v7 UUIDString];
    v14 = [v8 UUIDString];
    v15 = [v12 stringWithFormat:@"home.%@.accessory.%@.%@", v13, v14, v10];
    v16 = [v11 hmf_cachedInstanceForString:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (unint64_t)suffixIDFromTopicSuffix:(id)a3
{
  v3 = [(X *)&unk_1F0EFD750 objectForKeyedSubscript:a3];
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