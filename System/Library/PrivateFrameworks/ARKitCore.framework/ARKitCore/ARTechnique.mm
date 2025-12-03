@interface ARTechnique
+ (id)colorForTechnique:(id)technique;
+ (id)techniqueConformsToProtocol:(id)protocol inArray:(id)array;
+ (id)techniqueMatchingPredicate:(id)predicate inArray:(id)array;
+ (id)techniqueOfClass:(Class)class inArray:(id)array;
- (ARTechnique)init;
- (ARTechnique)initWithParallelTechniques:(id)techniques;
- (ARTechnique)initWithTechniques:(id)techniques;
- (ARTechniqueDelegate)delegate;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_fullDescription;
- (id)processData:(id)data;
- (id)techniqueConformsToProtocol:(id)protocol;
- (id)techniqueMatchingPredicate:(id)predicate;
- (id)techniqueOfClass:(Class)class;
- (id)toJSONWithRootName:(id)name;
- (unint64_t)hash;
- (unint64_t)techniqueLevel;
- (void)dotGraphWithLines:(id)lines rootName:(id)name;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARTechnique

void __ARTechnique_Image_to_Result_Timestamp_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4255C68;
  v2[1] = &unk_1F4255C98;
  v3[0] = &unk_1F4255C80;
  v3[1] = &unk_1F4255CB0;
  v2[2] = &unk_1F4255CC8;
  v2[3] = &unk_1F4255CF8;
  v3[2] = &unk_1F4255CE0;
  v3[3] = &unk_1F4255D10;
  v2[4] = &unk_1F4255D28;
  v2[5] = &unk_1F4255D58;
  v3[4] = &unk_1F4255D40;
  v3[5] = &unk_1F4255D70;
  v2[6] = &unk_1F4255D88;
  v2[7] = &unk_1F4255DB8;
  v3[6] = &unk_1F4255DA0;
  v3[7] = &unk_1F4255DD0;
  v2[8] = &unk_1F4255DE8;
  v2[9] = &unk_1F4255E18;
  v3[8] = &unk_1F4255E00;
  v3[9] = &unk_1F4255E30;
  v2[10] = &unk_1F4255E48;
  v2[11] = &unk_1F4255E78;
  v3[10] = &unk_1F4255E60;
  v3[11] = &unk_1F4255E90;
  v2[12] = &unk_1F4255EA8;
  v2[13] = &unk_1F4255ED8;
  v3[12] = &unk_1F4255EC0;
  v3[13] = &unk_1F4255EF0;
  v2[14] = &unk_1F4255F08;
  v2[15] = &unk_1F4255F38;
  v3[14] = &unk_1F4255F20;
  v3[15] = &unk_1F4255F50;
  v2[16] = &unk_1F4255F68;
  v2[17] = &unk_1F4255F98;
  v3[16] = &unk_1F4255F80;
  v3[17] = &unk_1F4255FB0;
  v2[18] = &unk_1F4255FC8;
  v2[19] = &unk_1F4255FF8;
  v3[18] = &unk_1F4255FE0;
  v3[19] = &unk_1F4256010;
  v2[20] = &unk_1F4256028;
  v2[21] = &unk_1F4256058;
  v3[20] = &unk_1F4256040;
  v3[21] = &unk_1F4256070;
  v2[22] = &unk_1F4256088;
  v2[23] = &unk_1F42560B8;
  v3[22] = &unk_1F42560A0;
  v3[23] = &unk_1F42560D0;
  v2[24] = &unk_1F42560E8;
  v2[25] = &unk_1F4256118;
  v3[24] = &unk_1F4256100;
  v3[25] = &unk_1F4256130;
  v2[26] = &unk_1F4256148;
  v2[27] = &unk_1F4256178;
  v3[26] = &unk_1F4256160;
  v3[27] = &unk_1F4256190;
  v2[28] = &unk_1F42561A8;
  v2[29] = &unk_1F42561D8;
  v3[28] = &unk_1F42561C0;
  v3[29] = &unk_1F42561F0;
  v2[30] = &unk_1F4256208;
  v2[31] = &unk_1F4256238;
  v3[30] = &unk_1F4256220;
  v3[31] = &unk_1F4256250;
  v2[32] = &unk_1F4256268;
  v2[33] = &unk_1F4256298;
  v3[32] = &unk_1F4256280;
  v3[33] = &unk_1F42562B0;
  v2[34] = &unk_1F42562C8;
  v2[35] = &unk_1F42562F8;
  v3[34] = &unk_1F42562E0;
  v3[35] = &unk_1F4256310;
  v2[36] = &unk_1F4256328;
  v2[37] = &unk_1F4256358;
  v3[36] = &unk_1F4256340;
  v3[37] = &unk_1F4256370;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Image_to_Result_Timestamp_keyToCode;
  ARTechnique_Image_to_Result_Timestamp_keyToCode = v0;
}

void __ARTechnique_Image_to_Result_Frame_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4255C68;
  v2[1] = &unk_1F4255C98;
  v3[0] = &unk_1F4256388;
  v3[1] = &unk_1F42563A0;
  v2[2] = &unk_1F4255CC8;
  v2[3] = &unk_1F4255CF8;
  v3[2] = &unk_1F42563B8;
  v3[3] = &unk_1F42563D0;
  v2[4] = &unk_1F4255D28;
  v2[5] = &unk_1F4255D58;
  v3[4] = &unk_1F42563E8;
  v3[5] = &unk_1F4256400;
  v2[6] = &unk_1F4255D88;
  v2[7] = &unk_1F4255DB8;
  v3[6] = &unk_1F4256418;
  v3[7] = &unk_1F4256430;
  v2[8] = &unk_1F4255DE8;
  v2[9] = &unk_1F4255E18;
  v3[8] = &unk_1F4256448;
  v3[9] = &unk_1F4256460;
  v2[10] = &unk_1F4255E48;
  v2[11] = &unk_1F4255E78;
  v3[10] = &unk_1F4256478;
  v3[11] = &unk_1F4256490;
  v2[12] = &unk_1F4255EA8;
  v2[13] = &unk_1F4255ED8;
  v3[12] = &unk_1F42564A8;
  v3[13] = &unk_1F42564C0;
  v2[14] = &unk_1F4255F08;
  v2[15] = &unk_1F4255F38;
  v3[14] = &unk_1F42564D8;
  v3[15] = &unk_1F42564F0;
  v2[16] = &unk_1F4255F68;
  v2[17] = &unk_1F4255F98;
  v3[16] = &unk_1F4256508;
  v3[17] = &unk_1F4256520;
  v2[18] = &unk_1F4255FC8;
  v2[19] = &unk_1F4255FF8;
  v3[18] = &unk_1F4256538;
  v3[19] = &unk_1F4256550;
  v2[20] = &unk_1F4256028;
  v2[21] = &unk_1F4256058;
  v3[20] = &unk_1F4256568;
  v3[21] = &unk_1F4256580;
  v2[22] = &unk_1F4256088;
  v2[23] = &unk_1F42560B8;
  v3[22] = &unk_1F4256598;
  v3[23] = &unk_1F42565B0;
  v2[24] = &unk_1F42560E8;
  v2[25] = &unk_1F4256118;
  v3[24] = &unk_1F42565C8;
  v3[25] = &unk_1F42565E0;
  v2[26] = &unk_1F4256148;
  v2[27] = &unk_1F4256178;
  v3[26] = &unk_1F42565F8;
  v3[27] = &unk_1F4256610;
  v2[28] = &unk_1F42561A8;
  v2[29] = &unk_1F42561D8;
  v3[28] = &unk_1F4256628;
  v3[29] = &unk_1F4256640;
  v2[30] = &unk_1F4256208;
  v2[31] = &unk_1F4256238;
  v3[30] = &unk_1F4256658;
  v3[31] = &unk_1F4256670;
  v2[32] = &unk_1F4256268;
  v2[33] = &unk_1F4256298;
  v3[32] = &unk_1F4256688;
  v3[33] = &unk_1F42566A0;
  v2[34] = &unk_1F42562C8;
  v2[35] = &unk_1F42562F8;
  v3[34] = &unk_1F42566B8;
  v3[35] = &unk_1F42566D0;
  v2[36] = &unk_1F4256328;
  v2[37] = &unk_1F4256358;
  v3[36] = &unk_1F42566E8;
  v3[37] = &unk_1F4256700;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Image_to_Result_Frame_keyToCode;
  ARTechnique_Image_to_Result_Frame_keyToCode = v0;
}

void __ARTechnique_Image_to_Result_FrameEnd_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4255C68;
  v2[1] = &unk_1F4255C98;
  v3[0] = &unk_1F4256718;
  v3[1] = &unk_1F4256730;
  v2[2] = &unk_1F4255CC8;
  v2[3] = &unk_1F4255CF8;
  v3[2] = &unk_1F4256748;
  v3[3] = &unk_1F4256760;
  v2[4] = &unk_1F4255D28;
  v2[5] = &unk_1F4255D58;
  v3[4] = &unk_1F4256778;
  v3[5] = &unk_1F4256790;
  v2[6] = &unk_1F4255D88;
  v2[7] = &unk_1F4255DB8;
  v3[6] = &unk_1F42567A8;
  v3[7] = &unk_1F42567C0;
  v2[8] = &unk_1F4255DE8;
  v2[9] = &unk_1F4255E18;
  v3[8] = &unk_1F42567D8;
  v3[9] = &unk_1F42567F0;
  v2[10] = &unk_1F4255E48;
  v2[11] = &unk_1F4255E78;
  v3[10] = &unk_1F4256808;
  v3[11] = &unk_1F4256820;
  v2[12] = &unk_1F4255EA8;
  v2[13] = &unk_1F4255ED8;
  v3[12] = &unk_1F4256838;
  v3[13] = &unk_1F4256850;
  v2[14] = &unk_1F4255F08;
  v2[15] = &unk_1F4255F38;
  v3[14] = &unk_1F4256868;
  v3[15] = &unk_1F4256880;
  v2[16] = &unk_1F4255F68;
  v2[17] = &unk_1F4255F98;
  v3[16] = &unk_1F4256898;
  v3[17] = &unk_1F42568B0;
  v2[18] = &unk_1F4255FC8;
  v2[19] = &unk_1F4255FF8;
  v3[18] = &unk_1F42568C8;
  v3[19] = &unk_1F42568E0;
  v2[20] = &unk_1F4256028;
  v2[21] = &unk_1F4256058;
  v3[20] = &unk_1F42568F8;
  v3[21] = &unk_1F4256910;
  v2[22] = &unk_1F4256088;
  v2[23] = &unk_1F42560B8;
  v3[22] = &unk_1F4256928;
  v3[23] = &unk_1F4256940;
  v2[24] = &unk_1F42560E8;
  v2[25] = &unk_1F4256118;
  v3[24] = &unk_1F4256958;
  v3[25] = &unk_1F4256970;
  v2[26] = &unk_1F4256148;
  v2[27] = &unk_1F4256178;
  v3[26] = &unk_1F4256988;
  v3[27] = &unk_1F42569A0;
  v2[28] = &unk_1F42561A8;
  v2[29] = &unk_1F42561D8;
  v3[28] = &unk_1F42569B8;
  v3[29] = &unk_1F42569D0;
  v2[30] = &unk_1F4256208;
  v2[31] = &unk_1F4256238;
  v3[30] = &unk_1F42569E8;
  v3[31] = &unk_1F4256A00;
  v2[32] = &unk_1F4256268;
  v2[33] = &unk_1F4256298;
  v3[32] = &unk_1F4256A18;
  v3[33] = &unk_1F4256A30;
  v2[34] = &unk_1F42562C8;
  v2[35] = &unk_1F42562F8;
  v3[34] = &unk_1F4256A48;
  v3[35] = &unk_1F4256A60;
  v2[36] = &unk_1F4256328;
  v2[37] = &unk_1F4256358;
  v3[36] = &unk_1F4256A78;
  v3[37] = &unk_1F4256A90;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Image_to_Result_FrameEnd_keyToCode;
  ARTechnique_Image_to_Result_FrameEnd_keyToCode = v0;
}

void __ARTechnique_Image_to_Result_TimestampEnd_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4255C68;
  v2[1] = &unk_1F4255C98;
  v3[0] = &unk_1F4256AA8;
  v3[1] = &unk_1F4256AC0;
  v2[2] = &unk_1F4255CC8;
  v2[3] = &unk_1F4255CF8;
  v3[2] = &unk_1F4256AD8;
  v3[3] = &unk_1F4256AF0;
  v2[4] = &unk_1F4255D28;
  v2[5] = &unk_1F4255D58;
  v3[4] = &unk_1F4256B08;
  v3[5] = &unk_1F4256B20;
  v2[6] = &unk_1F4255D88;
  v2[7] = &unk_1F4255DB8;
  v3[6] = &unk_1F4256B38;
  v3[7] = &unk_1F4256B50;
  v2[8] = &unk_1F4255DE8;
  v2[9] = &unk_1F4255E18;
  v3[8] = &unk_1F4256B68;
  v3[9] = &unk_1F4256B80;
  v2[10] = &unk_1F4255E48;
  v2[11] = &unk_1F4255E78;
  v3[10] = &unk_1F4256B98;
  v3[11] = &unk_1F4256BB0;
  v2[12] = &unk_1F4255EA8;
  v2[13] = &unk_1F4255ED8;
  v3[12] = &unk_1F4256BC8;
  v3[13] = &unk_1F4256BE0;
  v2[14] = &unk_1F4255F08;
  v2[15] = &unk_1F4255F38;
  v3[14] = &unk_1F4256BF8;
  v3[15] = &unk_1F4256C10;
  v2[16] = &unk_1F4255F68;
  v2[17] = &unk_1F4255F98;
  v3[16] = &unk_1F4256C28;
  v3[17] = &unk_1F4256C40;
  v2[18] = &unk_1F4255FC8;
  v2[19] = &unk_1F4255FF8;
  v3[18] = &unk_1F4256C58;
  v3[19] = &unk_1F4256C70;
  v2[20] = &unk_1F4256028;
  v2[21] = &unk_1F4256058;
  v3[20] = &unk_1F4256C88;
  v3[21] = &unk_1F4256CA0;
  v2[22] = &unk_1F4256088;
  v2[23] = &unk_1F42560B8;
  v3[22] = &unk_1F4256CB8;
  v3[23] = &unk_1F4256CD0;
  v2[24] = &unk_1F42560E8;
  v2[25] = &unk_1F4256118;
  v3[24] = &unk_1F4256CE8;
  v3[25] = &unk_1F4256D00;
  v2[26] = &unk_1F4256148;
  v2[27] = &unk_1F4256178;
  v3[26] = &unk_1F4256D18;
  v3[27] = &unk_1F4256D30;
  v2[28] = &unk_1F42561A8;
  v2[29] = &unk_1F42561D8;
  v3[28] = &unk_1F4256D48;
  v3[29] = &unk_1F4256D60;
  v2[30] = &unk_1F4256208;
  v2[31] = &unk_1F4256238;
  v3[30] = &unk_1F4256D78;
  v3[31] = &unk_1F4256D90;
  v2[32] = &unk_1F4256268;
  v2[33] = &unk_1F4256298;
  v3[32] = &unk_1F4256DA8;
  v3[33] = &unk_1F4256DC0;
  v2[34] = &unk_1F42562C8;
  v2[35] = &unk_1F42562F8;
  v3[34] = &unk_1F4256DD8;
  v3[35] = &unk_1F4256DF0;
  v2[36] = &unk_1F4256328;
  v2[37] = &unk_1F4256358;
  v3[36] = &unk_1F4256E08;
  v3[37] = &unk_1F4256E20;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Image_to_Result_TimestampEnd_keyToCode;
  ARTechnique_Image_to_Result_TimestampEnd_keyToCode = v0;
}

void __ARTechnique_Request_to_Result_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4256E98;
  v2[1] = &unk_1F4256EC8;
  v3[0] = &unk_1F4256EB0;
  v3[1] = &unk_1F4256EE0;
  v2[2] = &unk_1F4256EF8;
  v2[3] = &unk_1F4256F28;
  v3[2] = &unk_1F4256F10;
  v3[3] = &unk_1F4256F40;
  v2[4] = &unk_1F4256F58;
  v2[5] = &unk_1F4256F88;
  v3[4] = &unk_1F4256F70;
  v3[5] = &unk_1F4256FA0;
  v2[6] = &unk_1F4256FB8;
  v2[7] = &unk_1F4256FE8;
  v3[6] = &unk_1F4256FD0;
  v3[7] = &unk_1F4257000;
  v2[8] = &unk_1F4257018;
  v2[9] = &unk_1F4257048;
  v3[8] = &unk_1F4257030;
  v3[9] = &unk_1F4257060;
  v2[10] = &unk_1F4257078;
  v2[11] = &unk_1F42570A8;
  v3[10] = &unk_1F4257090;
  v3[11] = &unk_1F42570C0;
  v2[12] = &unk_1F42570D8;
  v2[13] = &unk_1F4257108;
  v3[12] = &unk_1F42570F0;
  v3[13] = &unk_1F4257120;
  v2[14] = &unk_1F4257138;
  v2[15] = &unk_1F4257168;
  v3[14] = &unk_1F4257150;
  v3[15] = &unk_1F4257180;
  v2[16] = &unk_1F4257198;
  v2[17] = &unk_1F42571C8;
  v3[16] = &unk_1F42571B0;
  v3[17] = &unk_1F42571E0;
  v2[18] = &unk_1F42571F8;
  v2[19] = &unk_1F4257228;
  v3[18] = &unk_1F4257210;
  v3[19] = &unk_1F4257240;
  v2[20] = &unk_1F4257258;
  v2[21] = &unk_1F4257288;
  v3[20] = &unk_1F4257270;
  v3[21] = &unk_1F42572A0;
  v2[22] = &unk_1F42572B8;
  v2[23] = &unk_1F42572E8;
  v3[22] = &unk_1F42572D0;
  v3[23] = &unk_1F4257300;
  v2[24] = &unk_1F4257318;
  v2[25] = &unk_1F4257348;
  v3[24] = &unk_1F4257330;
  v3[25] = &unk_1F4257360;
  v2[26] = &unk_1F4257378;
  v2[27] = &unk_1F42573A8;
  v3[26] = &unk_1F4257390;
  v3[27] = &unk_1F42573C0;
  v2[28] = &unk_1F42573D8;
  v2[29] = &unk_1F4257408;
  v3[28] = &unk_1F42573F0;
  v3[29] = &unk_1F4257420;
  v2[30] = &unk_1F4257438;
  v2[31] = &unk_1F4257468;
  v3[30] = &unk_1F4257450;
  v3[31] = &unk_1F4257480;
  v2[32] = &unk_1F4257498;
  v2[33] = &unk_1F42574C8;
  v3[32] = &unk_1F42574B0;
  v3[33] = &unk_1F42574E0;
  v2[34] = &unk_1F42574F8;
  v2[35] = &unk_1F4257528;
  v3[34] = &unk_1F4257510;
  v3[35] = &unk_1F4257540;
  v2[36] = &unk_1F4257558;
  v2[37] = &unk_1F4257588;
  v3[36] = &unk_1F4257570;
  v3[37] = &unk_1F42575A0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Request_to_Result_keyToCode;
  ARTechnique_Request_to_Result_keyToCode = v0;
}

void __ARTechnique_Request_begin_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4256E98;
  v2[1] = &unk_1F4256EC8;
  v3[0] = &unk_1F42575B8;
  v3[1] = &unk_1F42575D0;
  v2[2] = &unk_1F4256EF8;
  v2[3] = &unk_1F4256F28;
  v3[2] = &unk_1F42575E8;
  v3[3] = &unk_1F4257600;
  v2[4] = &unk_1F4256F58;
  v2[5] = &unk_1F4256F88;
  v3[4] = &unk_1F4257618;
  v3[5] = &unk_1F4257630;
  v2[6] = &unk_1F4256FB8;
  v2[7] = &unk_1F4256FE8;
  v3[6] = &unk_1F4257648;
  v3[7] = &unk_1F4257660;
  v2[8] = &unk_1F4257018;
  v2[9] = &unk_1F4257048;
  v3[8] = &unk_1F4257678;
  v3[9] = &unk_1F4257690;
  v2[10] = &unk_1F4257078;
  v2[11] = &unk_1F42570A8;
  v3[10] = &unk_1F42576A8;
  v3[11] = &unk_1F42576C0;
  v2[12] = &unk_1F42570D8;
  v2[13] = &unk_1F4257108;
  v3[12] = &unk_1F42576D8;
  v3[13] = &unk_1F42576F0;
  v2[14] = &unk_1F4257138;
  v2[15] = &unk_1F4257168;
  v3[14] = &unk_1F4257708;
  v3[15] = &unk_1F4257720;
  v2[16] = &unk_1F4257198;
  v2[17] = &unk_1F42571C8;
  v3[16] = &unk_1F4257738;
  v3[17] = &unk_1F4257750;
  v2[18] = &unk_1F42571F8;
  v2[19] = &unk_1F4257228;
  v3[18] = &unk_1F4257768;
  v3[19] = &unk_1F4257780;
  v2[20] = &unk_1F4257258;
  v2[21] = &unk_1F4257288;
  v3[20] = &unk_1F4257798;
  v3[21] = &unk_1F42577B0;
  v2[22] = &unk_1F42572B8;
  v2[23] = &unk_1F42572E8;
  v3[22] = &unk_1F42577C8;
  v3[23] = &unk_1F42577E0;
  v2[24] = &unk_1F4257318;
  v2[25] = &unk_1F4257348;
  v3[24] = &unk_1F42577F8;
  v3[25] = &unk_1F4257810;
  v2[26] = &unk_1F4257378;
  v2[27] = &unk_1F42573A8;
  v3[26] = &unk_1F4257828;
  v3[27] = &unk_1F4257840;
  v2[28] = &unk_1F42573D8;
  v2[29] = &unk_1F4257408;
  v3[28] = &unk_1F4257858;
  v3[29] = &unk_1F4257870;
  v2[30] = &unk_1F4257438;
  v2[31] = &unk_1F4257468;
  v3[30] = &unk_1F4257888;
  v3[31] = &unk_1F42578A0;
  v2[32] = &unk_1F4257498;
  v2[33] = &unk_1F42574C8;
  v3[32] = &unk_1F42578B8;
  v3[33] = &unk_1F42578D0;
  v2[34] = &unk_1F42574F8;
  v2[35] = &unk_1F4257528;
  v3[34] = &unk_1F42578E8;
  v3[35] = &unk_1F4257900;
  v2[36] = &unk_1F4257558;
  v2[37] = &unk_1F4257588;
  v3[36] = &unk_1F4257918;
  v3[37] = &unk_1F4257930;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Request_begin_keyToCode;
  ARTechnique_Request_begin_keyToCode = v0;
}

void __ARTechnique_Request_to_ResultEnd_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4256E98;
  v2[1] = &unk_1F4256EC8;
  v3[0] = &unk_1F4257948;
  v3[1] = &unk_1F4257960;
  v2[2] = &unk_1F4256EF8;
  v2[3] = &unk_1F4256F28;
  v3[2] = &unk_1F4257978;
  v3[3] = &unk_1F4257990;
  v2[4] = &unk_1F4256F58;
  v2[5] = &unk_1F4256F88;
  v3[4] = &unk_1F42579A8;
  v3[5] = &unk_1F42579C0;
  v2[6] = &unk_1F4256FB8;
  v2[7] = &unk_1F4256FE8;
  v3[6] = &unk_1F42579D8;
  v3[7] = &unk_1F42579F0;
  v2[8] = &unk_1F4257018;
  v2[9] = &unk_1F4257048;
  v3[8] = &unk_1F4257A08;
  v3[9] = &unk_1F4257A20;
  v2[10] = &unk_1F4257078;
  v2[11] = &unk_1F42570A8;
  v3[10] = &unk_1F4257A38;
  v3[11] = &unk_1F4257A50;
  v2[12] = &unk_1F42570D8;
  v2[13] = &unk_1F4257108;
  v3[12] = &unk_1F4257A68;
  v3[13] = &unk_1F4257A80;
  v2[14] = &unk_1F4257138;
  v2[15] = &unk_1F4257168;
  v3[14] = &unk_1F4257A98;
  v3[15] = &unk_1F4257AB0;
  v2[16] = &unk_1F4257198;
  v2[17] = &unk_1F42571C8;
  v3[16] = &unk_1F4257AC8;
  v3[17] = &unk_1F4257AE0;
  v2[18] = &unk_1F42571F8;
  v2[19] = &unk_1F4257228;
  v3[18] = &unk_1F4257AF8;
  v3[19] = &unk_1F4257B10;
  v2[20] = &unk_1F4257258;
  v2[21] = &unk_1F4257288;
  v3[20] = &unk_1F4257B28;
  v3[21] = &unk_1F4257B40;
  v2[22] = &unk_1F42572B8;
  v2[23] = &unk_1F42572E8;
  v3[22] = &unk_1F4257B58;
  v3[23] = &unk_1F4257B70;
  v2[24] = &unk_1F4257318;
  v2[25] = &unk_1F4257348;
  v3[24] = &unk_1F4257B88;
  v3[25] = &unk_1F4257BA0;
  v2[26] = &unk_1F4257378;
  v2[27] = &unk_1F42573A8;
  v3[26] = &unk_1F4257BB8;
  v3[27] = &unk_1F4257BD0;
  v2[28] = &unk_1F42573D8;
  v2[29] = &unk_1F4257408;
  v3[28] = &unk_1F4257BE8;
  v3[29] = &unk_1F4257C00;
  v2[30] = &unk_1F4257438;
  v2[31] = &unk_1F4257468;
  v3[30] = &unk_1F4257C18;
  v3[31] = &unk_1F4257C30;
  v2[32] = &unk_1F4257498;
  v2[33] = &unk_1F42574C8;
  v3[32] = &unk_1F4257C48;
  v3[33] = &unk_1F4257C60;
  v2[34] = &unk_1F42574F8;
  v2[35] = &unk_1F4257528;
  v3[34] = &unk_1F4257C78;
  v3[35] = &unk_1F4257C90;
  v2[36] = &unk_1F4257558;
  v2[37] = &unk_1F4257588;
  v3[36] = &unk_1F4257CA8;
  v3[37] = &unk_1F4257CC0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Request_to_ResultEnd_keyToCode;
  ARTechnique_Request_to_ResultEnd_keyToCode = v0;
}

void __ARTechnique_Request_fulfilled_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4256E98;
  v2[1] = &unk_1F4256EC8;
  v3[0] = &unk_1F4257CD8;
  v3[1] = &unk_1F4257CF0;
  v2[2] = &unk_1F4256EF8;
  v2[3] = &unk_1F4256F28;
  v3[2] = &unk_1F4257D08;
  v3[3] = &unk_1F4257D20;
  v2[4] = &unk_1F4256F58;
  v2[5] = &unk_1F4256F88;
  v3[4] = &unk_1F4257D38;
  v3[5] = &unk_1F4257D50;
  v2[6] = &unk_1F4256FB8;
  v2[7] = &unk_1F4256FE8;
  v3[6] = &unk_1F4257D68;
  v3[7] = &unk_1F4257D80;
  v2[8] = &unk_1F4257018;
  v2[9] = &unk_1F4257048;
  v3[8] = &unk_1F4257D98;
  v3[9] = &unk_1F4257DB0;
  v2[10] = &unk_1F4257078;
  v2[11] = &unk_1F42570A8;
  v3[10] = &unk_1F4257DC8;
  v3[11] = &unk_1F4257DE0;
  v2[12] = &unk_1F42570D8;
  v2[13] = &unk_1F4257108;
  v3[12] = &unk_1F4257DF8;
  v3[13] = &unk_1F4257E10;
  v2[14] = &unk_1F4257138;
  v2[15] = &unk_1F4257168;
  v3[14] = &unk_1F4257E28;
  v3[15] = &unk_1F4257E40;
  v2[16] = &unk_1F4257198;
  v2[17] = &unk_1F42571C8;
  v3[16] = &unk_1F4257E58;
  v3[17] = &unk_1F4257E70;
  v2[18] = &unk_1F42571F8;
  v2[19] = &unk_1F4257228;
  v3[18] = &unk_1F4257E88;
  v3[19] = &unk_1F4257EA0;
  v2[20] = &unk_1F4257258;
  v2[21] = &unk_1F4257288;
  v3[20] = &unk_1F4257EB8;
  v3[21] = &unk_1F4257ED0;
  v2[22] = &unk_1F42572B8;
  v2[23] = &unk_1F42572E8;
  v3[22] = &unk_1F4257EE8;
  v3[23] = &unk_1F4257F00;
  v2[24] = &unk_1F4257318;
  v2[25] = &unk_1F4257348;
  v3[24] = &unk_1F4257F18;
  v3[25] = &unk_1F4257F30;
  v2[26] = &unk_1F4257378;
  v2[27] = &unk_1F42573A8;
  v3[26] = &unk_1F4257F48;
  v3[27] = &unk_1F4257F60;
  v2[28] = &unk_1F42573D8;
  v2[29] = &unk_1F4257408;
  v3[28] = &unk_1F4257F78;
  v3[29] = &unk_1F4257F90;
  v2[30] = &unk_1F4257438;
  v2[31] = &unk_1F4257468;
  v3[30] = &unk_1F4257FA8;
  v3[31] = &unk_1F4257FC0;
  v2[32] = &unk_1F4257498;
  v2[33] = &unk_1F42574C8;
  v3[32] = &unk_1F4257FD8;
  v3[33] = &unk_1F4257FF0;
  v2[34] = &unk_1F42574F8;
  v2[35] = &unk_1F4257528;
  v3[34] = &unk_1F4258008;
  v3[35] = &unk_1F4258020;
  v2[36] = &unk_1F4257558;
  v2[37] = &unk_1F4257588;
  v3[36] = &unk_1F4258038;
  v3[37] = &unk_1F4258050;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Request_fulfilled_keyToCode;
  ARTechnique_Request_fulfilled_keyToCode = v0;
}

- (ARTechnique)init
{
  v15.receiver = self;
  v15.super_class = ARTechnique;
  v2 = [(ARTechnique *)&v15 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 length];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v8 = [v5 characterAtIndex:i] + 263 * v8;
      }

      v10 = v8 & 0x1FFF;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v3 numberWithUnsignedShort:v10];
    traceKey = v2->_traceKey;
    v2->_traceKey = v11;

    splitTechniques = v2->_splitTechniques;
    v2->_splitTechniques = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)reconfigureFrom:(id)from
{
  fromCopy = from;
  splitTechniques = [fromCopy splitTechniques];
  [(ARTechnique *)self setSplitTechniques:splitTechniques];

  splitTechniqueFowardingStrategy = [fromCopy splitTechniqueFowardingStrategy];

  [(ARTechnique *)self setSplitTechniqueFowardingStrategy:splitTechniqueFowardingStrategy];
}

- (id)processData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  splitTechniques = [(ARTechnique *)self splitTechniques];
  v6 = [splitTechniques countByEnumeratingWithState:&v17 objects:v21 count:16];
  v7 = dataCopy;
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    v7 = dataCopy;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(splitTechniques);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        splitTechniqueFowardingStrategy = [(ARTechnique *)self splitTechniqueFowardingStrategy];

        if (splitTechniqueFowardingStrategy)
        {
          splitTechniqueFowardingStrategy2 = [(ARTechnique *)self splitTechniqueFowardingStrategy];
          v14 = [splitTechniqueFowardingStrategy2 shouldProcessData:v7];

          if (!v14)
          {
            continue;
          }
        }

        v15 = [v11 processData:v7];

        v7 = v15;
      }

      v8 = [splitTechniques countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v7;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  delegate = [(ARTechnique *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didOutputResultData:MEMORY[0x1E695E0F0] timestamp:contextCopy context:timestamp];
  }
}

- (id)techniqueOfClass:(Class)class
{
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)techniqueOfClass:(Class)class inArray:(id)array
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(arrayCopy);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy_;
      v21 = __Block_byref_object_dispose_;
      v22 = [v10 techniqueOfClass:class];
      v11 = v18[5];
      if (v11 || ([v10 splitTechniques], v12 = objc_claimAutoreleasedReturnValue(), v16[0] = MEMORY[0x1E69E9820], v16[1] = 3221225472, v16[2] = __40__ARTechnique_techniqueOfClass_inArray___block_invoke, v16[3] = &unk_1E817C7B8, v16[4] = &v17, v16[5] = class, objc_msgSend(v12, "enumerateObjectsUsingBlock:", v16), v12, (v11 = v18[5]) != 0))
      {
        v4 = v11;
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      _Block_object_dispose(&v17, 8);

      if (!v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v14 = [arrayCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
        v7 = v14;
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v4 = 0;
  }

  return v4;
}

void __40__ARTechnique_techniqueOfClass_inArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 techniqueOfClass:*(a1 + 40)];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)techniqueMatchingPredicate:(id)predicate
{
  if ([predicate evaluateWithObject:self])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)techniqueMatchingPredicate:(id)predicate inArray:(id)array
{
  v31 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  arrayCopy = array;
  v8 = [arrayCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(arrayCopy);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      v25 = [v11 techniqueMatchingPredicate:predicateCopy];
      v12 = v21[5];
      if (v12)
      {
        v4 = v12;
        v13 = 0;
      }

      else
      {
        splitTechniques = [v11 splitTechniques];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __50__ARTechnique_techniqueMatchingPredicate_inArray___block_invoke;
        v17[3] = &unk_1E817C7E0;
        v19 = &v20;
        v18 = predicateCopy;
        [splitTechniques enumerateObjectsUsingBlock:v17];

        v15 = v21[5];
        v13 = v15 == 0;
        if (v15)
        {
          v4 = v15;
        }
      }

      _Block_object_dispose(&v20, 8);

      if (!v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [arrayCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v4 = 0;
  }

  return v4;
}

void __50__ARTechnique_techniqueMatchingPredicate_inArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 techniqueMatchingPredicate:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (unint64_t)techniqueLevel
{
  delegate = [(ARTechnique *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(ARTechnique *)self delegate];
  v6 = [delegate2 techniqueLevel] + 1;

  return v6;
}

- (id)techniqueConformsToProtocol:(id)protocol
{
  if ([(ARTechnique *)self conformsToProtocol:protocol])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)techniqueConformsToProtocol:(id)protocol inArray:(id)array
{
  v31 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  arrayCopy = array;
  v8 = [arrayCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(arrayCopy);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      v25 = [v11 techniqueConformsToProtocol:protocolCopy];
      v12 = v21[5];
      if (v12)
      {
        v4 = v12;
        v13 = 0;
      }

      else
      {
        splitTechniques = [v11 splitTechniques];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __51__ARTechnique_techniqueConformsToProtocol_inArray___block_invoke;
        v17[3] = &unk_1E817C7E0;
        v19 = &v20;
        v18 = protocolCopy;
        [splitTechniques enumerateObjectsUsingBlock:v17];

        v15 = v21[5];
        v13 = v15 == 0;
        if (v15)
        {
          v4 = v15;
        }
      }

      _Block_object_dispose(&v20, 8);

      if (!v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [arrayCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v4 = 0;
  }

  return v4;
}

void __51__ARTechnique_techniqueConformsToProtocol_inArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 techniqueConformsToProtocol:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@(%p)>", v5, self];

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    splitTechniques = [(ARTechnique *)self splitTechniques];
    splitTechniques2 = [v5 splitTechniques];
    if (splitTechniques == splitTechniques2)
    {
      splitTechniqueFowardingStrategy = [(ARTechnique *)self splitTechniqueFowardingStrategy];
      splitTechniqueFowardingStrategy2 = [v5 splitTechniqueFowardingStrategy];
      v8 = splitTechniqueFowardingStrategy == splitTechniqueFowardingStrategy2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fullDescription
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(ARTechnique *)self description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  [(ARTechnique *)self requiredTimeInterval];
  [v5 appendFormat:@" time: %lfs", v6];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(ARTechnique *)self performSelector:sel_isBusy];
    v8 = @"Busy";
    if (!v7)
    {
      v8 = @"NotBusy";
    }

    [v5 appendFormat:@" %@", v8];
  }

  deterministicMode = [(ARTechnique *)self deterministicMode];
  v10 = @"Non-Deterministic";
  if (deterministicMode)
  {
    v10 = @"Deterministic";
  }

  [v5 appendFormat:@" %@", v10];
  splitTechniqueFowardingStrategy = self->_splitTechniqueFowardingStrategy;
  if (splitTechniqueFowardingStrategy)
  {
    v12 = [(ARTechniqueForwardingStrategy *)splitTechniqueFowardingStrategy description];
    [v5 appendFormat:@"\nForwarding Strategy: %@", v12];
  }

  if ([(NSArray *)self->_splitTechniques count])
  {
    v13 = v5;
    [v5 appendFormat:@"\nSplit Techniques:"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_splitTechniques;
    v14 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(obj);
          }

          _fullDescription = [*(*(&v23 + 1) + 8 * i) _fullDescription];
          v19 = [_fullDescription description];
          v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t|\t"];
          [v13 appendFormat:@"\n\t| - %@", v20];
        }

        v15 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v5 = v13;
  }

  return v5;
}

- (id)toJSONWithRootName:(id)name
{
  nameCopy = name;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  [dictionary setObject:v6 forKeyedSubscript:@"id"];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_opt_class()];
  [dictionary setObject:v7 forKeyedSubscript:@"class"];

  if (nameCopy)
  {
    [dictionary setObject:nameCopy forKeyedSubscript:@"name"];
  }

  return dictionary;
}

- (ARTechnique)initWithTechniques:(id)techniques
{
  techniquesCopy = techniques;
  v5 = [[ARParentTechnique alloc] initWithTechniques:techniquesCopy];

  return &v5->super;
}

- (ARTechnique)initWithParallelTechniques:(id)techniques
{
  techniquesCopy = techniques;
  v5 = [[ARParentTechnique alloc] initWithParallelTechniques:techniquesCopy];

  return &v5->super;
}

- (ARTechniqueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)colorForTechnique:(id)technique
{
  techniqueCopy = technique;
  if (colorForTechnique__dotColorsOnceToken != -1)
  {
    +[ARTechnique(DotGraph) colorForTechnique:];
  }

  if (colorForTechnique__onceToken != -1)
  {
    +[ARTechnique(DotGraph) colorForTechnique:];
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [colorForTechnique__colorForTechnique objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = colorForTechnique__dotColors;
    v8 = v5;
    v9 = [v8 length];
    if (v9)
    {
      v10 = 0;
      for (i = 0; i != v9; ++i)
      {
        v10 = [v8 characterAtIndex:i] + 263 * v10;
      }

      v9 = v10 & 0x1FFF;
    }

    v12 = [v7 objectAtIndexedSubscript:{v9 % objc_msgSend(colorForTechnique__dotColors, "count")}];
    [colorForTechnique__colorForTechnique setObject:v12 forKeyedSubscript:v8];
  }

  v13 = [colorForTechnique__colorForTechnique objectForKeyedSubscript:v5];

  return v13;
}

void __43__ARTechnique_DotGraph__colorForTechnique___block_invoke()
{
  v0 = colorForTechnique__dotColors;
  colorForTechnique__dotColors = &unk_1F4258E60;
}

void __43__ARTechnique_DotGraph__colorForTechnique___block_invoke_2()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = colorForTechnique__colorForTechnique;
  colorForTechnique__colorForTechnique = v0;
}

- (void)dotGraphWithLines:(id)lines rootName:(id)name
{
  v82 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  nameCopy = name;
  delegate = [(ARTechnique *)self delegate];
  if (delegate)
  {
    delegate2 = [(ARTechnique *)self delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = MEMORY[0x1E696AEC0];
      delegate3 = [(ARTechnique *)self delegate];
      delegate4 = [(ARTechnique *)self delegate];
      v12 = [ARTechnique colorForTechnique:delegate4];
      v13 = [v9 stringWithFormat:@"(%p)[style=filled fillcolor=%@]", delegate3, v12];
      [linesCopy addObject:v13];

      v14 = MEMORY[0x1E696AEC0];
      delegate5 = [(ARTechnique *)self delegate];
      v16 = [v14 stringWithFormat:@"(%p) -> (%p)[arrowhead=empty style=dotted]", self, delegate5];
      [linesCopy addObject:v16];
    }
  }

  v17 = MEMORY[0x1E696AD60];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = v19;
  v21 = nameCopy;
  if (!nameCopy)
  {
    v21 = &stru_1F4208A80;
  }

  v64 = [v17 stringWithFormat:@"(%p)[label={%@ %@|(%p)", self, v19, v21, self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = objc_initWeak(&location, self);
    [(ARTechnique *)self imageSize];
    v24 = v23;
    v25 = objc_loadWeakRetained(&location);
    [v25 imageSize];
    [v64 appendFormat:@"|(%d x %d)", v24, v26];

    objc_destroyWeak(&location);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = objc_initWeak(&location, self);
      [(ARTechnique *)self networkInputScaleBeforeRotation];
      v29 = v28;
      v30 = objc_loadWeakRetained(&location);
      [v30 networkInputScaleBeforeRotation];
      [v64 appendFormat:@"|(%d x %d)", v29, v31];

      objc_destroyWeak(&location);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = objc_initWeak(&location, self);
        isParallel = [(ARTechnique *)self isParallel];
        v34 = @"Sequential";
        if (isParallel)
        {
          v34 = @"Parallel";
        }

        [v64 appendFormat:@"|%@", v34];

        objc_destroyWeak(&location);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_initWeak(&location, self);
          [v64 appendString:@"|{ℹ"];
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v35 = objc_loadWeakRetained(&location);
          synchronizedResultDataClasses = [v35 synchronizedResultDataClasses];

          v37 = [synchronizedResultDataClasses countByEnumeratingWithState:&v74 objects:v81 count:16];
          if (v37)
          {
            v38 = *v75;
            do
            {
              v39 = 0;
              do
              {
                if (*v75 != v38)
                {
                  objc_enumerationMutation(synchronizedResultDataClasses);
                }

                v40 = NSStringFromClass(*(*(&v74 + 1) + 8 * v39));
                [v64 appendFormat:@"|%@", v40];

                ++v39;
              }

              while (v37 != v39);
              v37 = [synchronizedResultDataClasses countByEnumeratingWithState:&v74 objects:v81 count:16];
            }

            while (v37);
          }

          [v64 appendString:@"}"];
          objc_destroyWeak(&location);
        }
      }
    }
  }

  [(ARTechnique *)self requiredTimeInterval];
  if (v41 > 0.0)
  {
    [(ARTechnique *)self requiredTimeInterval];
    [v64 appendFormat:@"|Required time interval: %dms", (v42 * 1000.0)];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    resultDataClasses = [(ARTechnique *)self resultDataClasses];
    v44 = [resultDataClasses count];

    if (v44)
    {
      [v64 appendString:@"|{ℹ"];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      resultDataClasses2 = [(ARTechnique *)self resultDataClasses];
      v46 = [resultDataClasses2 countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v46)
      {
        v47 = *v71;
        do
        {
          v48 = 0;
          do
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(resultDataClasses2);
            }

            v49 = NSStringFromClass(*(*(&v70 + 1) + 8 * v48));
            [v64 appendFormat:@"|%@", v49];

            ++v48;
          }

          while (v46 != v48);
          v46 = [resultDataClasses2 countByEnumeratingWithState:&v70 objects:v80 count:16];
        }

        while (v46);
      }

      [v64 appendString:@"}"];
    }
  }

  [v64 appendString:@"}]"];
  v50 = MEMORY[0x1E696AEC0];
  objc_opt_class();
  v51 = objc_opt_isKindOfClass();
  if (v51)
  {
    v52 = @"lightgray";
  }

  else
  {
    v52 = [ARTechnique colorForTechnique:self];
  }

  v53 = [v50 stringWithFormat:@"%@[style=filled fillcolor=%@]", v64, v52];
  [linesCopy addObject:v53];

  if ((v51 & 1) == 0)
  {
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  splitTechniques = [(ARTechnique *)self splitTechniques];
  v55 = [splitTechniques countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v55)
  {
    v56 = *v67;
    do
    {
      v57 = 0;
      do
      {
        if (*v67 != v56)
        {
          objc_enumerationMutation(splitTechniques);
        }

        v58 = *(*(&v66 + 1) + 8 * v57);
        v59 = MEMORY[0x1E696AEC0];
        objc_opt_class();
        objc_opt_class();
        v60 = objc_opt_isKindOfClass();
        v61 = &stru_1F4208A80;
        if (v60)
        {
          v61 = @"[shape=square]";
        }

        v62 = [v59 stringWithFormat:@"(%p)%@ -> (%p)[style=dashed penwidth=5]", self, v61, v58];
        [linesCopy addObject:v62];

        [v58 dotGraphWithLines:linesCopy rootName:0];
        ++v57;
      }

      while (v55 != v57);
      v55 = [splitTechniques countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v55);
  }
}

void __ARTechnique_Result_Drop_block_invoke()
{
  v3[38] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F42583B0;
  v2[1] = &unk_1F42583E0;
  v3[0] = &unk_1F42583C8;
  v3[1] = &unk_1F42583F8;
  v2[2] = &unk_1F4258410;
  v2[3] = &unk_1F4258440;
  v3[2] = &unk_1F4258428;
  v3[3] = &unk_1F4258458;
  v2[4] = &unk_1F4258470;
  v2[5] = &unk_1F42584A0;
  v3[4] = &unk_1F4258488;
  v3[5] = &unk_1F42584B8;
  v2[6] = &unk_1F42584D0;
  v2[7] = &unk_1F4258500;
  v3[6] = &unk_1F42584E8;
  v3[7] = &unk_1F4258518;
  v2[8] = &unk_1F4258530;
  v2[9] = &unk_1F4258560;
  v3[8] = &unk_1F4258548;
  v3[9] = &unk_1F4258578;
  v2[10] = &unk_1F4258590;
  v2[11] = &unk_1F42585C0;
  v3[10] = &unk_1F42585A8;
  v3[11] = &unk_1F42585D8;
  v2[12] = &unk_1F42585F0;
  v2[13] = &unk_1F4258620;
  v3[12] = &unk_1F4258608;
  v3[13] = &unk_1F4258638;
  v2[14] = &unk_1F4258650;
  v2[15] = &unk_1F4258680;
  v3[14] = &unk_1F4258668;
  v3[15] = &unk_1F4258698;
  v2[16] = &unk_1F42586B0;
  v2[17] = &unk_1F42586E0;
  v3[16] = &unk_1F42586C8;
  v3[17] = &unk_1F42586F8;
  v2[18] = &unk_1F4258710;
  v2[19] = &unk_1F4258740;
  v3[18] = &unk_1F4258728;
  v3[19] = &unk_1F4258758;
  v2[20] = &unk_1F4258770;
  v2[21] = &unk_1F42587A0;
  v3[20] = &unk_1F4258788;
  v3[21] = &unk_1F42587B8;
  v2[22] = &unk_1F42587D0;
  v2[23] = &unk_1F4258800;
  v3[22] = &unk_1F42587E8;
  v3[23] = &unk_1F4258818;
  v2[24] = &unk_1F4258830;
  v2[25] = &unk_1F4258860;
  v3[24] = &unk_1F4258848;
  v3[25] = &unk_1F4258878;
  v2[26] = &unk_1F4258890;
  v2[27] = &unk_1F42588C0;
  v3[26] = &unk_1F42588A8;
  v3[27] = &unk_1F42588D8;
  v2[28] = &unk_1F42588F0;
  v2[29] = &unk_1F4258920;
  v3[28] = &unk_1F4258908;
  v3[29] = &unk_1F4258938;
  v2[30] = &unk_1F4258950;
  v2[31] = &unk_1F4258980;
  v3[30] = &unk_1F4258968;
  v3[31] = &unk_1F4258998;
  v2[32] = &unk_1F42589B0;
  v2[33] = &unk_1F42589C8;
  v3[32] = &unk_1F42589B0;
  v3[33] = &unk_1F42589E0;
  v2[34] = &unk_1F42589F8;
  v2[35] = &unk_1F4258A28;
  v3[34] = &unk_1F4258A10;
  v3[35] = &unk_1F4258A40;
  v2[36] = &unk_1F4258A58;
  v2[37] = &unk_1F4258A88;
  v3[36] = &unk_1F4258A70;
  v3[37] = &unk_1F4258AA0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = ARTechnique_Result_Drop_keyToCode;
  ARTechnique_Result_Drop_keyToCode = v0;
}

@end