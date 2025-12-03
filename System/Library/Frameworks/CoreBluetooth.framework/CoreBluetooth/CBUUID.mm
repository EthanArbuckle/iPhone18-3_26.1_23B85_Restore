@interface CBUUID
+ (CBUUID)UUIDWithCFUUID:(CFUUIDRef)theUUID;
+ (CBUUID)UUIDWithData:(NSData *)theData;
+ (CBUUID)UUIDWithNSUUID:(NSUUID *)theUUID;
+ (CBUUID)UUIDWithString:(NSString *)theString;
- (BOOL)isEqual:(id)equal;
- (CBUUID)initWithCFUUID:(__CFUUID *)d;
- (CBUUID)initWithData:(id)data;
- (CBUUID)initWithNSUUID:(id)d;
- (CBUUID)initWithString:(id)string safe:(BOOL)safe;
- (NSData)data;
- (NSString)UUIDString;
- (id)description;
@end

@implementation CBUUID

- (NSData)data
{
  type = self->_type;
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self + qword_1C0B83818[type] length:qword_1C0B83830[type] freeWhenDone:{0, v2}];
  }

  return v5;
}

- (CBUUID)initWithString:(id)string safe:(BOOL)safe
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = CBUUID;
  v8 = [(CBUUID *)&v17 init];
  if (!v8)
  {
    goto LABEL_19;
  }

  if ([stringCopy compare:@"0x" options:1 range:{0, 2}])
  {
    v9 = stringCopy;
    v10 = [v9 length];
    if (v10 != 36)
    {
      goto LABEL_4;
    }

LABEL_9:
    v8->_type = 2;
    uTF8String = [v9 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = [stringCopy substringFromIndex:2];
  v10 = [v9 length];
  if (v10 == 36)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v10 == 8)
  {
    v13 = [@"00000000-0000-1000-8000-00805F9B34FB" stringByReplacingCharactersInRange:0 withString:{8, v9}];

    v8->_type = 1;
    v9 = v13;
    uTF8String = [v13 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }
  }

  else if (v10 == 4)
  {
    v11 = [@"00000000-0000-1000-8000-00805F9B34FB" stringByReplacingCharactersInRange:4 withString:{4, v9}];

    v8->_type = 0;
    v9 = v11;
    uTF8String = [v11 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v9 = 0;
    uTF8String = [0 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (!uuid_parse(uTF8String, v8->_bytes))
  {
LABEL_18:

LABEL_19:
    v14 = v8;
    goto LABEL_20;
  }

LABEL_15:
  if (!safe)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v8 file:@"CBUUID.m" lineNumber:370 description:{@"String %@ does not represent a valid UUID", stringCopy}];

    goto LABEL_18;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (CBUUID)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = CBUUID;
  v6 = [(CBUUID *)&v10 init];
  if (v6)
  {
    v7 = [dataCopy length];
    switch(v7)
    {
      case 16:
        [dataCopy getBytes:v6 + 8 length:16];
        v6[24] = 2;
        break;
      case 4:
        *(v6 + 8) = CBBluetoothBaseUUIDData;
        [dataCopy getBytes:v6 + 8 length:4];
        v6[24] = 1;
        break;
      case 2:
        *(v6 + 8) = CBBluetoothBaseUUIDData;
        [dataCopy getBytes:v6 + 10 length:2];
        v6[24] = 0;
        break;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"CBUUID.m" lineNumber:397 description:{@"Data %@ does not represent a valid UUID", dataCopy}];

        break;
    }
  }

  return v6;
}

- (CBUUID)initWithCFUUID:(__CFUUID *)d
{
  v7.receiver = self;
  v7.super_class = CBUUID;
  result = [(CBUUID *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = CFUUIDGetUUIDBytes(d);
    result = v5;
    *v5->_bytes = v6;
    v5->_type = 2;
  }

  return result;
}

- (CBUUID)initWithNSUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = CBUUID;
  v5 = [(CBUUID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [dCopy getUUIDBytes:v5->_bytes];
    v6->_type = 2;
  }

  return v6;
}

+ (CBUUID)UUIDWithString:(NSString *)theString
{
  v3 = theString;
  v4 = [[CBUUID alloc] initWithString:v3];

  return v4;
}

+ (CBUUID)UUIDWithData:(NSData *)theData
{
  v3 = theData;
  v4 = [[CBUUID alloc] initWithData:v3];

  return v4;
}

+ (CBUUID)UUIDWithCFUUID:(CFUUIDRef)theUUID
{
  v3 = [[CBUUID alloc] initWithCFUUID:theUUID];

  return v3;
}

+ (CBUUID)UUIDWithNSUUID:(NSUUID *)theUUID
{
  v3 = theUUID;
  v4 = [[CBUUID alloc] initWithNSUUID:v3];

  return v4;
}

- (NSString)UUIDString
{
  v9 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type == 2)
  {
    memset(out, 0, 37);
    uuid_unparse_upper(self->_bytes, out);
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  }

  else
  {
    if (type == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X%02X%02X", self->_bytes[0], self->_bytes[1], self->_bytes[2], self->_bytes[3]];
      goto LABEL_6;
    }

    if (!self->_type)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", self->_bytes[2], self->_bytes[3], v6, v7];
      v3 = LABEL_6:;
      goto LABEL_9;
    }

    v3 = 0;
  }

LABEL_9:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *self->_bytes == equalCopy[1] && *&self->_bytes[8] == equalCopy[2];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (id)description
{
  if (qword_1ED7C1FC0 != -1)
  {
    selfCopy = self;
    [CBUUID description];
    self = selfCopy;
  }

  uUIDString = [(CBUUID *)self UUIDString];
  v3 = [_MergedGlobals_1 objectForKeyedSubscript:uUIDString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = uUIDString;
  }

  v6 = v5;

  return v5;
}

void __21__CBUUID_description__block_invoke()
{
  v4[194] = *MEMORY[0x1E69E9840];
  v3[0] = @"1800";
  v3[1] = @"1801";
  v4[0] = @"Generic Access Profile";
  v4[1] = @"Generic Attribute Profile";
  v3[2] = @"2900";
  v3[3] = @"2901";
  v4[2] = @"Characteristic Extended Properties";
  v4[3] = @"Characteristic User Description";
  v3[4] = @"2902";
  v3[5] = @"2903";
  v4[4] = @"Client Characteristic Configuration";
  v4[5] = @"Server Characteristic Configuration";
  v3[6] = @"2904";
  v3[7] = @"2905";
  v4[6] = @"Characteristic Format";
  v4[7] = @"Characteristic Aggregate Format";
  v3[8] = @"2A00";
  v3[9] = @"2A01";
  v4[8] = @"Device Name";
  v4[9] = @"Appearence";
  v3[10] = @"2A02";
  v3[11] = @"2A03";
  v4[10] = @"Peripheral Privacy Flag";
  v4[11] = @"Reconnection Address";
  v3[12] = @"2A04";
  v3[13] = @"2A05";
  v4[12] = @"Peripheral Preferred Connection Parameters";
  v4[13] = @"Service Changed";
  v3[14] = @"1805";
  v3[15] = @"2A2B";
  v4[14] = @"Current Time";
  v4[15] = @"Current Time";
  v3[16] = @"2A0F";
  v3[17] = @"180A";
  v4[16] = @"Local Time Information";
  v4[17] = @"Device Information";
  v3[18] = @"2A29";
  v3[19] = @"2A24";
  v4[18] = @"Manufacturer Name String";
  v4[19] = @"Model Number String";
  v3[20] = @"2A25";
  v3[21] = @"2A27";
  v4[20] = @"Serial Number String";
  v4[21] = @"Hardware Revision String";
  v3[22] = @"2A26";
  v3[23] = @"2A28";
  v4[22] = @"Firmware Revision String";
  v4[23] = @"Software Revision String";
  v3[24] = @"2A23";
  v3[25] = @"2A2A";
  v4[24] = @"System ID";
  v4[25] = @"IEEE Regulatory Certification";
  v3[26] = @"2A50";
  v3[27] = @"2BFF";
  v4[26] = @"PnP ID";
  v4[27] = @"UDI For Medical Device";
  v3[28] = @"180F";
  v3[29] = @"2A19";
  v4[28] = @"Battery";
  v4[29] = @"Battery Level";
  v3[30] = @"2BED";
  v3[31] = @"2A1A";
  v4[30] = @"Battery Level Status";
  v4[31] = @"Battery Power State";
  v3[32] = @"0106";
  v3[33] = @"010D";
  v4[32] = @"Battery Level Main";
  v4[33] = @"Battery Level Left";
  v3[34] = @"010E";
  v3[35] = @"1812";
  v4[34] = @"Battery Level Right";
  v4[35] = @"Human Interface Device";
  v3[36] = @"2A4E";
  v3[37] = @"2A4D";
  v4[36] = @"Protocol Mode";
  v4[37] = @"Report";
  v3[38] = @"2A4B";
  v3[39] = @"2A22";
  v4[38] = @"Report Map";
  v4[39] = @"Boot Keyboard Input Report";
  v3[40] = @"2A32";
  v3[41] = @"2A33";
  v4[40] = @"Boot Keyboard Output Report";
  v4[41] = @"Boot Mouse Input Report";
  v3[42] = @"2A4A";
  v3[43] = @"2A4C";
  v4[42] = @"HID Information";
  v4[43] = @"HID Control Point";
  v3[44] = @"2908";
  v3[45] = @"7905F431-B5CE-4E99-A40F-4B1E122D00D0";
  v4[44] = @"Report Reference";
  v4[45] = @"Apple Notification Center";
  v3[46] = @"69D1D8F3-45E1-49A8-9821-9BBDFDAAD9D9";
  v3[47] = @"9FBF120D-6301-42D9-8C58-25E699A21DBD";
  v4[46] = @"ANCS Control Point";
  v4[47] = @"ANCS Notification Source";
  v3[48] = @"22EAC6E9-24D6-4BB5-BE44-B36ACE7C7BFB";
  v3[49] = @"89D3502B-0F36-433A-8EF4-C502AD55F8DC";
  v4[48] = @"ANCS Data Source";
  v4[49] = @"Apple Media";
  v3[50] = @"9B3C81D8-57B1-4A8A-B8DF-0E56F7CA51C2";
  v3[51] = @"2F7CABCE-808D-411F-9A0C-BB92BA96C102";
  v4[50] = @"AMS Remote Command";
  v4[51] = @"AMS Entity Update";
  v3[52] = @"C6B2F38C-23AB-46D8-A6AB-A3A870BBD5D7";
  v3[53] = @"4715650B-5E9D-4AC2-B898-A4FC0AA5DF78";
  v4[52] = @"AMS Entity Attribute";
  v4[53] = @"Unified Accessory Restore";
  v3[54] = @"94110001-6D9B-4225-A4F1-6A4A7F01B0DE";
  v3[55] = @"1810";
  v4[54] = @"UARP Data Control Point";
  v4[55] = @"Blood Pressure";
  v3[56] = @"1816";
  v3[57] = @"1814";
  v4[56] = @"Cycling Speed and Cadence";
  v4[57] = @"Running Speed and Cadence";
  v3[58] = @"1818";
  v3[59] = @"1808";
  v4[58] = @"Cycling Power";
  v4[59] = @"Glucose";
  v3[60] = @"1809";
  v3[61] = @"180D";
  v4[60] = @"Health Thermometer";
  v4[61] = @"Heart Rate";
  v3[62] = @"181B";
  v3[63] = @"181D";
  v4[62] = @"Body Composition";
  v4[63] = @"Weight Scale";
  v3[64] = @"181F";
  v4[64] = @"Continuous Glucose Monitoring";
  v3[65] = @"1822";
  v4[65] = @"Pulse Oximeter";
  v3[66] = @"183A";
  v4[66] = @"Insulin Delivery";
  v3[67] = @"183E";
  v4[67] = @"Physical Activity Monitor";
  v3[68] = @"1840";
  v4[68] = @"Generic Health Sensor";
  v3[69] = @"2BF3";
  v4[69] = @"Health Sensor Features";
  v3[70] = @"2B8B";
  v4[70] = @"Live Health Observations";
  v3[71] = @"2BDD";
  v4[71] = @"Stored Health Observations";
  v3[72] = @"2A52";
  v4[72] = @"RACP";
  v3[73] = @"2BF4";
  v4[73] = @"GHS Control Point";
  v3[74] = @"2BF1";
  v4[74] = @"Observation Schedule Changed";
  v3[75] = @"183F";
  v4[75] = @"Elapsed Time";
  v3[76] = @"2BF2";
  v4[76] = @"Current Elapsed Time";
  v3[77] = @"181C";
  v4[77] = @"User Data";
  v3[78] = @"2A99";
  v4[78] = @"Database Change Increment";
  v3[79] = @"2A9A";
  v4[79] = @"User Index";
  v3[80] = @"2A9F";
  v4[80] = @"User Control Point";
  v3[81] = @"2B37";
  v4[81] = @"Registered User";
  v3[82] = @"0x2A37";
  v4[82] = @"Heart Rate Measurement";
  v3[83] = @"0x2A38";
  v4[83] = @"Body Sensor Location";
  v3[84] = @"0x2A39";
  v4[84] = @"Heart Rate Control Point";
  v3[85] = @"181E";
  v4[85] = @"Bond Management";
  v3[86] = @"D0611E78-BBB4-4591-A5F8-487910AE4366";
  v4[86] = @"Continuity";
  v3[87] = @"8667556C-9A37-4C91-84ED-54EE27D90049";
  v4[87] = @"Continuity";
  v3[88] = @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
  v4[88] = @"BLE MIDI";
  v3[89] = @"F299FC19-5898-4F68-ACE6-E036ABE50781";
  v4[89] = @"BLE MFi";
  v3[90] = @"96E14983-7845-49FE-B8BF-E25F686943C6";
  v4[90] = @"MFi Team ID";
  v3[91] = @"BAA597B6-CFA9-405D-A489-158874B6F584";
  v4[91] = @"MFi Protocol String";
  v3[92] = @"24F3F235-12C9-477A-9F13-063C68504F97";
  v4[92] = @"MFi Command";
  v3[93] = @"8D79E060-DA4C-45A5-B668-B4B5352D41FF";
  v4[93] = @"MFi Accessory Type";
  v3[94] = @"EC7CC9FE-667F-41C6-8B79-663A1F08C39A";
  v4[94] = @"MFi Accessory Attributes";
  v3[95] = @"7401DD11-3558-4459-98EE-371BBFC84C45";
  v4[95] = @"MFi Auth PSM";
  v3[96] = @"9bd708d7-64c7-4e9f-9ded-f6b6c4551967";
  v4[96] = @"DoAP";
  v3[97] = @"f195b8fb-a9e2-4401-858b-2f87a06928a8";
  v4[97] = @"DoAP Supported Codec";
  v3[98] = @"e1f9b835-7e47-413d-af94-c68e574b8f7e";
  v4[98] = @"DoAP Select Codec";
  v3[99] = @"a08ce5ef-698a-42a2-b980-7f3ac00b3845";
  v4[99] = @"DoAP Start Streaming";
  v3[100] = @"6288ea2d-7b89-47ad-890b-9fa6bf3cfc58";
  v4[100] = @"DoAP Stop Streaming";
  v3[101] = @"3f1c161d-6473-4746-91f5-6d27610780c6";
  v4[101] = @"DoAP Send Data";
  v3[102] = @"c7c6947d-3165-4bcb-8eaf-b328896cb531";
  v4[102] = @"DoAP Event Indicator";
  v3[103] = @"7798082b-b7b7-45a6-9933-563492efe04e";
  v4[103] = @"Apple Headset Property";
  v3[104] = @"82f6bc0a-1bca-4873-afc9-ec5890e3469a";
  v4[104] = @"Dosimetry Sensitivity";
  v3[105] = @"d5f96afa-2f2c-41bb-a7e6-f54abe6235b4";
  v4[105] = @"Dosimetry Volume Curve";
  v3[106] = @"1b8d9548-c066-4fbf-bc7e-cf3e5a3fabbf";
  v4[106] = @"Secure Sensor";
  v3[107] = @"df970112-e36f-4b5e-a9af-02a16d9a1400";
  v4[107] = @"Secure Sensor Pairing";
  v3[108] = @"df970212-e36f-4b5e-a9af-02a16d9a1400";
  v4[108] = @"Secure Sensor Configuration";
  v3[109] = @"df970312-e36f-4b5e-a9af-02a16d9a1400";
  v4[109] = @"Secure Sensor Debug";
  v3[110] = @"df970412-e36f-4b5e-a9af-02a16d9a1400";
  v4[110] = @"Secure Sensor Audio";
  v3[111] = @"1855";
  v4[111] = @"Telephony and Media Audio Service";
  v3[112] = @"2B51";
  v4[112] = @"TMAP Role";
  v3[113] = @"1854";
  v4[113] = @"Hearing Access Service";
  v3[114] = @"2BDA";
  v4[114] = @"Hearing Aid Features";
  v3[115] = @"2BDB";
  v4[115] = @"Hearing Aid Preset Control Point";
  v3[116] = @"2BDC";
  v4[116] = @"Active Preset Index";
  v3[117] = @"1853";
  v4[117] = @"Common Audio Service";
  v3[118] = @"1850";
  v4[118] = @"Published Audio Capabilities Service";
  v3[119] = @"2BC9";
  v4[119] = @"Sink PAC";
  v3[120] = @"2BCB";
  v4[120] = @"Source PAC";
  v3[121] = @"2BCA";
  v4[121] = @"Sink Audio Locations";
  v3[122] = @"2BCC";
  v4[122] = @"Source Audio Locations";
  v3[123] = @"2BCD";
  v4[123] = @"Available Audio Contexts";
  v3[124] = @"2BCE";
  v4[124] = @"Supported Audio Contexts";
  v3[125] = @"184E";
  v4[125] = @"Audio Stream Control Service";
  v3[126] = @"2BC4";
  v4[126] = @"Sink ASE";
  v3[127] = @"2BC5";
  v4[127] = @"Source ASE";
  v3[128] = @"2BC6";
  v4[128] = @"ASE Control Point";
  v3[129] = @"184B";
  v4[129] = @"Telephone Bearer Service";
  v3[130] = @"184C";
  v4[130] = @"Generic Telephone Bearer Service";
  v3[131] = @"2BB3";
  v4[131] = @"Bearer Provider Name";
  v3[132] = @"2BB4";
  v4[132] = @"Bearer UCI";
  v3[133] = @"2BB5";
  v4[133] = @"Bearer Technology";
  v3[134] = @"2BB6";
  v4[134] = @"Bearer URI Schemes Supported List";
  v3[135] = @"2BB7";
  v4[135] = @"Bearer Signal Strength";
  v3[136] = @"2BB8";
  v4[136] = @"Bearer Signal Strength Reporting Interval";
  v3[137] = @"2BB9";
  v4[137] = @"Bearer List Current Calls";
  v3[138] = @"2BBB";
  v4[138] = @"Status Flags";
  v3[139] = @"2BBC";
  v4[139] = @"Incoming Call Target Bearer URI";
  v3[140] = @"2BBD";
  v4[140] = @"Call State";
  v3[141] = @"2BBE";
  v4[141] = @"Call Control Point";
  v3[142] = @"2BBF";
  v4[142] = @"Call Control Point Optional Opcodes";
  v3[143] = @"2BC0";
  v4[143] = @"Termination Reason";
  v3[144] = @"2BC1";
  v4[144] = @"Incoming Call";
  v3[145] = @"2BC2";
  v4[145] = @"Call Friendly Name";
  v3[146] = @"1848";
  v4[146] = @"Media Control Service";
  v3[147] = @"1849";
  v4[147] = @"Generic Media Control Service";
  v3[148] = @"2B93";
  v4[148] = @"Media Player Name";
  v3[149] = @"2B94";
  v4[149] = @"Media Player Icon Object ID";
  v3[150] = @"2B95";
  v4[150] = @"Media Player Icon URL";
  v3[151] = @"2B96";
  v4[151] = @"Track Changed";
  v3[152] = @"2B97";
  v4[152] = @"Track Title";
  v3[153] = @"2B98";
  v4[153] = @"Track Duration";
  v3[154] = @"2B99";
  v4[154] = @"Track Position";
  v3[155] = @"2B9A";
  v4[155] = @"Playback Speed";
  v3[156] = @"2B9B";
  v4[156] = @"Seeking Speed";
  v3[157] = @"2B9C";
  v4[157] = @"Current Track Segments Object ID";
  v3[158] = @"2B9D";
  v4[158] = @"Current Track Object ID";
  v3[159] = @"2B9E";
  v4[159] = @"Next Track Object ID";
  v3[160] = @"2B9F";
  v4[160] = @"Parent Group Object ID";
  v3[161] = @"2BA0";
  v4[161] = @"Current Group Object ID";
  v3[162] = @"2BA1";
  v4[162] = @"Playing Order";
  v3[163] = @"2BA2";
  v4[163] = @"Playing Orders Supported";
  v3[164] = @"2BA3";
  v4[164] = @"Media State";
  v3[165] = @"2BA4";
  v4[165] = @"Media Control Point";
  v3[166] = @"2BA5";
  v4[166] = @"Media Control Point Opcodes Supported";
  v3[167] = @"2BA7";
  v4[167] = @"Search Control Point";
  v3[168] = @"2BA6";
  v4[168] = @"Search Results Object ID";
  v3[169] = @"2BBA";
  v4[169] = @"Content Control Id";
  v3[170] = @"1846";
  v4[170] = @"Coordinated Set Identification Service";
  v3[171] = @"2B84";
  v4[171] = @"Set Identity Resolving Key";
  v3[172] = @"2B85";
  v4[172] = @"Coordinated Set Size";
  v3[173] = @"2B86";
  v4[173] = @"Set Member Lock";
  v3[174] = @"2B87";
  v4[174] = @"Set Member Rank";
  v3[175] = @"184D";
  v4[175] = @"Microphone Control Service";
  v3[176] = @"2BC3";
  v4[176] = @"Mute";
  v3[177] = @"1843";
  v4[177] = @"Audio Input Control Service";
  v3[178] = @"2B77";
  v4[178] = @"Audio Input State";
  v3[179] = @"2B78";
  v4[179] = @"Gain Setting Properties";
  v3[180] = @"2B79";
  v4[180] = @"Audio Input Type";
  v3[181] = @"2B7A";
  v4[181] = @"Audio Input Status";
  v3[182] = @"2B7B";
  v4[182] = @"Audio Input Control Point";
  v3[183] = @"2B7C";
  v4[183] = @"Audio Input Description";
  v3[184] = @"1844";
  v4[184] = @"Volume Control Service";
  v3[185] = @"2B7D";
  v4[185] = @"Volume State";
  v3[186] = @"2B7E";
  v4[186] = @"Volume Control Point";
  v3[187] = @"2B7F";
  v4[187] = @"Volume Flags";
  v3[188] = @"1845";
  v4[188] = @"Volume Offset Control Service";
  v3[189] = @"2B80";
  v4[189] = @"Volume Offset State";
  v3[190] = @"2B81";
  v4[190] = @"Audio Location";
  v3[191] = @"2B82";
  v4[191] = @"Volume Offset Control Point";
  v3[192] = @"2B83";
  v4[192] = @"Audio Output Description";
  v3[193] = @"E277E685-64CB-4A32-BF65-8766E708A037";
  v4[193] = @"Spatial HID Service";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:194];
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end