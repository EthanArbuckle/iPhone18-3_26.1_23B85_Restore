@interface ATXAppPredictionDataHarvesterConstants
+ (NSDictionary)dataHarvestingConstants;
+ (float)actionPredictionSessionDataHarvestSamplingRate;
+ (float)appPredictionSessionDataHarvestSamplingRate;
+ (float)documentPredictionSessionDataHarvestSamplingRate;
+ (unint64_t)actionPredictionSessionDataHarvestMaxItems;
+ (unint64_t)appPredictionSessionDataHarvestMaxItems;
+ (unint64_t)documentPredictionSessionDataHarvestMaxItems;
+ (unint64_t)extraItemsToLog;
- (ATXAppPredictionDataHarvesterConstants)init;
@end

@implementation ATXAppPredictionDataHarvesterConstants

+ (float)actionPredictionSessionDataHarvestSamplingRate
{
  v3 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002ELL, 0x80000002268CFAC0, sub_2267E8C54, &v3, MEMORY[0x277D83A90], &v4);
  return v4;
}

+ (float)appPredictionSessionDataHarvestSamplingRate
{
  v3 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002BLL, 0x80000002268CFAF0, sub_2267E8C54, &v3, MEMORY[0x277D83A90], &v4);
  return v4;
}

+ (float)documentPredictionSessionDataHarvestSamplingRate
{
  v3 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD000000000000030, 0x80000002268CFB20, sub_2267E8C54, &v3, MEMORY[0x277D83A90], &v4);
  return v4;
}

+ (unint64_t)actionPredictionSessionDataHarvestMaxItems
{
  v3 = 10;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002ALL, 0x80000002268CFB60, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

+ (unint64_t)appPredictionSessionDataHarvestMaxItems
{
  v3 = 13;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD000000000000027, 0x80000002268CFB90, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

+ (unint64_t)documentPredictionSessionDataHarvestMaxItems
{
  v3 = 11;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002CLL, 0x80000002268CFBC0, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

+ (unint64_t)extraItemsToLog
{
  v3 = 6;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0x6574496172747845, 0xEF676F4C6F54736DLL, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

+ (NSDictionary)dataHarvestingConstants
{
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  v2 = sub_226836348();

  return v2;
}

- (ATXAppPredictionDataHarvesterConstants)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppPredictionDataHarvesterConstants();
  return [(ATXAppPredictionDataHarvesterConstants *)&v3 init];
}

@end