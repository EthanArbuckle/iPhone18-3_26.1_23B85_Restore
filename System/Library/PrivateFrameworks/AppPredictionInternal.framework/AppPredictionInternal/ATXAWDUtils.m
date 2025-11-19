@interface ATXAWDUtils
+ (double)scoreMultiplierWithInputType:(unint64_t)a3;
+ (id)appDataAtIndex:(unint64_t)a3 forSessionLogDict:(id)a4;
+ (id)populateAwdAppPredictionSessionForSessionLogDict:(id)a3;
+ (id)subscoresWithDictionary:(id)a3;
+ (int)AWDLOITypeForString:(id)a3;
+ (int)awdActionEngagementWithEngagement:(unint64_t)a3;
+ (int)awdActionTypeWithActionType:(unint64_t)a3;
+ (int)awdAppLaunchReasonWithString:(id)a3;
+ (int)awdConsumerSubTypeWithConsumerSubType:(unsigned __int8)a3;
+ (int)awdLOITypeWithRTLOI:(int64_t)a3;
+ (int)awdMotionTypeWithMotionType:(int64_t)a3;
+ (int)awdPredictionOutcomeWithATXPredictionOutcome:(unint64_t)a3;
+ (int)awdScoreWithScore:(double)a3 type:(unint64_t)a4;
+ (void)logAppPredictionDictionaryViaAWD:(id)a3;
@end

@implementation ATXAWDUtils

+ (int)awdScoreWithScore:(double)a3 type:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 == -31337.0)
  {
    [ATXAWDUtils awdScoreWithScore:a2 type:a1];
  }

  [ATXAWDUtils scoreMultiplierWithInputType:a4];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v9 = v6 * a3;
    if (v9 >= -2147483650.0)
    {
      if (v9 <= 2147483650.0)
      {
        v11 = v9;
      }

      else
      {
        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[ATXAWDUtils awdScoreWithScore:type:];
        }

        v11 = 0x7FFFFFFF;
      }
    }

    else
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        +[ATXAWDUtils awdScoreWithScore:type:];
      }

      v11 = 0x80000000;
    }

    result = v11 - (v11 == -31337.0);
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = a4;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Unexpected nonfinite score input encountered during feedback for scoreType: %lu", &v14, 0xCu);
    }

    result = -31337.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

+ (double)scoreMultiplierWithInputType:(unint64_t)a3
{
  result = 1.0;
  switch(a3)
  {
    case 5uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3DuLL:
    case 0x3FuLL:
    case 0x41uLL:
    case 0x44uLL:
    case 0x46uLL:
    case 0x49uLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
    case 0x7CuLL:
    case 0x7DuLL:
    case 0x81uLL:
    case 0x82uLL:
    case 0x83uLL:
    case 0x88uLL:
    case 0x89uLL:
    case 0x8AuLL:
    case 0x8BuLL:
    case 0x8CuLL:
    case 0x8DuLL:
    case 0x8EuLL:
    case 0x8FuLL:
    case 0x90uLL:
    case 0x91uLL:
    case 0x92uLL:
    case 0x9DuLL:
    case 0x9EuLL:
    case 0x9FuLL:
    case 0xA0uLL:
    case 0xA1uLL:
    case 0xA2uLL:
    case 0xA3uLL:
    case 0xA4uLL:
    case 0xA5uLL:
    case 0xA6uLL:
    case 0xA7uLL:
    case 0xA8uLL:
    case 0xA9uLL:
    case 0xAAuLL:
    case 0xABuLL:
    case 0xACuLL:
    case 0xADuLL:
    case 0xAEuLL:
    case 0xAFuLL:
    case 0xB0uLL:
    case 0xB1uLL:
    case 0xB2uLL:
    case 0xB3uLL:
    case 0xBBuLL:
    case 0xBCuLL:
    case 0xBDuLL:
    case 0xBEuLL:
    case 0xBFuLL:
    case 0xC0uLL:
    case 0xC1uLL:
    case 0xC2uLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0xC5uLL:
    case 0xC6uLL:
    case 0xC7uLL:
    case 0xC8uLL:
    case 0xC9uLL:
    case 0xCAuLL:
    case 0xCBuLL:
    case 0xCCuLL:
    case 0xCDuLL:
    case 0xCEuLL:
    case 0xCFuLL:
    case 0xD0uLL:
    case 0xD1uLL:
    case 0xD2uLL:
    case 0xD3uLL:
    case 0xD4uLL:
    case 0xD5uLL:
    case 0xD6uLL:
    case 0xD7uLL:
    case 0xD8uLL:
    case 0xD9uLL:
    case 0xDAuLL:
    case 0xDBuLL:
    case 0xDCuLL:
    case 0xDDuLL:
    case 0xDEuLL:
    case 0xDFuLL:
    case 0xE0uLL:
    case 0xE1uLL:
    case 0xE2uLL:
    case 0xE3uLL:
    case 0xE4uLL:
    case 0xE5uLL:
    case 0xE6uLL:
    case 0xE7uLL:
    case 0xE8uLL:
    case 0xE9uLL:
    case 0xEAuLL:
    case 0xEBuLL:
    case 0xECuLL:
    case 0xEDuLL:
    case 0xEEuLL:
    case 0xEFuLL:
    case 0xF0uLL:
    case 0xF1uLL:
    case 0xF2uLL:
    case 0xF3uLL:
    case 0xF4uLL:
    case 0xF5uLL:
    case 0xF6uLL:
    case 0xF7uLL:
    case 0xF8uLL:
    case 0xF9uLL:
    case 0xFAuLL:
    case 0xFCuLL:
    case 0xFDuLL:
    case 0x100uLL:
    case 0x102uLL:
    case 0x104uLL:
    case 0x105uLL:
    case 0x107uLL:
    case 0x108uLL:
    case 0x109uLL:
    case 0x110uLL:
    case 0x111uLL:
    case 0x112uLL:
    case 0x113uLL:
    case 0x114uLL:
    case 0x115uLL:
    case 0x116uLL:
    case 0x11DuLL:
    case 0x11EuLL:
    case 0x11FuLL:
    case 0x120uLL:
    case 0x121uLL:
    case 0x122uLL:
    case 0x123uLL:
    case 0x124uLL:
    case 0x127uLL:
    case 0x128uLL:
    case 0x129uLL:
    case 0x12AuLL:
    case 0x12BuLL:
    case 0x12CuLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
    case 0x132uLL:
    case 0x133uLL:
    case 0x134uLL:
    case 0x135uLL:
    case 0x138uLL:
    case 0x139uLL:
    case 0x13AuLL:
    case 0x13BuLL:
    case 0x13CuLL:
    case 0x13DuLL:
    case 0x13EuLL:
    case 0x13FuLL:
    case 0x140uLL:
    case 0x141uLL:
    case 0x142uLL:
    case 0x143uLL:
    case 0x144uLL:
    case 0x145uLL:
    case 0x146uLL:
    case 0x147uLL:
    case 0x148uLL:
    case 0x149uLL:
    case 0x14AuLL:
    case 0x14BuLL:
    case 0x14CuLL:
    case 0x14DuLL:
    case 0x14EuLL:
    case 0x14FuLL:
    case 0x150uLL:
    case 0x151uLL:
    case 0x152uLL:
    case 0x153uLL:
    case 0x154uLL:
    case 0x155uLL:
    case 0x156uLL:
    case 0x157uLL:
    case 0x158uLL:
    case 0x159uLL:
    case 0x15AuLL:
    case 0x15BuLL:
    case 0x15CuLL:
    case 0x15DuLL:
    case 0x15EuLL:
    case 0x15FuLL:
    case 0x160uLL:
    case 0x161uLL:
    case 0x162uLL:
    case 0x168uLL:
    case 0x169uLL:
    case 0x16AuLL:
    case 0x16BuLL:
    case 0x16CuLL:
    case 0x16DuLL:
    case 0x16EuLL:
    case 0x16FuLL:
    case 0x170uLL:
    case 0x171uLL:
    case 0x172uLL:
    case 0x173uLL:
    case 0x174uLL:
    case 0x175uLL:
    case 0x17AuLL:
    case 0x17BuLL:
    case 0x17CuLL:
    case 0x17DuLL:
    case 0x17EuLL:
    case 0x17FuLL:
    case 0x180uLL:
    case 0x185uLL:
    case 0x186uLL:
    case 0x187uLL:
    case 0x188uLL:
    case 0x189uLL:
    case 0x18AuLL:
    case 0x18BuLL:
    case 0x18CuLL:
    case 0x18DuLL:
    case 0x18EuLL:
    case 0x18FuLL:
    case 0x190uLL:
    case 0x191uLL:
    case 0x192uLL:
    case 0x193uLL:
    case 0x194uLL:
    case 0x195uLL:
    case 0x196uLL:
    case 0x197uLL:
    case 0x198uLL:
    case 0x199uLL:
    case 0x19AuLL:
    case 0x19BuLL:
    case 0x19CuLL:
    case 0x19DuLL:
    case 0x19EuLL:
    case 0x19FuLL:
    case 0x1A0uLL:
    case 0x1A1uLL:
    case 0x1A2uLL:
    case 0x1A3uLL:
    case 0x1A4uLL:
    case 0x1A5uLL:
    case 0x1A6uLL:
    case 0x1A7uLL:
    case 0x1A8uLL:
    case 0x1A9uLL:
    case 0x1AAuLL:
    case 0x1ABuLL:
    case 0x1ACuLL:
    case 0x1ADuLL:
    case 0x1AEuLL:
    case 0x1AFuLL:
    case 0x1B0uLL:
    case 0x1B1uLL:
    case 0x1B2uLL:
    case 0x1B3uLL:
    case 0x1B4uLL:
    case 0x1B5uLL:
    case 0x1B6uLL:
    case 0x1B7uLL:
    case 0x1B8uLL:
    case 0x1B9uLL:
    case 0x1BAuLL:
    case 0x1BBuLL:
    case 0x1BCuLL:
    case 0x1BDuLL:
    case 0x1BEuLL:
    case 0x1BFuLL:
    case 0x1C0uLL:
    case 0x1C1uLL:
    case 0x1C2uLL:
    case 0x1C3uLL:
    case 0x1C4uLL:
    case 0x1C5uLL:
    case 0x1C6uLL:
    case 0x1C7uLL:
    case 0x1C8uLL:
    case 0x1C9uLL:
    case 0x1CAuLL:
    case 0x1CBuLL:
    case 0x1CCuLL:
    case 0x1CDuLL:
    case 0x1CEuLL:
    case 0x1CFuLL:
    case 0x1D0uLL:
    case 0x1D1uLL:
    case 0x1D2uLL:
    case 0x1D3uLL:
    case 0x1D4uLL:
    case 0x1D5uLL:
    case 0x1D6uLL:
    case 0x1D7uLL:
    case 0x1D8uLL:
    case 0x1D9uLL:
    case 0x1DAuLL:
    case 0x1DBuLL:
    case 0x1DCuLL:
    case 0x1DDuLL:
    case 0x1DEuLL:
    case 0x1DFuLL:
    case 0x1E0uLL:
    case 0x1E1uLL:
    case 0x1E2uLL:
    case 0x1E3uLL:
    case 0x1E4uLL:
    case 0x1E5uLL:
    case 0x1E6uLL:
    case 0x1E7uLL:
    case 0x1E8uLL:
    case 0x1E9uLL:
    case 0x1EAuLL:
    case 0x1EBuLL:
    case 0x1ECuLL:
    case 0x1EDuLL:
    case 0x1EEuLL:
    case 0x1EFuLL:
    case 0x1F0uLL:
    case 0x1F1uLL:
    case 0x1F2uLL:
    case 0x1F3uLL:
    case 0x1F4uLL:
    case 0x1F5uLL:
    case 0x1F8uLL:
    case 0x1F9uLL:
    case 0x1FAuLL:
    case 0x1FBuLL:
    case 0x1FCuLL:
    case 0x1FDuLL:
    case 0x1FEuLL:
    case 0x1FFuLL:
    case 0x200uLL:
    case 0x201uLL:
    case 0x202uLL:
    case 0x203uLL:
    case 0x204uLL:
    case 0x205uLL:
    case 0x206uLL:
    case 0x207uLL:
    case 0x209uLL:
    case 0x20AuLL:
    case 0x20BuLL:
    case 0x20CuLL:
    case 0x20DuLL:
    case 0x20EuLL:
    case 0x20FuLL:
    case 0x210uLL:
    case 0x211uLL:
    case 0x212uLL:
    case 0x213uLL:
    case 0x214uLL:
    case 0x215uLL:
    case 0x216uLL:
    case 0x217uLL:
    case 0x218uLL:
    case 0x219uLL:
    case 0x21AuLL:
    case 0x21BuLL:
    case 0x21CuLL:
    case 0x21DuLL:
    case 0x21EuLL:
    case 0x21FuLL:
    case 0x220uLL:
    case 0x221uLL:
    case 0x222uLL:
    case 0x223uLL:
    case 0x224uLL:
    case 0x225uLL:
    case 0x226uLL:
    case 0x227uLL:
    case 0x229uLL:
    case 0x22AuLL:
    case 0x22BuLL:
    case 0x22CuLL:
    case 0x22DuLL:
    case 0x22EuLL:
    case 0x22FuLL:
    case 0x230uLL:
    case 0x231uLL:
    case 0x232uLL:
    case 0x233uLL:
    case 0x234uLL:
    case 0x235uLL:
    case 0x236uLL:
    case 0x237uLL:
    case 0x238uLL:
    case 0x239uLL:
    case 0x23AuLL:
    case 0x23BuLL:
    case 0x23CuLL:
    case 0x23DuLL:
    case 0x23EuLL:
    case 0x23FuLL:
    case 0x240uLL:
    case 0x241uLL:
    case 0x242uLL:
    case 0x243uLL:
    case 0x244uLL:
    case 0x245uLL:
    case 0x246uLL:
    case 0x247uLL:
    case 0x248uLL:
    case 0x249uLL:
    case 0x24AuLL:
    case 0x24BuLL:
    case 0x24CuLL:
    case 0x24DuLL:
    case 0x24EuLL:
    case 0x24FuLL:
    case 0x250uLL:
    case 0x251uLL:
    case 0x252uLL:
    case 0x253uLL:
    case 0x254uLL:
    case 0x255uLL:
    case 0x256uLL:
    case 0x257uLL:
    case 0x258uLL:
    case 0x259uLL:
    case 0x25AuLL:
    case 0x25BuLL:
    case 0x25CuLL:
    case 0x25DuLL:
    case 0x25EuLL:
    case 0x25FuLL:
    case 0x260uLL:
    case 0x261uLL:
    case 0x262uLL:
    case 0x263uLL:
    case 0x264uLL:
    case 0x265uLL:
    case 0x266uLL:
    case 0x267uLL:
    case 0x268uLL:
    case 0x269uLL:
    case 0x26AuLL:
    case 0x26BuLL:
    case 0x26CuLL:
    case 0x26DuLL:
    case 0x26EuLL:
    case 0x26FuLL:
    case 0x270uLL:
    case 0x271uLL:
    case 0x272uLL:
    case 0x273uLL:
    case 0x274uLL:
    case 0x275uLL:
    case 0x276uLL:
    case 0x277uLL:
    case 0x278uLL:
    case 0x279uLL:
    case 0x27AuLL:
    case 0x27BuLL:
    case 0x27CuLL:
    case 0x27DuLL:
    case 0x27EuLL:
    case 0x27FuLL:
    case 0x280uLL:
    case 0x281uLL:
    case 0x282uLL:
    case 0x283uLL:
    case 0x284uLL:
    case 0x285uLL:
    case 0x286uLL:
    case 0x287uLL:
    case 0x288uLL:
    case 0x289uLL:
    case 0x28AuLL:
    case 0x28BuLL:
    case 0x28CuLL:
    case 0x28DuLL:
    case 0x28EuLL:
    case 0x28FuLL:
    case 0x290uLL:
    case 0x291uLL:
    case 0x292uLL:
    case 0x293uLL:
    case 0x294uLL:
    case 0x295uLL:
    case 0x296uLL:
    case 0x297uLL:
    case 0x298uLL:
    case 0x299uLL:
    case 0x2A1uLL:
    case 0x2A2uLL:
    case 0x2A3uLL:
    case 0x2A4uLL:
    case 0x2A5uLL:
    case 0x2A6uLL:
    case 0x2A7uLL:
    case 0x2A8uLL:
    case 0x2A9uLL:
    case 0x2AAuLL:
    case 0x2ABuLL:
    case 0x2ACuLL:
    case 0x2ADuLL:
    case 0x2AEuLL:
    case 0x2AFuLL:
    case 0x2B0uLL:
    case 0x2B1uLL:
    case 0x2B2uLL:
    case 0x2B3uLL:
    case 0x2B4uLL:
    case 0x2B5uLL:
    case 0x2B6uLL:
    case 0x2B7uLL:
    case 0x2B8uLL:
    case 0x2B9uLL:
    case 0x2BAuLL:
    case 0x2BBuLL:
    case 0x2BCuLL:
    case 0x2BDuLL:
    case 0x2BEuLL:
    case 0x2BFuLL:
    case 0x2C0uLL:
    case 0x2C1uLL:
    case 0x2C2uLL:
    case 0x2C3uLL:
    case 0x2C4uLL:
    case 0x2C5uLL:
    case 0x2C6uLL:
    case 0x2C7uLL:
    case 0x2C8uLL:
    case 0x2C9uLL:
    case 0x2CAuLL:
    case 0x2CBuLL:
    case 0x2CCuLL:
    case 0x2CDuLL:
    case 0x2CEuLL:
    case 0x2CFuLL:
    case 0x2D0uLL:
    case 0x2D1uLL:
    case 0x2D2uLL:
    case 0x2D3uLL:
    case 0x2D4uLL:
    case 0x2D5uLL:
    case 0x2D6uLL:
    case 0x2D7uLL:
    case 0x2D8uLL:
    case 0x2D9uLL:
    case 0x2DAuLL:
    case 0x2DBuLL:
    case 0x2DCuLL:
    case 0x2DDuLL:
    case 0x2DEuLL:
    case 0x2DFuLL:
    case 0x2E0uLL:
    case 0x2E1uLL:
    case 0x2E2uLL:
    case 0x2E3uLL:
    case 0x2E4uLL:
    case 0x2E5uLL:
    case 0x2E6uLL:
    case 0x2E7uLL:
    case 0x2E8uLL:
    case 0x2E9uLL:
    case 0x2EAuLL:
    case 0x2EBuLL:
    case 0x2ECuLL:
    case 0x2EDuLL:
    case 0x2EEuLL:
    case 0x2EFuLL:
    case 0x2F0uLL:
    case 0x2F1uLL:
    case 0x2F2uLL:
    case 0x2F3uLL:
    case 0x2F4uLL:
    case 0x2F5uLL:
    case 0x2F6uLL:
    case 0x2F7uLL:
    case 0x2F8uLL:
    case 0x2F9uLL:
    case 0x2FAuLL:
    case 0x2FBuLL:
    case 0x2FCuLL:
    case 0x2FDuLL:
    case 0x2FEuLL:
    case 0x2FFuLL:
    case 0x300uLL:
    case 0x302uLL:
    case 0x303uLL:
    case 0x304uLL:
    case 0x305uLL:
    case 0x306uLL:
    case 0x307uLL:
    case 0x308uLL:
    case 0x309uLL:
    case 0x30AuLL:
    case 0x30BuLL:
    case 0x30CuLL:
    case 0x30DuLL:
    case 0x30EuLL:
    case 0x30FuLL:
    case 0x310uLL:
    case 0x311uLL:
    case 0x312uLL:
    case 0x313uLL:
    case 0x314uLL:
    case 0x315uLL:
    case 0x316uLL:
    case 0x317uLL:
    case 0x318uLL:
    case 0x319uLL:
    case 0x31AuLL:
    case 0x31BuLL:
    case 0x31CuLL:
    case 0x31DuLL:
    case 0x31EuLL:
    case 0x31FuLL:
    case 0x320uLL:
    case 0x321uLL:
    case 0x322uLL:
    case 0x323uLL:
    case 0x324uLL:
    case 0x325uLL:
    case 0x326uLL:
    case 0x327uLL:
    case 0x329uLL:
    case 0x32AuLL:
    case 0x32BuLL:
    case 0x32CuLL:
    case 0x330uLL:
    case 0x331uLL:
    case 0x332uLL:
    case 0x333uLL:
    case 0x334uLL:
    case 0x335uLL:
    case 0x336uLL:
    case 0x337uLL:
    case 0x338uLL:
    case 0x339uLL:
    case 0x33AuLL:
    case 0x33BuLL:
      result = 10000.0;
      break;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0x33uLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x3EuLL:
    case 0x40uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x45uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x7EuLL:
    case 0x7FuLL:
    case 0x80uLL:
    case 0x84uLL:
    case 0x85uLL:
    case 0x86uLL:
    case 0x87uLL:
    case 0x93uLL:
    case 0x94uLL:
    case 0x95uLL:
    case 0x96uLL:
    case 0x97uLL:
    case 0x98uLL:
    case 0x99uLL:
    case 0x9AuLL:
    case 0x9BuLL:
    case 0x9CuLL:
    case 0xB4uLL:
    case 0xB5uLL:
    case 0xB6uLL:
    case 0xB7uLL:
    case 0xB8uLL:
    case 0xB9uLL:
    case 0xBAuLL:
    case 0xFBuLL:
    case 0xFEuLL:
    case 0xFFuLL:
    case 0x101uLL:
    case 0x103uLL:
    case 0x106uLL:
    case 0x10AuLL:
    case 0x10BuLL:
    case 0x10CuLL:
    case 0x10DuLL:
    case 0x10EuLL:
    case 0x10FuLL:
    case 0x117uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x11CuLL:
    case 0x125uLL:
    case 0x126uLL:
    case 0x130uLL:
    case 0x131uLL:
    case 0x136uLL:
    case 0x137uLL:
    case 0x163uLL:
    case 0x164uLL:
    case 0x165uLL:
    case 0x166uLL:
    case 0x167uLL:
    case 0x176uLL:
    case 0x177uLL:
    case 0x178uLL:
    case 0x179uLL:
    case 0x181uLL:
    case 0x182uLL:
    case 0x183uLL:
    case 0x184uLL:
    case 0x1F6uLL:
    case 0x1F7uLL:
    case 0x208uLL:
    case 0x228uLL:
    case 0x29AuLL:
    case 0x29BuLL:
    case 0x29CuLL:
    case 0x29DuLL:
    case 0x29EuLL:
    case 0x29FuLL:
    case 0x2A0uLL:
    case 0x301uLL:
    case 0x328uLL:
    case 0x32DuLL:
    case 0x32EuLL:
    case 0x32FuLL:
      return result;
    case 0x33CuLL:
      goto LABEL_5;
    default:
      if (a3 == 0xFFFFFFFF)
      {
LABEL_5:
        result = 0.0;
      }

      break;
  }

  return result;
}

+ (id)subscoresWithDictionary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = off_278594000;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 rangeOfString:@"_ATXScoreInput"];
        v12 = v8[264];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"_ATXScoreInput%@", v10];
          v14 = v13 = v8;
          v15 = [(__objc2_class *)v12 scoreInputForString:v14];

          v8 = v13;
        }

        else
        {
          v15 = [(__objc2_class *)v8[264] scoreInputForString:v10];
        }

        if (v15 != 828 && v15 != 0xFFFFFFFFLL)
        {
          v17 = [v4 objectForKeyedSubscript:v10];
          [v17 doubleValue];
          v19 = v18;

          if (v19 != -31337.0)
          {
            v20 = [ATXAWDUtils awdScoreWithScore:v15 type:v19];
            switch(v15)
            {
              case 0:
                [v24 setInstallAge:v20];
                break;
              case 1:
                [v24 setLastSpotlightLaunchAge:v20];
                break;
              case 2:
                [v24 setLastLaunchAge:v20];
                break;
              case 3:
                [v24 setMedianSecondsBetweenLaunches:v20];
                break;
              case 4:
                [v24 setAverageSecondsBetweenLaunches:v20];
                break;
              case 5:
                [v24 setUnlockTime:v20];
                break;
              case 6:
                [v24 setAppInFolder:v20];
                break;
              case 7:
                [v24 setFolderPage:v20];
                break;
              case 9:
                [v24 setSpringBoardPage:v20];
                break;
              case 10:
                [v24 setOnSpringBoardDock:v20];
                break;
              case 11:
                [v24 setFeedback:v20];
                break;
              case 12:
                [v24 setFeedbackConfirms:v20];
                break;
              case 13:
                [v24 setFeedbackRejects:v20];
                break;
              case 26:
                [v24 setLaunchTimePopularity:v20];
                break;
              case 27:
                [v24 setTimeOfDayPopularity:v20];
                break;
              case 28:
                [v24 setCoarseTimeOfDayPopularity:v20];
                break;
              case 29:
                [v24 setLaunchPopularity:v20];
                break;
              case 30:
                [v24 setSpotlightLaunchTimePopularity:v20];
                break;
              case 31:
                [v24 setSpotlightTimeOfDayPopularity:v20];
                break;
              case 32:
                [v24 setSpotlightLaunchPopularity:v20];
                break;
              case 33:
                [v24 setDayZeroPoints:v20];
                break;
              case 34:
                [v24 setStaticAppPoints:v20];
                break;
              case 35:
                [v24 setLaunchDayOfWeekPopularity:v20];
                break;
              case 36:
                [v24 setDayOfWeekPopularity:v20];
                break;
              case 37:
                [v24 setLaunchSequencePopularity:v20];
                break;
              case 38:
                [v24 setLaunchLocationPopularity:v20];
                break;
              case 39:
                [v24 setAppLaunchMicroLocationPopularity:v20];
                break;
              case 40:
                [v24 setEntropyLaunchPopularity:v20];
                break;
              case 41:
                [v24 setEntropyDayOfWeekPopularity:v20];
                break;
              case 42:
                [v24 setEntropyDayOfWeekPopularityByDay:v20];
                break;
              case 43:
                [v24 setEntropyDayOfWeekPopularityByApp:v20];
                break;
              case 44:
                [v24 setDistanceDayOfWeekToLaunchPopularity:v20];
                break;
              case 45:
                [v24 setEntropyTrendingPopularity:v20];
                break;
              case 46:
                [v24 setDistanceTrendingToLaunchPopularity:v20];
                break;
              case 47:
                [v24 setEntropySSIDPopularity:v20];
                break;
              case 48:
                [v24 setEntropySSIDPopularityBySSID:v20];
                break;
              case 49:
                [v24 setEntropySSIDPopularityByApp:v20];
                break;
              case 50:
                [v24 setDistanceSSIDToLaunchPopularity:v20];
                break;
              case 51:
                [v24 setAppCount:v20];
                break;
              case 52:
                [v24 setDistanceToExplicitLaunchPrediction:v20];
                break;
              case 53:
                [v24 setSiriKitIntentParzen:v20];
                break;
              case 54:
                [v24 setNonSiriKitIntentParzen:v20];
                break;
              case 55:
                [v24 setAppDailyDose:v20];
                break;
              case 56:
                [v24 setCurrentDose:v20];
                break;
              case 57:
                [v24 setAppDailyDoseRemaining:v20];
                break;
              case 58:
                [v24 setAppDailyDoseSmoothedError:v20];
                break;
              case 59:
                [v24 setTotalNumberOfLaunches:v20];
                break;
              case 60:
                [v24 setTotalNumberOfSpotlightLaunches:v20];
                break;
              case 61:
                [v24 setAirplaneModePopularity:v20];
                break;
              case 62:
                [v24 setTotalNumberOfAirplaneModeLaunches:v20];
                break;
              case 63:
                [v24 setTrendingPopularity:v20];
                break;
              case 64:
                [v24 setTotalNumberOfTrendingLaunches:v20];
                break;
              case 65:
                [v24 setSSIDPopularity:v20];
                break;
              case 66:
                [v24 setTotalNumberOfSSIDLaunches:v20];
                break;
              case 67:
                [v24 setOnWifi:v20];
                break;
              case 68:
                [v24 setCoreMotionPopularity:v20];
                break;
              case 69:
                [v24 setTotalNumberOfCoreMotionLaunches:v20];
                break;
              case 70:
                [v24 setMagicalMomentsConfidence:v20];
                break;
              case 71:
                [v24 setMagicalMomentsPredictionReason:v20];
                break;
              case 73:
                [v24 setHeroAppConfidence:v20];
                break;
              case 74:
                [v24 setHeroAppPredictionReason:v20];
                break;
              case 75:
                [v24 setMagicalMomentsHeroAppPredictionIndex:v20];
                break;
              case 76:
                [v24 setMagicalMomentsHeroAppPredictionTotalPredictions:v20];
                break;
              case 77:
                [v24 setMostRecentNotificationAge:v20];
                break;
              case 78:
                [v24 setAppPreferenceBundleBoost:v20];
                break;
              case 79:
                [v24 setAppIntentPartOfWeekPopularity:v20];
                break;
              case 80:
                [v24 setAppIntentLaunchPartOfWeekPopularity:v20];
                break;
              case 81:
                [v24 setGenreTimeOfDayPopularity:v20];
                break;
              case 82:
                [v24 setGenreSequencePopularity:v20];
                break;
              case 83:
                [v24 setGenreDayOfWeekPopularity:v20];
                break;
              case 84:
                [v24 setGenreSpotlightLaunchPopularity:v20];
                break;
              case 85:
                [v24 setTrendingGenrePopularity:v20];
                break;
              case 86:
                [v24 setGenreAirplaneModePopularity:v20];
                break;
              case 87:
                [v24 setGenreDailyDoseRemaining:v20];
                break;
              case 88:
                [v24 setGenreLocationPopularity:v20];
                break;
              case 89:
                [v24 setGenreSSIDPopularity:v20];
                break;
              case 90:
                [v24 setApp2VecClusterTimeOfDayPopularity:v20];
                break;
              case 91:
                [v24 setApp2VecClusterSequencePopularity:v20];
                break;
              case 92:
                [v24 setApp2VecClusterDayOfWeekPopularity:v20];
                break;
              case 93:
                [v24 setApp2VecClusterTrendingPopularity:v20];
                break;
              case 94:
                [v24 setApp2VecClusterLocationPopularity:v20];
                break;
              case 95:
                [v24 setApp2VecClusterCount:v20];
                break;
              case 96:
                [v24 setSupportsMedia:v20];
                break;
              case 97:
                [v24 setAppTimeAndDayOfWeekPopularity:v20];
                break;
              case 98:
                [v24 setAppPopularityGivenTimeAndDayOfWeek:v20];
                break;
              case 99:
                [v24 setAppPopularityOfTimeAndDayOfWeekGivenApp:v20];
                break;
              case 100:
                [v24 setAppTotalNumberOfTimeAndDayOfWeekLaunches:v20];
                break;
              case 101:
                [v24 setAppIntentCount:v20];
                break;
              case 102:
                [v24 setAppIntentSlotCountForAllAppActions:v20];
                break;
              case 103:
                [v24 setAppIntentTotalNumberOfLaunches:v20];
                break;
              case 104:
                [v24 setAppIntentTotalNumberOfAirplaneModeLaunches:v20];
                break;
              case 105:
                [v24 setAppIntentTotalNumberOfSSIDLaunches:v20];
                break;
              case 106:
                [v24 setAppIntentTotalNumberOfCoreMotionLaunches:v20];
                break;
              case 107:
                [v24 setAppIntentTotalNumberOfTrendingLaunches:v20];
                break;
              case 108:
                [v24 setDayOfWeekBucket:v20];
                break;
              case 109:
                [v24 setTimeOfDayBucket:v20];
                break;
              case 110:
                [v24 setIsDateInWeekendOnDevice:v20];
                break;
              case 111:
                [v24 setAppIntentLaunchPopularity:v20];
                break;
              case 112:
                [v24 setAppIntentTrendingPopularity:v20];
                break;
              case 113:
                [v24 setAppIntentTimeOfDayPopularity:v20];
                break;
              case 114:
                [v24 setAppIntentCoarseTimeOfDayPopularity:v20];
                break;
              case 115:
                [v24 setAppIntentDayOfWeekPopularity:v20];
                break;
              case 116:
                [v24 setAppIntentUnlockTime:v20];
                break;
              case 117:
                [v24 setAppIntentSSIDPopularity:v20];
                break;
              case 118:
                [v24 setAppIntentCoreMotionPopularity:v20];
                break;
              case 119:
                [v24 setAppIntentAirplaneModePopularity:v20];
                break;
              case 120:
                [v24 setAppIntentLaunchLocationPopularity:v20];
                break;
              case 121:
                [v24 setAppIntentLaunchMicroLocationPopularity:v20];
                break;
              case 122:
                [v24 setAppIntentLaunchSequencePopularity:v20];
                break;
              case 123:
                [v24 setAppIntentAppLaunchSequencePopularity:v20];
                break;
              case 124:
                [v24 setAppIntentLaunchTimePopularity:v20];
                break;
              case 125:
                [v24 setAppIntentLaunchDayOfWeekPopularity:v20];
                break;
              case 126:
                [v24 setAppIntentLastLaunchAge:v20];
                break;
              case 127:
                [v24 setAppIntentAverageSecondsBetweenAppActions:v20];
                break;
              case 128:
                [v24 setAppIntentMedianSecondsBetweenAppActions:v20];
                break;
              case 129:
                [v24 setAppIntentDayZeroPoints:v20];
                break;
              case 130:
                [v24 setAppIntentStaticPoints:v20];
                break;
              case 131:
                [v24 setAppIntentValueScore:v20];
                break;
              case 132:
                [v24 setAppCategory:v20];
                break;
              case 135:
                [v24 setIntentCategoryFromIntentDefinition:v20];
                break;
              case 136:
                [v24 setAppIntentEntropyLaunchPopularity:v20];
                break;
              case 137:
                [v24 setAppIntentEntropyDayOfWeekPopularity:v20];
                break;
              case 138:
                [v24 setAppIntentEntropyDayOfWeekPopularityByDay:v20];
                break;
              case 139:
                [v24 setAppIntentEntropyDayOfWeekPopularityByAppIntent:v20];
                break;
              case 140:
                [v24 setAppIntentEntropyTrendingPopularity:v20];
                break;
              case 141:
                [v24 setAppIntentEntropySSIDPopularity:v20];
                break;
              case 142:
                [v24 setAppIntentEntropySSIDPopularityBySSID:v20];
                break;
              case 143:
                [v24 setAppIntentEntropySSIDPopularityByAppIntent:v20];
                break;
              case 144:
                [v24 setAppIntentDistanceDayOfWeekToLaunchPopularity:v20];
                break;
              case 145:
                [v24 setAppIntentDistanceTrendingToLaunchPopularity:v20];
                break;
              case 146:
                [v24 setAppIntentDistanceSSIDToLaunchPopularity:v20];
                break;
              case 147:
                [v24 setAppActionConfirmEvents:v20];
                break;
              case 148:
                [v24 setAppActionRejectEvents:v20];
                break;
              case 149:
                [v24 setTotalAppActionConfirmEvents:v20];
                break;
              case 150:
                [v24 setTotalAppActionRejectEvents:v20];
                break;
              case 151:
                [v24 setAppForAllIntentsCount:v20];
                break;
              case 152:
                [v24 setAppForAllIntentsTotalNumberOfLaunches:v20];
                break;
              case 153:
                [v24 setAppForAllIntentsTotalNumberOfAirplaneModeLaunches:v20];
                break;
              case 154:
                [v24 setAppForAllIntentsTotalNumberOfSSIDLaunches:v20];
                break;
              case 155:
                [v24 setAppForAllIntentsTotalNumberOfCoreMotionLaunches:v20];
                break;
              case 156:
                [v24 setAppForAllIntentsTotalNumberOfTrendingLaunches:v20];
                break;
              case 157:
                [v24 setAppForAllIntentsLaunchPopularity:v20];
                break;
              case 158:
                [v24 setAppForAllIntentsTimeOfDayPopularity:v20];
                break;
              case 159:
                [v24 setAppForAllIntentsDayOfWeekPopularity:v20];
                break;
              case 160:
                [v24 setAppForAllIntentsCoarseTimeOfDayPopularity:v20];
                break;
              case 161:
                [v24 setAppForAllIntentsUnlockTime:v20];
                break;
              case 162:
                [v24 setAppForAllIntentsAirplaneModePopularity:v20];
                break;
              case 163:
                [v24 setAppForAllIntentsSSIDPopularity:v20];
                break;
              case 164:
                [v24 setAppForAllIntentsCoreMotionPopularity:v20];
                break;
              case 165:
                [v24 setAppForAllIntentsTrendingPopularity:v20];
                break;
              case 166:
                [v24 setAppForAllIntentsLaunchLocationPopularity:v20];
                break;
              case 167:
                [v24 setAppForAllIntentsLaunchTimePopularity:v20];
                break;
              case 168:
                [v24 setAppForAllIntentsLaunchDayOfWeekPopularity:v20];
                break;
              case 169:
                [v24 setAppForAllIntentsEntropyLaunchPopularity:v20];
                break;
              case 170:
                [v24 setAppForAllIntentsEntropyDayOfWeekPopularity:v20];
                break;
              case 171:
                [v24 setAppForAllIntentsEntropyDayOfWeekPopularityByDay:v20];
                break;
              case 172:
                [v24 setAppForAllIntentsEntropyDayOfWeekPopularityByApp:v20];
                break;
              case 173:
                [v24 setAppForAllIntentsEntropyTrendingPopularity:v20];
                break;
              case 174:
                [v24 setAppForAllIntentsEntropySSIDPopularity:v20];
                break;
              case 175:
                [v24 setAppForAllIntentsEntropySSIDPopularityBySSID:v20];
                break;
              case 176:
                [v24 setAppForAllIntentsEntropySSIDPopularityByApp:v20];
                break;
              case 177:
                [v24 setAppForAllIntentsDistanceSSIDToLaunchPopularity:v20];
                break;
              case 178:
                [v24 setAppForAllIntentsDistanceDayOfWeekToLaunchPopularity:v20];
                break;
              case 179:
                [v24 setAppForAllIntentsDistanceTrendingToLaunchPopularity:v20];
                break;
              case 180:
                [v24 setAppForAllActionsConfirmEvents:v20];
                break;
              case 181:
                [v24 setAppForAllActionsRejectEvents:v20];
                break;
              case 182:
                [v24 setTotalAppForAllActionsConfirmEvents:v20];
                break;
              case 183:
                [v24 setTotalAppForAllActionsRejectEvents:v20];
                break;
              case 184:
                [v24 setSlotCount:v20];
                break;
              case 185:
                [v24 setSlotTotalNumberOfLaunches:v20];
                break;
              case 186:
                [v24 setSlotTotalNumberOfUniqueDaysLaunched:v20];
                break;
              case 187:
                [v24 setSlotLaunchPopularity:v20];
                break;
              case 188:
                [v24 setSlotTimeOfDayPopularity:v20];
                break;
              case 189:
                [v24 setSlotTimeOfDayWithThirtyMinuteWindowPopularity:v20];
                break;
              case 190:
                [v24 setSlotTimeOfDayWithHourWindowPopularity:v20];
                break;
              case 191:
                [v24 setSlotTimeOfDayWithEightHourWindowPopularity:v20];
                break;
              case 192:
                [v24 setSlotDayOfWeekPopularity:v20];
                break;
              case 193:
                [v24 setSlotPartOfWeekPopularity:v20];
                break;
              case 194:
                [v24 setSlotPartOfWeekAndLocationPopularity:v20];
                break;
              case 195:
                [v24 setSlotCoarseTimeOfDayPopularity:v20];
                break;
              case 196:
                [v24 setSlotLocationPopularity:v20];
                break;
              case 197:
                [v24 setSlotCoreMotionPopularity:v20];
                break;
              case 198:
                [v24 setSlotPreviousLocationPopularity:v20];
                break;
              case 199:
                [v24 setSlotTimeAndDayPopularity:v20];
                break;
              case 200:
                [v24 setSlotTimeAndLocationPopularity:v20];
                break;
              case 201:
                [v24 setSlotDayAndLocationPopularity:v20];
                break;
              case 202:
                [v24 setSlotTimeAndDayAndLocationPopularity:v20];
                break;
              case 203:
                [v24 setSlotPreviousLocationAndCoreMotionPopularity:v20];
                break;
              case 204:
                [v24 setSlotPreviousLocationAndLocationPopularity:v20];
                break;
              case 205:
                [v24 setSlotTimeAndPreviousLocationPopularity:v20];
                break;
              case 206:
                [v24 setSlotDayAndPreviousLocationPopularity:v20];
                break;
              case 207:
                [v24 setSlotPartOfWeekAndTimePopularity:v20];
                break;
              case 208:
                [v24 setSlotLaunchTimePopularity:v20];
                break;
              case 209:
                [v24 setSlotLaunchCoarseTimePopularity:v20];
                break;
              case 210:
                [v24 setSlotLaunchDayOfWeekPopularity:v20];
                break;
              case 211:
                [v24 setSlotLaunchPartOfWeekPopularity:v20];
                break;
              case 212:
                [v24 setSlotLaunchPartOfWeekAndLocationPopularity:v20];
                break;
              case 213:
                [v24 setSlotLaunchLocationPopularity:v20];
                break;
              case 214:
                [v24 setSlotLaunchCoreMotionPopularity:v20];
                break;
              case 215:
                [v24 setSlotLaunchPreviousLocationPopularity:v20];
                break;
              case 216:
                [v24 setSlotLaunchTimeAndDayPopularity:v20];
                break;
              case 217:
                [v24 setSlotLaunchTimeAndLocationPopularity:v20];
                break;
              case 218:
                [v24 setSlotLaunchDayAndLocationPopularity:v20];
                break;
              case 219:
                [v24 setSlotLaunchTimeAndDayAndLocationPopularity:v20];
                break;
              case 220:
                [v24 setSlotLaunchPreviousLocationAndCoreMotionPopularity:v20];
                break;
              case 221:
                [v24 setSlotLaunchPreviousLocationAndLocationPopularity:v20];
                break;
              case 222:
                [v24 setSlotLaunchTimeAndPreviousLocationPopularity:v20];
                break;
              case 223:
                [v24 setSlotLaunchDayAndPreviousLocationPopularity:v20];
                break;
              case 224:
                [v24 setSlotLaunchPartOfWeekAndTimePopularity:v20];
                break;
              case 225:
                [v24 setSlotLaunchTimeCount:v20];
                break;
              case 226:
                [v24 setSlotLaunchDayOfWeekCount:v20];
                break;
              case 227:
                [v24 setSlotLaunchPartOfWeekCount:v20];
                break;
              case 228:
                [v24 setSlotLaunchCoarseTimeCount:v20];
                break;
              case 229:
                [v24 setSlotLaunchTimeWithThirtyMinuteWindowCount:v20];
                break;
              case 230:
                [v24 setSlotLaunchTimeWithHourWindowCount:v20];
                break;
              case 231:
                [v24 setSlotLaunchTimeWithEightHourWindowCount:v20];
                break;
              case 232:
                [v24 setSlotLaunchLocationCount:v20];
                break;
              case 233:
                [v24 setSlotLaunchCoreMotionCount:v20];
                break;
              case 234:
                [v24 setSlotLaunchPreviousLocationCount:v20];
                break;
              case 235:
                [v24 setTotalLaunchesForSlotUsingTimeDecay:v20];
                break;
              case 236:
                [v24 setTotalLaunchesForSlotUsingDayOfWeekDecay:v20];
                break;
              case 237:
                [v24 setTotalLaunchesForSlotUsingLocationDecay:v20];
                break;
              case 238:
                [v24 setTotalLaunchesForSlotUsingCoreMotionDecay:v20];
                break;
              case 239:
                [v24 setTotalLaunchesForSlotUsingPreviousLocationDecay:v20];
                break;
              case 240:
                [v24 setTotalLaunchesForSlotUsingPartOfWeekDecay:v20];
                break;
              case 241:
                [v24 setTotalLaunchesForSlotUsingTimeAndDayDecay:v20];
                break;
              case 242:
                [v24 setTotalLaunchesForSlotUsingTimeAndLocationDecay:v20];
                break;
              case 243:
                [v24 setTotalLaunchesForSlotUsingDayAndLocationDecay:v20];
                break;
              case 244:
                [v24 setTotalLaunchesForSlotUsingTimeAndDayAndLocationDecay:v20];
                break;
              case 245:
                [v24 setTotalLaunchesForSlotUsingPreviousLocationAndLocationDecay:v20];
                break;
              case 246:
                [v24 setTotalLaunchesForSlotUsingPreviousLocationAndCoreMotionDecay:v20];
                break;
              case 247:
                [v24 setTotalLaunchesForSlotUsingTimeAndPreviousLocationDecay:v20];
                break;
              case 248:
                [v24 setTotalLaunchesForSlotUsingDayAndPreviousLocationDecay:v20];
                break;
              case 249:
                [v24 setTotalLaunchesForSlotUsingPartOfWeekAndLocationDecay:v20];
                break;
              case 250:
                [v24 setTotalLaunchesForSlotUsingPartOfWeekAndTimeDecay:v20];
                break;
              case 251:
                [v24 setSlotSecondsSinceLastSlot:v20];
                break;
              case 252:
                [v24 setSlotOnlyLaunchedWithinShortTimeSpan:v20];
                break;
              case 253:
                [v24 setSlotTotalNumberOfUndecayedLaunchesForSlot:v20];
                break;
              case 254:
                [v24 setSlotNumberOfUniqueDaysLaunchedForSlot:v20];
                break;
              case 255:
                [v24 setSlotTotalNumberOfLaunchesForSlot:v20];
                break;
              case 256:
                [v24 setSlotLOIBoost:v20];
                break;
              case 257:
                [v24 setSlotNumberOfParameters:v20];
                break;
              case 258:
                [v24 setSlotNumSessionStartsForRootOfApp:v20];
                break;
              case 259:
                [v24 setSlotTotalNumSessionsForRootOfApp:v20];
                break;
              case 260:
                [v24 setSlotNumDocFreqForRootOfApp:v20];
                break;
              case 261:
                [v24 setSlotEntropyForSlotSet:v20];
                break;
              case 262:
                [v24 setSlotTotalNumberOfLaunchesForSlotSet:v20];
                break;
              case 263:
                [v24 setSlotTimeOfDayBudgetMeanForSlot:v20];
                break;
              case 264:
                [v24 setSlotTimeOfDayBudgetStdDevForSlot:v20];
                break;
              case 265:
                [v24 setSlotTodaysTimeOfDayBudgetForSlot:v20];
                break;
              case 266:
                [v24 setSlotFeedbackTotalConfirmsForSlot:v20];
                break;
              case 267:
                [v24 setSlotFeedbackTotalRejectsForSlot:v20];
                break;
              case 268:
                [v24 setSlotFeedbackTotalExplicitRejectsForSlotNoDecay:v20];
                break;
              case 269:
                [v24 setSlotFeedbackTotalConfirmsForAllSlots:v20];
                break;
              case 270:
                [v24 setSlotFeedbackTotalRejectsForAllSlots:v20];
                break;
              case 271:
                [v24 setSlotFeedbackTotalExplicitRejectsForAllSlotsNoDecay:v20];
                break;
              case 272:
                [v24 setSlotFeedbackConfirmRatio:v20];
                break;
              case 273:
                [v24 setSlotFeedbackConfirmRatioStdDev:v20];
                break;
              case 274:
                [v24 setSlotFeedbackConfirmRatioMean:v20];
                break;
              case 275:
                [v24 setSlotFeedbackConfirmRatioCount:v20];
                break;
              case 276:
                [v24 setSlotFeedbackMinutesSinceLastExplicitRejectInHomeScreen:v20];
                break;
              case 277:
                [v24 setSlotFeedbackMinutesSinceLastConfirmInSpotlight:v20];
                break;
              case 278:
                [v24 setSlotFeedbackMinutesSinceLastExplicitRejectInSpotlight:v20];
                break;
              case 279:
                [v24 setSlotFeedbackTotalConfirmsForSlotInLastHourInSpotlight:v20];
                break;
              case 280:
                [v24 setSlotFeedbackTotalRejectsForSlotInLastHourInSpotlight:v20];
                break;
              case 281:
                [v24 setSlotFeedbackTotalConfirmsForSlotInLastTwoHoursInSpotlight:v20];
                break;
              case 282:
                [v24 setSlotFeedbackTotalRejectsForSlotInLastTwoHoursInSpotlight:v20];
                break;
              case 283:
                [v24 setSlotFeedbackTotalConfirmsForSlotTodayInSpotlight:v20];
                break;
              case 284:
                [v24 setSlotFeedbackTotalRejectsForSlotTodayInSpotlight:v20];
                break;
              case 285:
                [v24 setSlotFeedbackTotalConfirmsForSlotInSpotlight:v20];
                break;
              case 286:
                [v24 setSlotFeedbackTotalRejectsForSlotInSpotlight:v20];
                break;
              case 287:
                [v24 setSlotFeedbackConfirmsPartOfWeekCountInSpotlight:v20];
                break;
              case 288:
                [v24 setSlotFeedbackConfirmsDayCountInSpotlight:v20];
                break;
              case 289:
                [v24 setSlotFeedbackConfirmsTimeOfDayCountInSpotlight:v20];
                break;
              case 290:
                [v24 setSlotFeedbackConfirmsCoarseTimeOfDayCountInSpotlight:v20];
                break;
              case 291:
                [v24 setSlotFeedbackTotalConfirmsInSpotlightForAllSlots:v20];
                break;
              case 292:
                [v24 setSlotFeedbackTotalRejectsInSpotlightForAllSlots:v20];
                break;
              case 293:
                [v24 setSlotFeedbackTotalConfirmsForSlotTodayInLockscreen:v20];
                break;
              case 294:
                [v24 setSlotFeedbackTotalRejectsForSlotTodayInLockscreen:v20];
                break;
              case 295:
                [v24 setSlotFeedbackMinutesSinceLastConfirmInLockscreen:v20];
                break;
              case 296:
                [v24 setSlotFeedbackMinutesSinceLastRejectInLockscreen:v20];
                break;
              case 297:
                [v24 setSlotFeedbackMinutesSinceLastExplicitRejectInLockscreen:v20];
                break;
              case 298:
                [v24 setSlotFeedbackTotalConfirmsForSlotInLockscreen:v20];
                break;
              case 299:
                [v24 setSlotFeedbackTotalRejectsForSlotInLockscreen:v20];
                break;
              case 300:
                [v24 setSlotFeedbackConfirmsPartOfWeekCountInLockscreen:v20];
                break;
              case 301:
                [v24 setSlotFeedbackConfirmsDayCountInLockscreen:v20];
                break;
              case 302:
                [v24 setSlotFeedbackConfirmsTimeOfDayCountInLockscreen:v20];
                break;
              case 303:
                [v24 setSlotFeedbackConfirmsCoarseTimeOfDayCountInLockscreen:v20];
                break;
              case 304:
                [v24 setSlotFeedbackTotalConfirmsTodayInLockscreenForAllSlots:v20];
                break;
              case 305:
                [v24 setSlotFeedbackTotalRejectsTodayInLockscreenForAllSlots:v20];
                break;
              case 306:
                [v24 setSlotFeedbackTotalConfirmsInLockscreenForAllSlots:v20];
                break;
              case 307:
                [v24 setSlotFeedbackTotalRejectsInLockscreenForAllSlots:v20];
                break;
              case 308:
                [v24 setActionFeedbackTotalConfirmsInSpotlight:v20];
                break;
              case 309:
                [v24 setActionFeedbackTotalRejectsInSpotlight:v20];
                break;
              case 310:
                [v24 setActionFeedbackTotalConfirmsTodayInLockscreen:v20];
                break;
              case 311:
                [v24 setActionFeedbackTotalRejectsTodayInLockscreen:v20];
                break;
              case 312:
                [v24 setActionFeedbackTotalConfirmsInLockscreen:v20];
                break;
              case 313:
                [v24 setActionFeedbackTotalRejectsInLockscreen:v20];
                break;
              case 314:
                [v24 setActionFeedbackMeanNumberOfSpotlightLaunchesPerDay:v20];
                break;
              case 315:
                [v24 setActionFeedbackMeanNumberOfSpotlightConfirmsPerDay:v20];
                break;
              case 316:
                [v24 setActionLaunchPopularity:v20];
                break;
              case 317:
                [v24 setActionTimeOfDayPopularity:v20];
                break;
              case 318:
                [v24 setActionTimeOfDayWithThirtyMinuteWindowPopularity:v20];
                break;
              case 319:
                [v24 setActionTimeOfDayWithHourWindowPopularity:v20];
                break;
              case 320:
                [v24 setActionTimeOfDayWithEightHourWindowPopularity:v20];
                break;
              case 321:
                [v24 setActionCoarseTimeOfDayPopularity:v20];
                break;
              case 322:
                [v24 setActionDayOfWeekPopularity:v20];
                break;
              case 323:
                [v24 setActionPartOfWeekPopularity:v20];
                break;
              case 324:
                [v24 setActionPartOfWeekAndLocationPopularity:v20];
                break;
              case 325:
                [v24 setActionLocationPopularity:v20];
                break;
              case 326:
                [v24 setActionCoreMotionPopularity:v20];
                break;
              case 327:
                [v24 setActionPreviousLocationPopularity:v20];
                break;
              case 328:
                [v24 setActionPreviousLocationAndCoreMotionPopularity:v20];
                break;
              case 329:
                [v24 setActionPreviousLocationAndLocationPopularity:v20];
                break;
              case 330:
                [v24 setActionTimeAndPreviousLocationPopularity:v20];
                break;
              case 331:
                [v24 setActionDayAndPreviousLocationPopularity:v20];
                break;
              case 332:
                [v24 setActionTimeAndDayPopularity:v20];
                break;
              case 333:
                [v24 setActionTimeAndLocationPopularity:v20];
                break;
              case 334:
                [v24 setActionDayAndLocationPopularity:v20];
                break;
              case 335:
                [v24 setActionTimeAndDayAndLocationPopularity:v20];
                break;
              case 336:
                [v24 setActionPartOfWeekAndTimePopularity:v20];
                break;
              case 337:
                [v24 setTotalLaunchesForAllActionsUsingTimeDecay:v20];
                break;
              case 338:
                [v24 setTotalLaunchesForAllActionsUsingDayOfWeekDecay:v20];
                break;
              case 339:
                [v24 setTotalLaunchesForAllActionsUsingLocationDecay:v20];
                break;
              case 340:
                [v24 setTotalLaunchesForAllActionsUsingCoreMotionDecay:v20];
                break;
              case 341:
                [v24 setTotalLaunchesForAllActionsUsingPreviousLocationDecay:v20];
                break;
              case 342:
                [v24 setTotalLaunchesForAllActionsUsingPartOfWeekDecay:v20];
                break;
              case 343:
                [v24 setTotalLaunchesForAllActionsUsingPreviousLocationAndCoreMotionDecay:v20];
                break;
              case 344:
                [v24 setTotalLaunchesForAllActionsUsingPreviousLocationAndLocationDecay:v20];
                break;
              case 345:
                [v24 setTotalLaunchesForAllActionsUsingTimeAndPreviousLocationDecay:v20];
                break;
              case 346:
                [v24 setTotalLaunchesForAllActionsUsingDayAndPreviousLocationDecay:v20];
                break;
              case 347:
                [v24 setTotalLaunchesForAllActionsUsingTimeAndDayDecay:v20];
                break;
              case 348:
                [v24 setTotalLaunchesForAllActionsUsingTimeAndLocationDecay:v20];
                break;
              case 349:
                [v24 setTotalLaunchesForAllActionsUsingDayAndLocationDecay:v20];
                break;
              case 350:
                [v24 setTotalLaunchesForAllActionsUsingTimeAndDayAndLocationDecay:v20];
                break;
              case 351:
                [v24 setTotalLaunchesForAllActionsUsingPartOfWeekAndLocationDecay:v20];
                break;
              case 352:
                [v24 setTotalLaunchesForAllActionsUsingPartOfWeekAndTimeDecay:v20];
                break;
              case 353:
                [v24 setRandomSessionValue:v20];
                break;
              case 354:
                [v24 setRandomScore:v20];
                break;
              case 355:
                [v24 setActionTotalConfirms:v20];
                break;
              case 356:
                [v24 setActionTotalRejects:v20];
                break;
              case 357:
                [v24 setActionTotalExplicitRejectsNoDecay:v20];
                break;
              case 360:
                [v24 setAppGlobalScoreGivenTimeDayLocationAndLastApp:v20];
                break;
              case 361:
                [v24 setAppGlobalScoreGivenTimeDayAndLocation:v20];
                break;
              case 362:
                [v24 setAppLOITypeLaunches:v20];
                break;
              case 363:
                [v24 setAppLastAppLaunches:v20];
                break;
              case 364:
                [v24 setAppTimeOfDayLaunches:v20];
                break;
              case 365:
                [v24 setAppDayOfWeekLaunches:v20];
                break;
              case 366:
                [v24 setAppBlendedLOITypePopularity:v20];
                break;
              case 367:
                [v24 setAppBlendedLastAppPopularity:v20];
                break;
              case 368:
                [v24 setAppBlendedTimeOfDayPopularity:v20];
                break;
              case 369:
                [v24 setAppBlendedDayOfWeekPopularity:v20];
                break;
              case 370:
                [v24 setAppBlendedLOITypeSampledPopularity:v20];
                break;
              case 371:
                [v24 setAppBlendedLastAppSampledPopularity:v20];
                break;
              case 372:
                [v24 setAppBlendedTimeOfDaySampledPopularity:v20];
                break;
              case 373:
                [v24 setAppBlendedDayOfWeekSampledPopularity:v20];
                break;
              case 374:
                [v24 setActionIsFutureMedia:v20];
                break;
              case 375:
                [v24 setActionIsBackgroundExecutable:v20];
                break;
              case 376:
                [v24 setActionCoreMotionType:v20];
                break;
              case 377:
                [v24 setActionLOIType:v20];
                break;
              case 378:
                [v24 setSlotIsSiriKitIntent:v20];
                break;
              case 379:
                [v24 setSlotIsCustomIntent:v20];
                break;
              case 380:
                [v24 setSlotIsNSUserActivity:v20];
                break;
              case 381:
                [v24 setAppActionScore:v20];
                break;
              case 382:
                [v24 setAppActionLogProbability:v20];
                break;
              case 383:
                [v24 setSlotScore:v20];
                break;
              case 384:
                [v24 setSlotLogProbability:v20];
                break;
              case 385:
                [v24 setActionHeuristicConfirmEvents:v20];
                break;
              case 386:
                [v24 setActionHeuristicRejectEvents:v20];
                break;
              case 387:
                [v24 setTotalActionHeuristicConfirmEvents:v20];
                break;
              case 388:
                [v24 setTotalActionHeuristicRejectEvents:v20];
                break;
              case 389:
                [v24 setAmbientLightTypePopularity:v20];
                break;
              case 390:
                [v24 setAmbientLightTypeLaunchPopularity:v20];
                break;
              case 391:
                [v24 setAppIntentAmbientLightTypePopularity:v20];
                break;
              case 392:
                [v24 setAppIntentAmbientLightTypeLaunchPopularity:v20];
                break;
              case 393:
                [v24 setAppLaunchesCoarseTimePowLocationForAppInContext:v20];
                break;
              case 394:
                [v24 setAppLaunchesCoarseTimePowLocationInContext:v20];
                break;
              case 395:
                [v24 setAppLaunchesCoarseTimePowLocationForApp:v20];
                break;
              case 396:
                [v24 setAppLaunchesCoarseTimePowLocationForAllAppsAndContexts:v20];
                break;
              case 397:
                [v24 setAppConfirmsCoarseTimePowLocationForAppInContext:v20];
                break;
              case 398:
                [v24 setAppConfirmsCoarseTimePowLocationInContext:v20];
                break;
              case 399:
                [v24 setAppConfirmsCoarseTimePowLocationForApp:v20];
                break;
              case 400:
                [v24 setAppConfirmsCoarseTimePowLocationForAllAppsAndContexts:v20];
                break;
              case 401:
                [v24 setAppRejectsCoarseTimePowLocationForAppInContext:v20];
                break;
              case 402:
                [v24 setAppRejectsCoarseTimePowLocationInContext:v20];
                break;
              case 403:
                [v24 setAppRejectsCoarseTimePowLocationForApp:v20];
                break;
              case 404:
                [v24 setAppRejectsCoarseTimePowLocationForAllAppsAndContexts:v20];
                break;
              case 405:
                [v24 setAppExplicitRejectsCoarseTimePowLocationForAppInContext:v20];
                break;
              case 406:
                [v24 setAppExplicitRejectsCoarseTimePowLocationInContext:v20];
                break;
              case 407:
                [v24 setAppExplicitRejectsCoarseTimePowLocationForApp:v20];
                break;
              case 408:
                [v24 setAppExplicitRejectsCoarseTimePowLocationForAllAppsAndContexts:v20];
                break;
              case 409:
                [v24 setAppLaunchesSpecificTimeDowLocationForAppInContext:v20];
                break;
              case 410:
                [v24 setAppLaunchesSpecificTimeDowLocationInContext:v20];
                break;
              case 411:
                [v24 setAppLaunchesSpecificTimeDowLocationForApp:v20];
                break;
              case 412:
                [v24 setAppLaunchesSpecificTimeDowLocationForAllAppsAndContexts:v20];
                break;
              case 413:
                [v24 setAppConfirmsSpecificTimeDowLocationForAppInContext:v20];
                break;
              case 414:
                [v24 setAppConfirmsSpecificTimeDowLocationInContext:v20];
                break;
              case 415:
                [v24 setAppConfirmsSpecificTimeDowLocationForApp:v20];
                break;
              case 416:
                [v24 setAppConfirmsSpecificTimeDowLocationForAllAppsAndContexts:v20];
                break;
              case 417:
                [v24 setAppRejectsSpecificTimeDowLocationForAppInContext:v20];
                break;
              case 418:
                [v24 setAppRejectsSpecificTimeDowLocationInContext:v20];
                break;
              case 419:
                [v24 setAppRejectsSpecificTimeDowLocationForApp:v20];
                break;
              case 420:
                [v24 setAppRejectsSpecificTimeDowLocationForAllAppsAndContexts:v20];
                break;
              case 421:
                [v24 setActionsCoarseTimePowLocationForActionInContext:v20];
                break;
              case 422:
                [v24 setActionsCoarseTimePowLocationInContext:v20];
                break;
              case 423:
                [v24 setActionsCoarseTimePowLocationForAction:v20];
                break;
              case 424:
                [v24 setActionsCoarseTimePowLocationForAllActionsAndContexts:v20];
                break;
              case 425:
                [v24 setActionConfirmsCoarseTimePowLocationForActionInContext:v20];
                break;
              case 426:
                [v24 setActionConfirmsCoarseTimePowLocationInContext:v20];
                break;
              case 427:
                [v24 setActionConfirmsCoarseTimePowLocationForAction:v20];
                break;
              case 428:
                [v24 setActionConfirmsCoarseTimePowLocationForAllActionsAndContexts:v20];
                break;
              case 429:
                [v24 setActionRejectsCoarseTimePowLocationForActionInContext:v20];
                break;
              case 430:
                [v24 setActionRejectsCoarseTimePowLocationInContext:v20];
                break;
              case 431:
                [v24 setActionRejectsCoarseTimePowLocationForAction:v20];
                break;
              case 432:
                [v24 setActionRejectsCoarseTimePowLocationForAllActionsAndContexts:v20];
                break;
              case 433:
                [v24 setActionsSpecificTimeDowLocationForActionInContext:v20];
                break;
              case 434:
                [v24 setActionsSpecificTimeDowLocationInContext:v20];
                break;
              case 435:
                [v24 setActionsSpecificTimeDowLocationForAction:v20];
                break;
              case 436:
                [v24 setActionsSpecificTimeDowLocationForAllActionsAndContexts:v20];
                break;
              case 437:
                [v24 setActionConfirmsSpecificTimeDowLocationForActionInContext:v20];
                break;
              case 438:
                [v24 setActionConfirmsSpecificTimeDowLocationInContext:v20];
                break;
              case 439:
                [v24 setActionConfirmsSpecificTimeDowLocationForAction:v20];
                break;
              case 440:
                [v24 setActionConfirmsSpecificTimeDowLocationForAllActionsAndContexts:v20];
                break;
              case 441:
                [v24 setActionRejectsSpecificTimeDowLocationForActionInContext:v20];
                break;
              case 442:
                [v24 setActionRejectsSpecificTimeDowLocationInContext:v20];
                break;
              case 443:
                [v24 setActionRejectsSpecificTimeDowLocationForAction:v20];
                break;
              case 444:
                [v24 setActionRejectsSpecificTimeDowLocationForAllActionsAndContexts:v20];
                break;
              case 445:
                [v24 setAppLaunchesInTimeBucket0ForApp:v20];
                break;
              case 446:
                [v24 setAppLaunchesInTimeBucket1ForApp:v20];
                break;
              case 447:
                [v24 setAppLaunchesInTimeBucket2ForApp:v20];
                break;
              case 448:
                [v24 setAppLaunchesInTimeBucket3ForApp:v20];
                break;
              case 449:
                [v24 setAppLaunchesInTimeBucket4ForApp:v20];
                break;
              case 450:
                [v24 setAppLaunchesInTimeBucket5ForApp:v20];
                break;
              case 451:
                [v24 setAppLaunchesInTimeBucket6ForApp:v20];
                break;
              case 452:
                [v24 setAppLaunchesInTimeBucket7ForApp:v20];
                break;
              case 453:
                [v24 setAppLaunchesInTimeBucket8ForApp:v20];
                break;
              case 454:
                [v24 setAppLaunchesInTimeBucket9ForApp:v20];
                break;
              case 455:
                [v24 setAppLaunchesInTimeBucket10ForApp:v20];
                break;
              case 456:
                [v24 setAppLaunchesInTimeBucket11ForApp:v20];
                break;
              case 457:
                [v24 setAppLaunchesInTimeBucket12ForApp:v20];
                break;
              case 458:
                [v24 setAppLaunchesInTimeBucket13ForApp:v20];
                break;
              case 459:
                [v24 setAppLaunchesInTimeBucket14ForApp:v20];
                break;
              case 460:
                [v24 setAppLaunchesInTimeBucket15ForApp:v20];
                break;
              case 461:
                [v24 setAppLaunchesInTimeBucket16ForApp:v20];
                break;
              case 462:
                [v24 setAppLaunchesInTimeBucket17ForApp:v20];
                break;
              case 463:
                [v24 setAppLaunchesInTimeBucket18ForApp:v20];
                break;
              case 464:
                [v24 setAppLaunchesInTimeBucket19ForApp:v20];
                break;
              case 465:
                [v24 setAppLaunchesInTimeBucket20ForApp:v20];
                break;
              case 466:
                [v24 setAppLaunchesInTimeBucket21ForApp:v20];
                break;
              case 467:
                [v24 setAppLaunchesInTimeBucket22ForApp:v20];
                break;
              case 468:
                [v24 setAppLaunchesInTimeBucket23ForApp:v20];
                break;
              case 469:
                [v24 setAppLaunchesInTimeBucket24ForApp:v20];
                break;
              case 470:
                [v24 setAppLaunchesOnDayOfWeekSundayForApp:v20];
                break;
              case 471:
                [v24 setAppLaunchesOnDayOfWeekMondayForApp:v20];
                break;
              case 472:
                [v24 setAppLaunchesOnDayOfWeekTuesdayForApp:v20];
                break;
              case 473:
                [v24 setAppLaunchesOnDayOfWeekWednesdayForApp:v20];
                break;
              case 474:
                [v24 setAppLaunchesOnDayOfWeekThursdayForApp:v20];
                break;
              case 475:
                [v24 setAppLaunchesOnDayOfWeekFridayForApp:v20];
                break;
              case 476:
                [v24 setAppLaunchesOnDayOfWeekSaturdayForApp:v20];
                break;
              case 477:
                [v24 setAppLaunchesAtCoarseGeoHash0ForApp:v20];
                break;
              case 478:
                [v24 setAppLaunchesAtCoarseGeoHash1ForApp:v20];
                break;
              case 479:
                [v24 setAppLaunchesAtCoarseGeoHash2ForApp:v20];
                break;
              case 480:
                [v24 setAppLaunchesAtCoarseGeoHash3ForApp:v20];
                break;
              case 481:
                [v24 setAppLaunchesAtCoarseGeoHash4ForApp:v20];
                break;
              case 482:
                [v24 setAppLaunchesAtCoarseGeoHash5ForApp:v20];
                break;
              case 483:
                [v24 setAppLaunchesAtCoarseGeoHash6ForApp:v20];
                break;
              case 484:
                [v24 setAppLaunchesAtCoarseGeoHash7ForApp:v20];
                break;
              case 485:
                [v24 setAppLaunchesAtCoarseGeoHash8ForApp:v20];
                break;
              case 486:
                [v24 setAppLaunchesAtCoarseGeoHash9ForApp:v20];
                break;
              case 487:
                [v24 setAppLaunchesAtSpecificGeoHash0ForApp:v20];
                break;
              case 488:
                [v24 setAppLaunchesAtSpecificGeoHash1ForApp:v20];
                break;
              case 489:
                [v24 setAppLaunchesAtSpecificGeoHash2ForApp:v20];
                break;
              case 490:
                [v24 setAppLaunchesAtSpecificGeoHash3ForApp:v20];
                break;
              case 491:
                [v24 setAppLaunchesAtSpecificGeoHash4ForApp:v20];
                break;
              case 492:
                [v24 setAppLaunchesAtSpecificGeoHash5ForApp:v20];
                break;
              case 493:
                [v24 setAppLaunchesAtSpecificGeoHash6ForApp:v20];
                break;
              case 494:
                [v24 setAppLaunchesAtSpecificGeoHash7ForApp:v20];
                break;
              case 495:
                [v24 setAppLaunchesAtSpecificGeoHash8ForApp:v20];
                break;
              case 496:
                [v24 setAppLaunchesAtSpecificGeoHash9ForApp:v20];
                break;
              case 497:
                [v24 setAppLaunchesAtSpecificGeoHash10ForApp:v20];
                break;
              case 498:
                [v24 setAppLaunchesAtSpecificGeoHash11ForApp:v20];
                break;
              case 499:
                [v24 setAppLaunchesAtSpecificGeoHash12ForApp:v20];
                break;
              case 500:
                [v24 setAppLaunchesAtSpecificGeoHash13ForApp:v20];
                break;
              case 501:
                [v24 setAppLaunchesAtSpecificGeoHash14ForApp:v20];
                break;
              case 502:
                [v24 setAppNumberOfSpecificGeohashesForApp:v20];
                break;
              case 503:
                [v24 setAppNumberOfCoarseGeohashesForApp:v20];
                break;
              case 504:
                [v24 setAppEntropyForTimeBuckets:v20];
                break;
              case 505:
                [v24 setAppEntropyForSpecificGeoHash:v20];
                break;
              case 506:
                [v24 setAppEntropyForCoarseGeoHash:v20];
                break;
              case 507:
                [v24 setAppLaunchesAtSpecificGeoHashForAppInContext:v20];
                break;
              case 508:
                [v24 setAppLaunchesAtCoarseGeoHashForAppInContext:v20];
                break;
              case 509:
                [v24 setAppLaunchesAtDayOfWeekInContext:v20];
                break;
              case 510:
                [v24 setAppLaunchesAtDayOfWeekForApp:v20];
                break;
              case 511:
                [v24 setAppLaunchesAtTimeAndDayForAppInContext:v20];
                break;
              case 512:
                [v24 setAppLaunchesAtTimeAndDayInContext:v20];
                break;
              case 513:
                [v24 setAppLaunchesAtTimeAndDayForApp:v20];
                break;
              case 514:
                [v24 setAppLaunchesAtCoarseGeoHashInContext:v20];
                break;
              case 515:
                [v24 setAppLaunchesAtCoarseGeoHashForApp:v20];
                break;
              case 516:
                [v24 setAppLaunchesAtSpecificGeoHashInContext:v20];
                break;
              case 517:
                [v24 setAppLaunchesAtSpecificGeoHashForApp:v20];
                break;
              case 518:
                [v24 setAppLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 519:
                [v24 setAppLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 520:
                [v24 setIsLocationServicesDisabled:v20];
                break;
              case 521:
                [v24 setAppLaunchesInTwoHourTimeBucketForAppInContext:v20];
                break;
              case 522:
                [v24 setAppLaunchesInTwoHourTimeBucketInContext:v20];
                break;
              case 523:
                [v24 setAppLaunchesInTwoHourTimeBucketForApp:v20];
                break;
              case 524:
                [v24 setAppConfirmsInTwoHourTimeBucketForAppInContext:v20];
                break;
              case 525:
                [v24 setAppConfirmsInTwoHourTimeBucketInContext:v20];
                break;
              case 526:
                [v24 setAppConfirmsInTwoHourTimeBucketForApp:v20];
                break;
              case 527:
                [v24 setAppRejectsInTwoHourTimeBucketForAppInContext:v20];
                break;
              case 528:
                [v24 setAppRejectsInTwoHourTimeBucketInContext:v20];
                break;
              case 529:
                [v24 setAppRejectsInTwoHourTimeBucketForApp:v20];
                break;
              case 530:
                [v24 setAppConfirmsAtDayOfWeekForAppInContext:v20];
                break;
              case 531:
                [v24 setAppConfirmsAtDayOfWeekInContext:v20];
                break;
              case 532:
                [v24 setAppConfirmsAtDayOfWeekForApp:v20];
                break;
              case 533:
                [v24 setAppRejectsAtDayOfWeekForAppInContext:v20];
                break;
              case 534:
                [v24 setAppRejectsAtDayOfWeekInContext:v20];
                break;
              case 535:
                [v24 setAppRejectsAtDayOfWeekForApp:v20];
                break;
              case 536:
                [v24 setAppConfirmsAtCoarseGeoHashForAppInContext:v20];
                break;
              case 537:
                [v24 setAppConfirmsAtCoarseGeoHashInContext:v20];
                break;
              case 538:
                [v24 setAppConfirmsAtCoarseGeoHashForApp:v20];
                break;
              case 539:
                [v24 setAppRejectsAtCoarseGeoHashForAppInContext:v20];
                break;
              case 540:
                [v24 setAppRejectsAtCoarseGeoHashInContext:v20];
                break;
              case 541:
                [v24 setAppRejectsAtCoarseGeoHashForApp:v20];
                break;
              case 542:
                [v24 setAppConfirmsAtSpecificGeoHashForAppInContext:v20];
                break;
              case 543:
                [v24 setAppConfirmsAtSpecificGeoHashInContext:v20];
                break;
              case 544:
                [v24 setAppConfirmsAtSpecificGeoHashForApp:v20];
                break;
              case 545:
                [v24 setAppRejectsAtSpecificGeoHashForAppInContext:v20];
                break;
              case 546:
                [v24 setAppRejectsAtSpecificGeoHashInContext:v20];
                break;
              case 547:
                [v24 setAppRejectsAtSpecificGeoHashForApp:v20];
                break;
              case 548:
                [v24 setAppConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 549:
                [v24 setAppConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 550:
                [v24 setAppRejectsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 551:
                [v24 setAppRejectsForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 552:
                [v24 setCurrentTimeBucketFromZeroToTwentyFour:v20];
                break;
              case 553:
                [v24 setActionsAtDayOfWeekForActionInContext:v20];
                break;
              case 554:
                [v24 setActionsAtDayOfWeekInContext:v20];
                break;
              case 555:
                [v24 setActionsAtDayOfWeekForAction:v20];
                break;
              case 556:
                [v24 setActionsAtCoarseGeoHashForActionInContext:v20];
                break;
              case 557:
                [v24 setActionsAtCoarseGeoHashInContext:v20];
                break;
              case 558:
                [v24 setActionsAtCoarseGeoHashForAction:v20];
                break;
              case 559:
                [v24 setActionsAtSpecificGeoHashForActionInContext:v20];
                break;
              case 560:
                [v24 setActionsAtSpecificGeoHashInContext:v20];
                break;
              case 561:
                [v24 setActionsAtSpecificGeoHashForAction:v20];
                break;
              case 562:
                [v24 setActionsAtTimeOfDayForActionInContext:v20];
                break;
              case 563:
                [v24 setActionsAtTimeOfDayInContext:v20];
                break;
              case 564:
                [v24 setActionsAtTimeOfDayForAction:v20];
                break;
              case 565:
                [v24 setActionConfirmsAtTimeOfDayForActionInContext:v20];
                break;
              case 566:
                [v24 setActionConfirmsAtTimeOfDayInContext:v20];
                break;
              case 567:
                [v24 setActionConfirmsAtTimeOfDayForAction:v20];
                break;
              case 568:
                [v24 setActionRejectsAtTimeOfDayForActionInContext:v20];
                break;
              case 569:
                [v24 setActionRejectsAtTimeOfDayInContext:v20];
                break;
              case 570:
                [v24 setActionRejectsAtTimeOfDayForAction:v20];
                break;
              case 571:
                [v24 setActionConfirmsAtDayOfWeekForActionInContext:v20];
                break;
              case 572:
                [v24 setActionConfirmsAtDayOfWeekInContext:v20];
                break;
              case 573:
                [v24 setActionConfirmsAtDayOfWeekForAction:v20];
                break;
              case 574:
                [v24 setActionRejectsAtDayOfWeekForActionInContext:v20];
                break;
              case 575:
                [v24 setActionRejectsAtDayOfWeekInContext:v20];
                break;
              case 576:
                [v24 setActionRejectsAtDayOfWeekForAction:v20];
                break;
              case 577:
                [v24 setActionConfirmsAtCoarseGeoHashForActionInContext:v20];
                break;
              case 578:
                [v24 setActionConfirmsAtCoarseGeoHashInContext:v20];
                break;
              case 579:
                [v24 setActionConfirmsAtCoarseGeoHashForAction:v20];
                break;
              case 580:
                [v24 setActionRejectsAtCoarseGeoHashForActionInContext:v20];
                break;
              case 581:
                [v24 setActionRejectsAtCoarseGeoHashInContext:v20];
                break;
              case 582:
                [v24 setActionRejectsAtCoarseGeoHashForAction:v20];
                break;
              case 583:
                [v24 setActionConfirmsAtSpecificGeoHashForActionInContext:v20];
                break;
              case 584:
                [v24 setActionConfirmsAtSpecificGeoHashInContext:v20];
                break;
              case 585:
                [v24 setActionConfirmsAtSpecificGeoHashForAction:v20];
                break;
              case 586:
                [v24 setActionRejectsAtSpecificGeoHashForActionInContext:v20];
                break;
              case 587:
                [v24 setActionRejectsAtSpecificGeoHashInContext:v20];
                break;
              case 588:
                [v24 setActionRejectsAtSpecificGeoHashForAction:v20];
                break;
              case 589:
                [v24 setActionsInTimeBucket0ForAction:v20];
                break;
              case 590:
                [v24 setActionsInTimeBucket1ForAction:v20];
                break;
              case 591:
                [v24 setActionsInTimeBucket2ForAction:v20];
                break;
              case 592:
                [v24 setActionsInTimeBucket3ForAction:v20];
                break;
              case 593:
                [v24 setActionsInTimeBucket4ForAction:v20];
                break;
              case 594:
                [v24 setActionsInTimeBucket5ForAction:v20];
                break;
              case 595:
                [v24 setActionsInTimeBucket6ForAction:v20];
                break;
              case 596:
                [v24 setActionsInTimeBucket7ForAction:v20];
                break;
              case 597:
                [v24 setActionsInTimeBucket8ForAction:v20];
                break;
              case 598:
                [v24 setActionsInTimeBucket9ForAction:v20];
                break;
              case 599:
                [v24 setActionsInTimeBucket10ForAction:v20];
                break;
              case 600:
                [v24 setActionsInTimeBucket11ForAction:v20];
                break;
              case 601:
                [v24 setActionsInTimeBucket12ForAction:v20];
                break;
              case 602:
                [v24 setActionsInTimeBucket13ForAction:v20];
                break;
              case 603:
                [v24 setActionsInTimeBucket14ForAction:v20];
                break;
              case 604:
                [v24 setActionsInTimeBucket15ForAction:v20];
                break;
              case 605:
                [v24 setActionsInTimeBucket16ForAction:v20];
                break;
              case 606:
                [v24 setActionsInTimeBucket17ForAction:v20];
                break;
              case 607:
                [v24 setActionsInTimeBucket18ForAction:v20];
                break;
              case 608:
                [v24 setActionsInTimeBucket19ForAction:v20];
                break;
              case 609:
                [v24 setActionsInTimeBucket20ForAction:v20];
                break;
              case 610:
                [v24 setActionsInTimeBucket21ForAction:v20];
                break;
              case 611:
                [v24 setActionsInTimeBucket22ForAction:v20];
                break;
              case 612:
                [v24 setActionsInTimeBucket23ForAction:v20];
                break;
              case 613:
                [v24 setActionsInTimeBucket24ForAction:v20];
                break;
              case 614:
                [v24 setActionsOnDayOfWeekSundayForAction:v20];
                break;
              case 615:
                [v24 setActionsOnDayOfWeekMondayForAction:v20];
                break;
              case 616:
                [v24 setActionsOnDayOfWeekTuesdayForAction:v20];
                break;
              case 617:
                [v24 setActionsOnDayOfWeekWednesdayForAction:v20];
                break;
              case 618:
                [v24 setActionsOnDayOfWeekThursdayForAction:v20];
                break;
              case 619:
                [v24 setActionsOnDayOfWeekFridayForAction:v20];
                break;
              case 620:
                [v24 setActionsOnDayOfWeekSaturdayForAction:v20];
                break;
              case 621:
                [v24 setActionsAtCoarseGeoHash0ForAction:v20];
                break;
              case 622:
                [v24 setActionsAtCoarseGeoHash1ForAction:v20];
                break;
              case 623:
                [v24 setActionsAtCoarseGeoHash2ForAction:v20];
                break;
              case 624:
                [v24 setActionsAtCoarseGeoHash3ForAction:v20];
                break;
              case 625:
                [v24 setActionsAtCoarseGeoHash4ForAction:v20];
                break;
              case 626:
                [v24 setActionsAtCoarseGeoHash5ForAction:v20];
                break;
              case 627:
                [v24 setActionsAtCoarseGeoHash6ForAction:v20];
                break;
              case 628:
                [v24 setActionsAtCoarseGeoHash7ForAction:v20];
                break;
              case 629:
                [v24 setActionsAtCoarseGeoHash8ForAction:v20];
                break;
              case 630:
                [v24 setActionsAtCoarseGeoHash9ForAction:v20];
                break;
              case 631:
                [v24 setActionsAtSpecificGeoHash0ForAction:v20];
                break;
              case 632:
                [v24 setActionsAtSpecificGeoHash1ForAction:v20];
                break;
              case 633:
                [v24 setActionsAtSpecificGeoHash2ForAction:v20];
                break;
              case 634:
                [v24 setActionsAtSpecificGeoHash3ForAction:v20];
                break;
              case 635:
                [v24 setActionsAtSpecificGeoHash4ForAction:v20];
                break;
              case 636:
                [v24 setActionsAtSpecificGeoHash5ForAction:v20];
                break;
              case 637:
                [v24 setActionsAtSpecificGeoHash6ForAction:v20];
                break;
              case 638:
                [v24 setActionsAtSpecificGeoHash7ForAction:v20];
                break;
              case 639:
                [v24 setActionsAtSpecificGeoHash8ForAction:v20];
                break;
              case 640:
                [v24 setActionsAtSpecificGeoHash9ForAction:v20];
                break;
              case 641:
                [v24 setActionsAtSpecificGeoHash10ForAction:v20];
                break;
              case 642:
                [v24 setActionsAtSpecificGeoHash11ForAction:v20];
                break;
              case 643:
                [v24 setActionsAtSpecificGeoHash12ForAction:v20];
                break;
              case 644:
                [v24 setActionsAtSpecificGeoHash13ForAction:v20];
                break;
              case 645:
                [v24 setActionsAtSpecificGeoHash14ForAction:v20];
                break;
              case 646:
                [v24 setActionEntropyForTimeOfDay:v20];
                break;
              case 647:
                [v24 setActionEntropyForDayOfWeek:v20];
                break;
              case 648:
                [v24 setActionEntropyForCoarseGeoHash:v20];
                break;
              case 649:
                [v24 setActionEntropyForSpecificGeoHash:v20];
                break;
              case 650:
                [v24 setActionNumberOfSpecificGeohashesForAction:v20];
                break;
              case 651:
                [v24 setActionNumberOfCoarseGeohashesForAction:v20];
                break;
              case 652:
                [v24 setAppLaunchesAtZoom7GeoHashForAppInContext:v20];
                break;
              case 653:
                [v24 setAppLaunchesAtZoom7GeoHashInContext:v20];
                break;
              case 654:
                [v24 setAppLaunchesAtZoom7GeoHashForApp:v20];
                break;
              case 655:
                [v24 setAppLaunchesAtZoom7GeoHash0ForApp:v20];
                break;
              case 656:
                [v24 setAppLaunchesAtZoom7GeoHash1ForApp:v20];
                break;
              case 657:
                [v24 setAppLaunchesAtZoom7GeoHash2ForApp:v20];
                break;
              case 658:
                [v24 setAppLaunchesAtZoom7GeoHash3ForApp:v20];
                break;
              case 659:
                [v24 setAppLaunchesAtZoom7GeoHash4ForApp:v20];
                break;
              case 660:
                [v24 setAppLaunchesAtZoom7GeoHash5ForApp:v20];
                break;
              case 661:
                [v24 setAppLaunchesAtZoom7GeoHash6ForApp:v20];
                break;
              case 662:
                [v24 setAppLaunchesAtZoom7GeoHash7ForApp:v20];
                break;
              case 663:
                [v24 setAppLaunchesAtZoom7GeoHash8ForApp:v20];
                break;
              case 664:
                [v24 setAppLaunchesAtZoom7GeoHash9ForApp:v20];
                break;
              case 665:
                [v24 setAppEntropyForZoom7GeoHash:v20];
                break;
              case 666:
                [v24 setAppNumberOfZoom7GeohashesForApp:v20];
                break;
              case 667:
                [v24 setAppGeoAssociationScoreAtZoom7:v20];
                break;
              case 668:
                [v24 setAppGeoAssociationScoreAtZoom13:v20];
                break;
              case 669:
                [v24 setAppGeoAssociationScoreAtZoom16:v20];
                break;
              case 670:
                [v24 setAppPartOfWeekAssociationScore:v20];
                break;
              case 671:
                [v24 setAppCoarseTimeAssociationScore:v20];
                break;
              case 672:
                [v24 setAppLOITypeAssociationScore:v20];
                break;
              case 673:
                [v24 setAppLaunchesAtSSIDForAppInContext:v20];
                break;
              case 674:
                [v24 setAppLaunchesAtSSIDForApp:v20];
                break;
              case 675:
                [v24 setAppLaunchesForCoreMotionForAppInContext:v20];
                break;
              case 676:
                [v24 setAppLaunchesInAirplaneModeForAppInContext:v20];
                break;
              case 677:
                [v24 setHomeScreenAppConfirmsOnDayOfWeekForAppInContext:v20];
                break;
              case 678:
                [v24 setHomeScreenAppConfirmsOnDayOfWeekInContext:v20];
                break;
              case 679:
                [v24 setHomeScreenAppConfirmsOnDayOfWeekForApp:v20];
                break;
              case 680:
                [v24 setHomeScreenAppRejectsOnDayOfWeekForAppInContext:v20];
                break;
              case 681:
                [v24 setHomeScreenAppRejectsOnDayOfWeekInContext:v20];
                break;
              case 682:
                [v24 setHomeScreenAppRejectsOnDayOfWeekForApp:v20];
                break;
              case 683:
                [v24 setHomeScreenAppConfirmsInTwoHourTimeIntervalForAppInContext:v20];
                break;
              case 684:
                [v24 setHomeScreenAppConfirmsInTwoHourTimeIntervalInContext:v20];
                break;
              case 685:
                [v24 setHomeScreenAppConfirmsInTwoHourTimeIntervalForApp:v20];
                break;
              case 686:
                [v24 setHomeScreenAppRejectsInTwoHourTimeIntervalForAppInContext:v20];
                break;
              case 687:
                [v24 setHomeScreenAppRejectsInTwoHourTimeIntervalInContext:v20];
                break;
              case 688:
                [v24 setHomeScreenAppRejectsInTwoHourTimeIntervalForApp:v20];
                break;
              case 689:
                [v24 setHomeScreenAppConfirmsAtCoarseGeohashForAppInContext:v20];
                break;
              case 690:
                [v24 setHomeScreenAppConfirmsAtCoarseGeohashInContext:v20];
                break;
              case 691:
                [v24 setHomeScreenAppConfirmsAtCoarseGeohashForApp:v20];
                break;
              case 692:
                [v24 setHomeScreenAppRejectsAtCoarseGeohashForAppInContext:v20];
                break;
              case 693:
                [v24 setHomeScreenAppRejectsAtCoarseGeohashInContext:v20];
                break;
              case 694:
                [v24 setHomeScreenAppRejectsAtCoarseGeohashForApp:v20];
                break;
              case 695:
                [v24 setHomeScreenAppConfirmsAtSpecificGeohashForAppInContext:v20];
                break;
              case 696:
                [v24 setHomeScreenAppConfirmsAtSpecificGeohashInContext:v20];
                break;
              case 697:
                [v24 setHomeScreenAppConfirmsAtSpecificGeohashForApp:v20];
                break;
              case 698:
                [v24 setHomeScreenAppRejectsAtSpecificGeohashForAppInContext:v20];
                break;
              case 699:
                [v24 setHomeScreenAppRejectsAtSpecificGeohashInContext:v20];
                break;
              case 700:
                [v24 setHomeScreenAppRejectsAtSpecificGeohashForApp:v20];
                break;
              case 701:
                [v24 setHomeScreenAppConfirmsAtCoarseTimePOWLocationForAppInContext:v20];
                break;
              case 702:
                [v24 setHomeScreenAppConfirmsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 703:
                [v24 setHomeScreenAppConfirmsAtCoarseTimePOWLocationForApp:v20];
                break;
              case 704:
                [v24 setHomeScreenAppRejectsAtCoarseTimePOWLocationForAppInContext:v20];
                break;
              case 705:
                [v24 setHomeScreenAppRejectsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 706:
                [v24 setHomeScreenAppRejectsAtCoarseTimePOWLocationForApp:v20];
                break;
              case 707:
                [v24 setHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationForAppInContext:v20];
                break;
              case 708:
                [v24 setHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 709:
                [v24 setHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationForApp:v20];
                break;
              case 710:
                [v24 setHomeScreenAppConfirmsAtSpecificTimeDOWLocationForAppInContext:v20];
                break;
              case 711:
                [v24 setHomeScreenAppConfirmsAtSpecificTimeDOWLocationInContext:v20];
                break;
              case 712:
                [v24 setHomeScreenAppConfirmsAtSpecificTimeDOWLocationForApp:v20];
                break;
              case 713:
                [v24 setHomeScreenAppRejectsAtSpecificTimeDOWLocationForAppInContext:v20];
                break;
              case 714:
                [v24 setHomeScreenAppRejectsAtSpecificTimeDOWLocationInContext:v20];
                break;
              case 715:
                [v24 setHomeScreenAppRejectsAtSpecificTimeDOWLocationForApp:v20];
                break;
              case 716:
                [v24 setHomeScreenTotalLaunchesForApp:v20];
                break;
              case 717:
                [v24 setHomeScreenTotalLaunchesForAllApps:v20];
                break;
              case 718:
                [v24 setAppDirectoryTotalLaunchesForApp:v20];
                break;
              case 719:
                [v24 setAppDirectoryTotalLaunchesForAllApps:v20];
                break;
              case 720:
                [v24 setAppDirectoryConfirmsOnDayOfWeekForAppInContext:v20];
                break;
              case 721:
                [v24 setAppDirectoryConfirmsOnDayOfWeekInContext:v20];
                break;
              case 722:
                [v24 setAppDirectoryConfirmsOnDayOfWeekForApp:v20];
                break;
              case 723:
                [v24 setAppDirectoryRejectsOnDayOfWeekForAppInContext:v20];
                break;
              case 724:
                [v24 setAppDirectoryRejectsOnDayOfWeekInContext:v20];
                break;
              case 725:
                [v24 setAppDirectoryRejectsOnDayOfWeekForApp:v20];
                break;
              case 726:
                [v24 setAppDirectoryConfirmsInTwoHourTimeIntervalForAppInContext:v20];
                break;
              case 727:
                [v24 setAppDirectoryConfirmsInTwoHourTimeIntervalInContext:v20];
                break;
              case 728:
                [v24 setAppDirectoryConfirmsInTwoHourTimeIntervalForApp:v20];
                break;
              case 729:
                [v24 setAppDirectoryRejectsInTwoHourTimeIntervalForAppInContext:v20];
                break;
              case 730:
                [v24 setAppDirectoryRejectsInTwoHourTimeIntervalInContext:v20];
                break;
              case 731:
                [v24 setAppDirectoryRejectsInTwoHourTimeIntervalForApp:v20];
                break;
              case 732:
                [v24 setAppDirectoryConfirmsAtCoarseGeohashForAppInContext:v20];
                break;
              case 733:
                [v24 setAppDirectoryConfirmsAtCoarseGeohashInContext:v20];
                break;
              case 734:
                [v24 setAppDirectoryConfirmsAtCoarseGeohashForApp:v20];
                break;
              case 735:
                [v24 setAppDirectoryRejectsAtCoarseGeohashForAppInContext:v20];
                break;
              case 736:
                [v24 setAppDirectoryRejectsAtCoarseGeohashInContext:v20];
                break;
              case 737:
                [v24 setAppDirectoryRejectsAtCoarseGeohashForApp:v20];
                break;
              case 738:
                [v24 setAppDirectoryConfirmsAtSpecificGeohashForAppInContext:v20];
                break;
              case 739:
                [v24 setAppDirectoryConfirmsAtSpecificGeohashInContext:v20];
                break;
              case 740:
                [v24 setAppDirectoryConfirmsAtSpecificGeohashForApp:v20];
                break;
              case 741:
                [v24 setAppDirectoryRejectsAtSpecificGeohashForAppInContext:v20];
                break;
              case 742:
                [v24 setAppDirectoryRejectsAtSpecificGeohashInContext:v20];
                break;
              case 743:
                [v24 setAppDirectoryRejectsAtSpecificGeohashForApp:v20];
                break;
              case 744:
                [v24 setAppDirectoryConfirmsAtCoarseTimePOWLocationForAppInContext:v20];
                break;
              case 745:
                [v24 setAppDirectoryConfirmsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 746:
                [v24 setAppDirectoryConfirmsAtCoarseTimePOWLocationForApp:v20];
                break;
              case 747:
                [v24 setAppDirectoryRejectsAtCoarseTimePOWLocationForAppInContext:v20];
                break;
              case 748:
                [v24 setAppDirectoryRejectsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 749:
                [v24 setAppDirectoryRejectsAtCoarseTimePOWLocationForApp:v20];
                break;
              case 750:
                [v24 setAppDirectoryExplicitRejectsAtCoarseTimePOWLocationForAppInContext:v20];
                break;
              case 751:
                [v24 setAppDirectoryExplicitRejectsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 752:
                [v24 setAppDirectoryExplicitRejectsAtCoarseTimePOWLocationForApp:v20];
                break;
              case 753:
                [v24 setAppDirectoryConfirmsAtSpecificTimeDOWLocationForAppInContext:v20];
                break;
              case 754:
                [v24 setAppDirectoryConfirmsAtSpecificTimeDOWLocationInContext:v20];
                break;
              case 755:
                [v24 setAppDirectoryConfirmsAtSpecificTimeDOWLocationForApp:v20];
                break;
              case 756:
                [v24 setAppDirectoryRejectsAtSpecificTimeDOWLocationForAppInContext:v20];
                break;
              case 757:
                [v24 setAppDirectoryRejectsAtSpecificTimeDOWLocationInContext:v20];
                break;
              case 758:
                [v24 setAppDirectoryRejectsAtSpecificTimeDOWLocationForApp:v20];
                break;
              case 759:
                [v24 setHomeScreenAppConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 760:
                [v24 setHomeScreenAppConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 761:
                [v24 setHomeScreenAppRejectsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 762:
                [v24 setHomeScreenAppRejectsForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 763:
                [v24 setHomeScreenAppExplicitRejectsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 764:
                [v24 setAppDirectoryConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 765:
                [v24 setAppDirectoryConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 766:
                [v24 setAppDirectoryRejectsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 767:
                [v24 setAppDirectoryRejectsForAllAppsAndContextsDecayedAtSpecificContextRate:v20];
                break;
              case 768:
                [v24 setAppDirectoryExplicitRejectsForAllAppsAndContextsDecayedAtCoarseContextRate:v20];
                break;
              case 769:
                [v24 setIsAppClip:v20];
                break;
              case 770:
                [v24 setHomeScreenActionConfirmsOnDayOfWeekForActionInContext:v20];
                break;
              case 771:
                [v24 setHomeScreenActionConfirmsOnDayOfWeekInContext:v20];
                break;
              case 772:
                [v24 setHomeScreenActionConfirmsOnDayOfWeekForAction:v20];
                break;
              case 773:
                [v24 setHomeScreenActionConfirmsAtTimeOfDayForActionInContext:v20];
                break;
              case 774:
                [v24 setHomeScreenActionConfirmsAtTimeOfDayInContext:v20];
                break;
              case 775:
                [v24 setHomeScreenActionConfirmsAtTimeOfDayForAction:v20];
                break;
              case 776:
                [v24 setHomeScreenActionConfirmsAtCoarseGeohashForActionInContext:v20];
                break;
              case 777:
                [v24 setHomeScreenActionConfirmsAtCoarseGeohashInContext:v20];
                break;
              case 778:
                [v24 setHomeScreenActionConfirmsAtCoarseGeohashForAction:v20];
                break;
              case 779:
                [v24 setHomeScreenActionConfirmsAtSpecificGeohashForActionInContext:v20];
                break;
              case 780:
                [v24 setHomeScreenActionConfirmsAtSpecificGeohashInContext:v20];
                break;
              case 781:
                [v24 setHomeScreenActionConfirmsAtSpecificGeohashForAction:v20];
                break;
              case 782:
                [v24 setHomeScreenActionConfirmsAtCoarseTimePOWLocationForActionInContext:v20];
                break;
              case 783:
                [v24 setHomeScreenActionConfirmsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 784:
                [v24 setHomeScreenActionConfirmsAtCoarseTimePOWLocationForAction:v20];
                break;
              case 785:
                [v24 setHomeScreenActionConfirmsAtSpecificTimeDOWLocationForActionInContext:v20];
                break;
              case 786:
                [v24 setHomeScreenActionConfirmsAtSpecificTimeDOWLocationInContext:v20];
                break;
              case 787:
                [v24 setHomeScreenActionConfirmsAtSpecificTimeDOWLocationForAction:v20];
                break;
              case 788:
                [v24 setHomeScreenActionRejectsOnDayOfWeekForActionInContext:v20];
                break;
              case 789:
                [v24 setHomeScreenActionRejectsOnDayOfWeekInContext:v20];
                break;
              case 790:
                [v24 setHomeScreenActionRejectsOnDayOfWeekForAction:v20];
                break;
              case 791:
                [v24 setHomeScreenActionRejectsAtTimeOfDayForActionInContext:v20];
                break;
              case 792:
                [v24 setHomeScreenActionRejectsAtTimeOfDayInContext:v20];
                break;
              case 793:
                [v24 setHomeScreenActionRejectsAtTimeOfDayForAction:v20];
                break;
              case 794:
                [v24 setHomeScreenActionRejectsAtCoarseGeohashForActionInContext:v20];
                break;
              case 795:
                [v24 setHomeScreenActionRejectsAtCoarseGeohashInContext:v20];
                break;
              case 796:
                [v24 setHomeScreenActionRejectsAtCoarseGeohashForAction:v20];
                break;
              case 797:
                [v24 setHomeScreenActionRejectsAtSpecificGeohashForActionInContext:v20];
                break;
              case 798:
                [v24 setHomeScreenActionRejectsAtSpecificGeohashInContext:v20];
                break;
              case 799:
                [v24 setHomeScreenActionRejectsAtSpecificGeohashForAction:v20];
                break;
              case 800:
                [v24 setHomeScreenActionRejectsAtCoarseTimePOWLocationForActionInContext:v20];
                break;
              case 801:
                [v24 setHomeScreenActionRejectsAtCoarseTimePOWLocationInContext:v20];
                break;
              case 802:
                [v24 setHomeScreenActionRejectsAtCoarseTimePOWLocationForAction:v20];
                break;
              case 803:
                [v24 setHomeScreenActionRejectsAtSpecificTimeDOWLocationForActionInContext:v20];
                break;
              case 804:
                [v24 setHomeScreenActionRejectsAtSpecificTimeDOWLocationInContext:v20];
                break;
              case 805:
                [v24 setHomeScreenActionRejectsAtSpecificTimeDOWLocationForAction:v20];
                break;
              case 806:
                [v24 setPoiPopularityForAppInContext:v20];
                break;
              case 807:
                [v24 setAppLaunchPopularityAtPOIForAppInContext:v20];
                break;
              case 808:
                [v24 setPoiCategory:v20];
                break;
              case 809:
                [v24 setAppLaunchesAtPOIForAppInContext:v20];
                break;
              case 810:
                [v24 setAppCategoryScore:v20];
                break;
              case 811:
                [v24 setPosteriorProbabilityOfAppGivenMode:v20];
                break;
              case 812:
                [v24 setClassConditionalProbabilityOfModeGivenApp:v20];
                break;
              case 813:
                [v24 setUniqueOccurrencesOfAppInMode:v20];
                break;
              case 814:
                [v24 setLocalOccurrencesOfAppInMode:v20];
                break;
              case 815:
                [v24 setGlobalOccurrencesOfAppInMode:v20];
                break;
              case 816:
                [v24 setAppModeEntityScore:v20];
                break;
              default:
                break;
            }
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v21 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (int)awdConsumerSubTypeWithConsumerSubType:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x31)
  {
    return 0;
  }

  else
  {
    return dword_2268722C8[(a3 - 1)];
  }
}

+ (int)awdLOITypeWithRTLOI:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_2268723D0[a3];
  }
}

+ (int)awdActionEngagementWithEngagement:(unint64_t)a3
{
  if (a3 - 1 < 0xA)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (int)awdActionTypeWithActionType:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        v4 = __atxlog_handle_default();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          [ATXAWDUtils awdActionTypeWithActionType:v4];
        }

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"awdActionTypeWithActionType called with invalid ATXActionType value of %tu", 3}];
        return 4;
      }

      return 2;
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
          return 1;
        }

        return 4;
      }

      return 0;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        return 5;
      }

      return 4;
    }

    switch(a3)
    {
      case 6uLL:
        return 6;
      case 7uLL:
        return 7;
      case 8uLL:
        return 3;
      default:
        return 4;
    }
  }
}

+ (int)awdAppLaunchReasonWithString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (launchReasonMap)
  {
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    launchReasonMap = &unk_283A58DF8;

    if (!v4)
    {
LABEL_8:
      LODWORD(v5) = 0;
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [launchReasonMap objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [launchReasonMap objectForKeyedSubscript:v4];
    LODWORD(v5) = [v6 intValue];
  }

LABEL_9:

  return v5;
}

+ (int)awdMotionTypeWithMotionType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 2;
  }

  else
  {
    return dword_226872390[a3];
  }
}

+ (id)appDataAtIndex:(unint64_t)a3 forSessionLogDict:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [v5 objectForKeyedSubscript:@"AppData"];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [ATXAWDUtils subscoresWithDictionary:v8];

  [v6 setSubscores:v9];
  v10 = [v5 objectForKeyedSubscript:@"AppData"];
  v11 = [v10 objectAtIndexedSubscript:a3];
  v12 = [v11 objectForKeyedSubscript:@"Score"];

  if (v12)
  {
    v13 = [v5 objectForKeyedSubscript:@"AppData"];
    v14 = [v13 objectAtIndexedSubscript:a3];
    v15 = [v14 objectForKeyedSubscript:@"Score"];
    [v15 doubleValue];
    [v6 setScore:?];
  }

  v16 = [v5 objectForKeyedSubscript:@"EngagedApp"];
  if (v16)
  {
    v17 = v16;
    v18 = [v5 objectForKeyedSubscript:@"EngagedApp"];
    v19 = [v18 intValue];

    if (v19 != -1)
    {
      [v6 setEngagedApp:a3 == 0];
    }
  }

  v20 = [v5 objectForKeyedSubscript:@"AppData"];
  v21 = [v20 objectAtIndexedSubscript:a3];
  v22 = [v21 objectForKeyedSubscript:@"BundleId"];

  if (v22)
  {
    v23 = [v5 objectForKeyedSubscript:@"AppData"];
    v24 = [v23 objectAtIndexedSubscript:a3];
    v25 = [v24 objectForKeyedSubscript:@"BundleId"];
    [v6 setBundleId:v25];
  }

  return v6;
}

+ (id)populateAwdAppPredictionSessionForSessionLogDict:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKey:@"CoreMotionLaunches"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"CoreMotionLaunches"];
    [v5 setCoreMotionLaunches:{objc_msgSend(v7, "intValue")}];
  }

  v8 = [v4 objectForKey:@"TotalAirplaneModeLaunches"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"TotalAirplaneModeLaunches"];
    [v5 setTotalAirplaneModeLaunches:{objc_msgSend(v9, "intValue")}];
  }

  v10 = [v4 objectForKey:@"InAirplaneMode"];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"InAirplaneMode"];
    [v5 setInAirplaneMode:{objc_msgSend(v11, "intValue") != 0}];
  }

  v12 = [v4 objectForKey:@"CoreMotionCurrentMotionLaunches"];

  if (v12)
  {
    v13 = [v4 objectForKeyedSubscript:@"CoreMotionCurrentMotionLaunches"];
    [v5 setCoreMotionCurrentMotionLaunches:{objc_msgSend(v13, "intValue")}];
  }

  v14 = [v4 objectForKey:@"TotalSpotlightLaunches"];

  if (v14)
  {
    v15 = [v4 objectForKeyedSubscript:@"TotalSpotlightLaunches"];
    [v5 setTotalSpotlightLaunches:{objc_msgSend(v15, "intValue")}];
  }

  v16 = [v4 objectForKey:@"TotalLaunchSequences"];

  if (v16)
  {
    v17 = [v4 objectForKeyedSubscript:@"TotalLaunchSequences"];
    [v5 setTotalLaunchSequences:{objc_msgSend(v17, "intValue")}];
  }

  v18 = [v4 objectForKey:@"TotalCurrentDayOfWeekLaunches"];

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:@"TotalCurrentDayOfWeekLaunches"];
    [v5 setTotalCurrentDayOfWeekLaunches:{objc_msgSend(v19, "intValue")}];
  }

  v20 = [v4 objectForKey:@"TotalWifiLaunches"];

  if (v20)
  {
    v21 = [v4 objectForKeyedSubscript:@"TotalWifiLaunches"];
    [v5 setTotalWifiLaunches:{objc_msgSend(v21, "intValue")}];
  }

  v22 = [v4 objectForKey:@"TimeOfDayInterval"];

  if (v22)
  {
    v23 = [v4 objectForKeyedSubscript:@"TimeOfDayInterval"];
    [v5 setTimeOfDayInterval:{objc_msgSend(v23, "intValue")}];
  }

  v24 = [v4 objectForKey:@"TotalLaunches"];

  if (v24)
  {
    v25 = [v4 objectForKeyedSubscript:@"TotalLaunches"];
    [v5 setTotalLaunches:{objc_msgSend(v25, "intValue")}];
  }

  v26 = [v4 objectForKey:@"EngagedApp"];

  if (v26)
  {
    v27 = [v4 objectForKeyedSubscript:@"EngagedApp"];
    [v5 setEngagedApp:{objc_msgSend(v27, "intValue")}];
  }

  v28 = [v4 objectForKey:@"TotalTrendingLaunches"];

  if (v28)
  {
    v29 = [v4 objectForKeyedSubscript:@"TotalTrendingLaunches"];
    [v5 setTotalTrendingLaunches:{objc_msgSend(v29, "intValue")}];
  }

  v30 = [v4 objectForKey:@"TotalTimeOfDayLaunches"];

  if (v30)
  {
    v31 = [v4 objectForKeyedSubscript:@"TotalTimeOfDayLaunches"];
    [v5 setTotalTimeOfDayLaunches:{objc_msgSend(v31, "intValue")}];
  }

  v32 = [v4 objectForKey:@"TotalSSIDLaunches"];

  if (v32)
  {
    v33 = [v4 objectForKeyedSubscript:@"TotalSSIDLaunches"];
    [v5 setTotalSSIDLaunches:{objc_msgSend(v33, "intValue")}];
  }

  v34 = [v4 objectForKey:@"LocationDistanceFromHome"];

  if (v34)
  {
    v35 = [v4 objectForKeyedSubscript:@"LocationDistanceFromHome"];
    [v5 setLocationDistanceFromHome:{objc_msgSend(v35, "intValue")}];
  }

  v36 = [v4 objectForKey:@"LocationDistanceFromWork"];

  if (v36)
  {
    v37 = [v4 objectForKeyedSubscript:@"LocationDistanceFromWork"];
    [v5 setLocationDistanceFromWork:{objc_msgSend(v37, "intValue")}];
  }

  v38 = [v4 objectForKey:@"LocationDistanceFromSchool"];

  if (v38)
  {
    v39 = [v4 objectForKeyedSubscript:@"LocationDistanceFromSchool"];
    [v5 setLocationDistanceFromSchool:{objc_msgSend(v39, "intValue")}];
  }

  v40 = [v4 objectForKey:@"LocationDistanceFromGym"];

  if (v40)
  {
    v41 = [v4 objectForKeyedSubscript:@"LocationDistanceFromGym"];
    [v5 setLocationDistanceFromGym:{objc_msgSend(v41, "intValue")}];
  }

  v42 = [v4 objectForKey:@"IsInternalBuild"];

  if (v42)
  {
    v43 = [v4 objectForKeyedSubscript:@"IsInternalBuild"];
    [v5 setIsInternalBuild:{objc_msgSend(v43, "BOOLValue")}];
  }

  v44 = [v4 objectForKey:@"PredictionCacheAge"];

  if (v44)
  {
    v45 = [v4 objectForKeyedSubscript:@"PredictionCacheAge"];
    [v5 setPredictionCacheAge:{objc_msgSend(v45, "intValue")}];
  }

  v46 = [v4 objectForKey:@"session_log_version"];

  if (v46)
  {
    v47 = [v4 objectForKeyedSubscript:@"session_log_version"];
    [v5 setSessionLogVersion:{objc_msgSend(v47, "intValue")}];
  }

  v48 = [v4 objectForKey:@"TotalSpotlightTimeOfDayLaunches"];

  if (v48)
  {
    v49 = [v4 objectForKeyedSubscript:@"TotalSpotlightTimeOfDayLaunches"];
    [v5 setTotalSpotlightLaunches:{objc_msgSend(v49, "intValue")}];
  }

  v50 = [v4 objectForKey:@"TotalDayOfWeekLaunches"];

  if (v50)
  {
    v51 = [v4 objectForKeyedSubscript:@"TotalDayOfWeekLaunches"];
    [v5 setTotalDayOfWeekLaunches:{objc_msgSend(v51, "intValue")}];
  }

  v52 = [v4 objectForKey:@"APRFeedbackSource"];

  if (v52)
  {
    v53 = [v4 objectForKeyedSubscript:@"APRFeedbackSource"];
    [v5 setAPRFeedbackSource:v53];
  }

  v54 = [v4 objectForKey:@"APREngagementType"];

  if (v54)
  {
    v55 = [v4 objectForKeyedSubscript:@"APREngagementType"];
    [v5 setAPREngagementType:v55];
  }

  v56 = [v4 objectForKey:@"APRSiriExperience"];

  if (v56)
  {
    v57 = [v4 objectForKeyedSubscript:@"APRSiriExperience"];
    [v5 setAPRSiriExperience:v57];
  }

  v58 = [v4 objectForKey:@"IntentType"];

  if (v58)
  {
    v59 = [v4 objectForKeyedSubscript:@"IntentType"];
    [v5 setIntentType:v59];
  }

  v60 = [v4 objectForKey:@"ConsumerType"];

  if (v60)
  {
    v61 = [v4 objectForKeyedSubscript:@"ConsumerType"];
    [v5 setConsumerType:v61];
  }

  v62 = [v4 objectForKey:@"ConsumerSubType"];

  if (v62)
  {
    v76 = 0;
    v63 = MEMORY[0x277CEBCF0];
    v64 = [v4 objectForKeyedSubscript:@"ConsumerSubType"];
    v65 = [v63 consumerSubtypeForString:v64 found:&v76];

    if (v76 == 1)
    {
      [v5 setConsumerSubType:{+[ATXAWDUtils awdConsumerSubTypeWithConsumerSubType:](ATXAWDUtils, "awdConsumerSubTypeWithConsumerSubType:", v65)}];
    }
  }

  v66 = [v4 objectForKey:@"CurrentLOIType"];

  if (v66)
  {
    v67 = [v4 objectForKeyedSubscript:@"CurrentLOIType"];
    [v5 setCurrentLOIType:{objc_msgSend(a1, "AWDLOITypeForString:", v67)}];
  }

  v68 = [v4 objectForKey:@"AppSequence"];

  if (v68)
  {
    v69 = [v4 objectForKeyedSubscript:@"AppSequence"];
    [v5 setAppSequences:v69];
  }

  v70 = [v4 objectForKey:@"Outcome"];

  if (v70)
  {
    v71 = [v4 objectForKeyedSubscript:@"Outcome"];
    [v5 setOutcome:{objc_msgSend(a1, "awdPredictionOutcomeWithATXPredictionOutcome:", objc_msgSend(v71, "intValue"))}];
  }

  v72 = [v4 objectForKey:@"ABGroup"];

  if (v72)
  {
    v73 = [v4 objectForKeyedSubscript:@"ABGroup"];
    [v5 setABGroup:v73];
  }

  v74 = v5;

  return v5;
}

+ (void)logAppPredictionDictionaryViaAWD:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"AppData"];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAD78]);
      v7 = [v6 UUIDString];

      v8 = [v4 objectForKeyedSubscript:@"AppData"];
      if ([v8 count])
      {
        v9 = 0;
        do
        {
          v10 = [ATXAWDUtils appDataAtIndex:v9 forSessionLogDict:v4];
          [v10 setSessionId:v7];
          AWDPostMetric();
          v11 = __atxlog_handle_feedback();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v10 bundleId];
            v13 = [v10 engagedApp];
            *buf = 138412546;
            v14 = @"NO";
            if (v13)
            {
              v14 = @"YES";
            }

            v24 = v12;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXAppPredictorSessionLog - logged AWDProactiveAppData with bundleId: %@ engagedApp: %@", buf, 0x16u);
          }

          ++v9;
        }

        while (v9 < [v8 count]);
      }

      v15 = [ATXAWDUtils populateAwdAppPredictionSessionForSessionLogDict:v4];
      [v15 setSessionId:v7];
      AWDPostMetric();
      v16 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v15 consumerSubType];
        if (v17 >= 0x28)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v17];
        }

        else
        {
          v18 = off_27859A970[v17];
        }

        v19 = v18;
        v20 = [v15 outcome];
        if (v20 >= 9)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v20];
        }

        else
        {
          v21 = off_27859AAB0[v20];
        }

        *buf = 138412546;
        v24 = v19;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXAppPredictorSessionLog - logged AWDProactiveAppPredictionSession with consumerSubType: %@ engagementType: %@", buf, 0x16u);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (int)awdPredictionOutcomeWithATXPredictionOutcome:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return 0;
  }

  else
  {
    return dword_2268723A4[a3 - 1];
  }
}

+ (int)AWDLOITypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Work"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Home"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Gym"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)awdScoreWithScore:(uint64_t)a1 type:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAWDUtils.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"score != _ATXScoreNotSet"}];
}

+ (void)awdScoreWithScore:type:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_19();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "int32_t overflow for score of %f for scoreType: %lu", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)awdScoreWithScore:type:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_19();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "int32_t underflow for score of %f for scoreType: %lu", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)awdActionTypeWithActionType:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 3;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "awdActionTypeWithActionType called with invalid ATXActionType value of %tu", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end