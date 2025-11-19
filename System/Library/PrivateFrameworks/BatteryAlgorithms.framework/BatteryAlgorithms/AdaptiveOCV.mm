@interface AdaptiveOCV
+ (id)algorithmWithData:(id)a3;
- (basic_string<char,)programName;
- (id).cxx_construct;
- (id)init:(id)a3;
- (id)output;
- (id)preRun:(id)a3;
- (int)runWithData:(id)a3;
@end

@implementation AdaptiveOCV

+ (id)algorithmWithData:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__AdaptiveOCV_algorithmWithData___block_invoke;
  v10[3] = &unk_278D050D8;
  v11 = v4;
  v12 = a1;
  v5 = +[AdaptiveOCV algorithmWithData:]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[AdaptiveOCV algorithmWithData:]::onceToken, v10);
  }

  v7 = +[AdaptiveOCV algorithmWithData:]::instance;
  v8 = +[AdaptiveOCV algorithmWithData:]::instance;

  return v7;
}

uint64_t __33__AdaptiveOCV_algorithmWithData___block_invoke(uint64_t a1)
{
  +[AdaptiveOCV algorithmWithData:]::instance = [objc_alloc(*(a1 + 40)) init:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (id)init:(id)a3
{
  v3 = MEMORY[0x28223BE20](self, a2, a3);
  v73[13] = *MEMORY[0x277D85DE8];
  v32 = v4;
  v38 = [v32 objectForKey:@"smcData"];
  v39 = [v32 objectForKey:@"systemState"];
  [v32 objectForKey:@"savedAlgoState"];
  objc_claimAutoreleasedReturnValue();
  v45.receiver = v3;
  v45.super_class = AdaptiveOCV;
  v5 = [(AdaptiveOCV *)&v45 init];

  name = v5->_name;
  v5->_name = @"AdaptiveOCV";

  algoDescription = v5->_algoDescription;
  v5->_algoDescription = @"Symptom-based OCV algorithm to enhance the accuracy of Machine-Learning OCV.";

  v8 = [MEMORY[0x277CCABB0] numberWithInt:604800];
  runPeriod = v5->_runPeriod;
  v5->_runPeriod = v8;

  v72[0] = @"D37";
  v70[0] = &unk_2853ABE70;
  v70[1] = &unk_2853ABE88;
  v71[0] = @"D37ATL";
  v71[1] = @"D37ATL";
  v70[2] = &unk_2853ABEA0;
  v70[3] = &unk_2853ABEB8;
  v71[2] = @"D37ATL";
  v71[3] = @"D37ATL";
  v70[4] = &unk_2853ABED0;
  v70[5] = &unk_2853ABEE8;
  v71[4] = @"D37ATL";
  v71[5] = @"D37ATL";
  v70[6] = &unk_2853ABF00;
  v70[7] = &unk_2853ABF18;
  v71[6] = @"D37ATL";
  v71[7] = @"D37ATL";
  v70[8] = &unk_2853ABF30;
  v70[9] = &unk_2853ABF48;
  v71[8] = @"D37ATL";
  v71[9] = @"D37ATL";
  v70[10] = &unk_2853ABF60;
  v70[11] = &unk_2853ABF78;
  v71[10] = @"D37ATL";
  v71[11] = @"D37LGC";
  v70[12] = &unk_2853ABF90;
  v70[13] = &unk_2853ABFA8;
  v71[12] = @"D37LGC";
  v71[13] = @"D37LGC";
  v70[14] = &unk_2853ABFC0;
  v70[15] = &unk_2853ABFD8;
  v71[14] = @"D37LGC";
  v71[15] = @"D37LGC";
  v70[16] = &unk_2853ABFF0;
  v70[17] = &unk_2853AC008;
  v71[16] = @"D37LGC";
  v71[17] = @"D37LGC";
  v70[18] = &unk_2853AC020;
  v70[19] = &unk_2853AC038;
  v71[18] = @"D37LGC";
  v71[19] = @"D37LGC";
  v70[20] = &unk_2853AC050;
  v70[21] = &unk_2853AC068;
  v71[20] = @"D37LGC";
  v71[21] = @"D37LGC";
  v70[22] = &unk_2853AC080;
  v70[23] = &unk_2853AC098;
  v71[22] = @"D37LGC";
  v71[23] = @"D37LGC";
  v70[24] = &unk_2853AC0B0;
  v70[25] = &unk_2853AC0C8;
  v71[24] = @"D37LGC";
  v71[25] = @"D37LGC";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:26];
  v73[0] = v37;
  v72[1] = @"D38";
  v68[0] = &unk_2853AC0E0;
  v68[1] = &unk_2853AC0F8;
  v69[0] = @"D38ATL";
  v69[1] = @"D38ATL";
  v68[2] = &unk_2853AC110;
  v68[3] = &unk_2853AC128;
  v69[2] = @"D38ATL";
  v69[3] = @"D38ATL";
  v68[4] = &unk_2853AC140;
  v68[5] = &unk_2853AC158;
  v69[4] = @"D38ATL";
  v69[5] = @"D38ATL";
  v68[6] = &unk_2853AC170;
  v68[7] = &unk_2853AC188;
  v69[6] = @"D38ATL";
  v69[7] = @"D38ATL";
  v68[8] = &unk_2853AC1A0;
  v68[9] = &unk_2853AC1B8;
  v69[8] = @"D38ATL";
  v69[9] = @"D38ATL";
  v68[10] = &unk_2853AC1D0;
  v68[11] = &unk_2853AC1E8;
  v69[10] = @"D38ATL";
  v69[11] = @"D38ATL";
  v68[12] = &unk_2853AC200;
  v68[13] = &unk_2853AC218;
  v69[12] = @"D38ATL";
  v69[13] = @"D38ATL";
  v68[14] = &unk_2853AC230;
  v68[15] = &unk_2853AC248;
  v69[14] = @"D38ATL";
  v69[15] = @"D38ATL";
  v68[16] = &unk_2853AC260;
  v68[17] = &unk_2853AC278;
  v69[16] = @"D38ATL";
  v69[17] = @"D38ATL";
  v68[18] = &unk_2853AC290;
  v68[19] = &unk_2853AC2A8;
  v69[18] = @"D38ATL";
  v69[19] = @"D38ATL";
  v68[20] = &unk_2853AC2C0;
  v68[21] = &unk_2853AC2D8;
  v69[20] = @"D38ATL";
  v69[21] = @"D38ATL";
  v68[22] = &unk_2853AC2F0;
  v68[23] = &unk_2853AC308;
  v69[22] = @"D38ATL";
  v69[23] = @"D38ATL";
  v68[24] = &unk_2853AC320;
  v68[25] = &unk_2853AC338;
  v69[24] = @"D38LGC";
  v69[25] = @"D38LGC";
  v68[26] = &unk_2853AC350;
  v68[27] = &unk_2853AC368;
  v69[26] = @"D38LGC";
  v69[27] = @"D38LGC";
  v68[28] = &unk_2853AC380;
  v68[29] = &unk_2853AC398;
  v69[28] = @"D38LGC";
  v69[29] = @"D38LGC";
  v68[30] = &unk_2853AC3B0;
  v68[31] = &unk_2853AC3C8;
  v69[30] = @"D38LGC";
  v69[31] = @"D38LGC";
  v68[32] = &unk_2853AC3E0;
  v68[33] = &unk_2853AC3F8;
  v69[32] = @"D38LGC";
  v69[33] = @"D38LGC";
  v68[34] = &unk_2853AC410;
  v68[35] = &unk_2853AC428;
  v69[34] = @"D38LGC";
  v69[35] = @"D38LGC";
  v68[36] = &unk_2853AC440;
  v68[37] = &unk_2853AC458;
  v69[36] = @"D38LGC";
  v69[37] = @"D38LGC";
  v68[38] = &unk_2853AC470;
  v68[39] = &unk_2853AC488;
  v69[38] = @"D38LGC";
  v69[39] = @"D38LGC";
  v68[40] = &unk_2853AC4A0;
  v68[41] = &unk_2853AC4B8;
  v69[40] = @"D38LGC";
  v69[41] = @"D38LGC";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:42];
  v73[1] = v36;
  v72[2] = @"D83";
  v66[0] = &unk_2853AC4D0;
  v66[1] = &unk_2853AC4E8;
  v67[0] = @"D83ATL";
  v67[1] = @"D83ATL";
  v66[2] = &unk_2853AC500;
  v66[3] = &unk_2853AC518;
  v67[2] = @"D83ATL";
  v67[3] = @"D83ATL";
  v66[4] = &unk_2853AC530;
  v66[5] = &unk_2853AC548;
  v67[4] = @"D83ATL";
  v67[5] = @"D83ATL";
  v66[6] = &unk_2853AC560;
  v66[7] = &unk_2853AC578;
  v67[6] = @"D83ATL";
  v67[7] = @"D83ATL";
  v66[8] = &unk_2853AC590;
  v66[9] = &unk_2853AC5A8;
  v67[8] = @"D83ATL";
  v67[9] = @"D83ATL";
  v66[10] = &unk_2853AC5C0;
  v66[11] = &unk_2853AC5D8;
  v67[10] = @"D83ATL";
  v67[11] = @"D83ATL";
  v66[12] = &unk_2853AC5F0;
  v66[13] = &unk_2853AC608;
  v67[12] = @"D83ATL";
  v67[13] = @"D83ATL";
  v66[14] = &unk_2853AC620;
  v66[15] = &unk_2853AC638;
  v67[14] = @"D83ATL";
  v67[15] = @"D83ATL";
  v66[16] = &unk_2853AC650;
  v66[17] = &unk_2853AC668;
  v67[16] = @"D83COS";
  v67[17] = @"D83COS";
  v66[18] = &unk_2853AC680;
  v66[19] = &unk_2853AC698;
  v67[18] = @"D83COS";
  v67[19] = @"D83COS";
  v66[20] = &unk_2853AC6B0;
  v66[21] = &unk_2853AC6C8;
  v67[20] = @"D83COS";
  v67[21] = @"D83COS";
  v66[22] = &unk_2853AC6E0;
  v66[23] = &unk_2853AC6F8;
  v67[22] = @"D83COS";
  v67[23] = @"D83COS";
  v66[24] = &unk_2853AC710;
  v66[25] = &unk_2853AC728;
  v67[24] = @"D83COS";
  v67[25] = @"D83COS";
  v66[26] = &unk_2853AC740;
  v66[27] = &unk_2853AC758;
  v67[26] = @"D83COS";
  v67[27] = @"D83COS";
  v66[28] = &unk_2853AC770;
  v66[29] = &unk_2853AC788;
  v67[28] = @"D83COS";
  v67[29] = @"D83COS";
  v66[30] = &unk_2853AC7A0;
  v67[30] = @"D83COS";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:31];
  v73[2] = v35;
  v72[3] = @"D84";
  v64[0] = &unk_2853AC7B8;
  v64[1] = &unk_2853AC7D0;
  v65[0] = @"D84ATL";
  v65[1] = @"D84ATL";
  v64[2] = &unk_2853AC7E8;
  v64[3] = &unk_2853AC800;
  v65[2] = @"D84ATL";
  v65[3] = @"D84ATL";
  v64[4] = &unk_2853AC818;
  v64[5] = &unk_2853AC830;
  v65[4] = @"D84ATL";
  v65[5] = @"D84ATL";
  v64[6] = &unk_2853AC848;
  v64[7] = &unk_2853AC860;
  v65[6] = @"D84ATL";
  v65[7] = @"D84ATL";
  v64[8] = &unk_2853AC878;
  v64[9] = &unk_2853AC890;
  v65[8] = @"D84ATL";
  v65[9] = @"D84ATL";
  v64[10] = &unk_2853AC8A8;
  v64[11] = &unk_2853AC8C0;
  v65[10] = @"D84ATL";
  v65[11] = @"D84ATL";
  v64[12] = &unk_2853AC8D8;
  v64[13] = &unk_2853AC8F0;
  v65[12] = @"D84ATL";
  v65[13] = @"D84ATL";
  v64[14] = &unk_2853AC908;
  v64[15] = &unk_2853AC920;
  v65[14] = @"D84ATL";
  v65[15] = @"D84ATL";
  v64[16] = &unk_2853AC938;
  v64[17] = &unk_2853AC950;
  v65[16] = @"D84ATL";
  v65[17] = @"D84ATL";
  v64[18] = &unk_2853AC968;
  v64[19] = &unk_2853AC980;
  v65[18] = @"D84ATL";
  v65[19] = @"D84ATL";
  v64[20] = &unk_2853AC998;
  v64[21] = &unk_2853AC9B0;
  v65[20] = @"D84ATL";
  v65[21] = @"D84ATL";
  v64[22] = &unk_2853AC9C8;
  v64[23] = &unk_2853AC9E0;
  v65[22] = @"D84ATL";
  v65[23] = @"D84ATL";
  v64[24] = &unk_2853AC9F8;
  v64[25] = &unk_2853ACA10;
  v65[24] = @"D84LGC";
  v65[25] = @"D84LGC";
  v64[26] = &unk_2853ACA28;
  v64[27] = &unk_2853ACA40;
  v65[26] = @"D84LGC";
  v65[27] = @"D84LGC";
  v64[28] = &unk_2853ACA58;
  v64[29] = &unk_2853ACA70;
  v65[28] = @"D84LGC";
  v65[29] = @"D84LGC";
  v64[30] = &unk_2853ACA88;
  v64[31] = &unk_2853ACAA0;
  v65[30] = @"D84LGC";
  v65[31] = @"D84LGC";
  v64[32] = &unk_2853ACAB8;
  v64[33] = &unk_2853ACAD0;
  v65[32] = @"D84LGC";
  v65[33] = @"D84LGC";
  v64[34] = &unk_2853ACAE8;
  v64[35] = &unk_2853ACB00;
  v65[34] = @"D84LGC";
  v65[35] = @"D84LGC";
  v64[36] = &unk_2853ACB18;
  v64[37] = &unk_2853ACB30;
  v65[36] = @"D84LGC";
  v65[37] = @"D84LGC";
  v64[38] = &unk_2853ACB48;
  v64[39] = &unk_2853ACB60;
  v65[38] = @"D84LGC";
  v65[39] = @"D84LGC";
  v64[40] = &unk_2853ACB78;
  v64[41] = &unk_2853ACB90;
  v65[40] = @"D84LGC";
  v65[41] = @"D84LGC";
  v64[42] = &unk_2853ACBA8;
  v64[43] = &unk_2853ACBC0;
  v65[42] = @"D84LGC";
  v65[43] = @"D84LGC";
  v64[44] = &unk_2853ACBD8;
  v64[45] = &unk_2853ACBF0;
  v65[44] = @"D84LGC";
  v65[45] = @"D84LGC";
  v64[46] = &unk_2853ACC08;
  v64[47] = &unk_2853ACC20;
  v65[46] = @"D84LGC";
  v65[47] = @"D84LGC";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:48];
  v73[3] = v34;
  v72[4] = @"D47";
  v62[0] = &unk_2853ACC38;
  v62[1] = &unk_2853ACC50;
  v63[0] = @"D47ATL";
  v63[1] = @"D47ATL";
  v62[2] = &unk_2853ACC68;
  v62[3] = &unk_2853ACC80;
  v63[2] = @"D47ATL";
  v63[3] = @"D47ATL";
  v62[4] = &unk_2853ACC98;
  v62[5] = &unk_2853ACCB0;
  v63[4] = @"D47ATL";
  v63[5] = @"D47ATL";
  v62[6] = &unk_2853ACCC8;
  v62[7] = &unk_2853ACCE0;
  v63[6] = @"D47ATL";
  v63[7] = @"D47ATL";
  v62[8] = &unk_2853ACCF8;
  v62[9] = &unk_2853ACD10;
  v63[8] = @"D47ATL";
  v63[9] = @"D47ATL";
  v62[10] = &unk_2853ACD28;
  v62[11] = &unk_2853ACD40;
  v63[10] = @"D47ATL";
  v63[11] = @"D47ATL";
  v62[12] = &unk_2853ACD58;
  v62[13] = &unk_2853ACD70;
  v63[12] = @"D47ATL";
  v63[13] = @"D47ATL";
  v62[14] = &unk_2853ACD88;
  v62[15] = &unk_2853ACDA0;
  v63[14] = @"D47ATL";
  v63[15] = @"D47ATL";
  v62[16] = &unk_2853ACDB8;
  v62[17] = &unk_2853ACDD0;
  v63[16] = @"D47ATL";
  v63[17] = @"D47ATL";
  v62[18] = &unk_2853ACDE8;
  v62[19] = &unk_2853ACE00;
  v63[18] = @"D47COS";
  v63[19] = @"D47COS";
  v62[20] = &unk_2853ACE18;
  v62[21] = &unk_2853ACE30;
  v63[20] = @"D47COS";
  v63[21] = @"D47COS";
  v62[22] = &unk_2853ACE48;
  v62[23] = &unk_2853ACE60;
  v63[22] = @"D47COS";
  v63[23] = @"D47COS";
  v62[24] = &unk_2853ACE78;
  v62[25] = &unk_2853ACE90;
  v63[24] = @"D47COS";
  v63[25] = @"D47COS";
  v62[26] = &unk_2853ACEA8;
  v62[27] = &unk_2853ACEC0;
  v63[26] = @"D47COS";
  v63[27] = @"D47COS";
  v62[28] = &unk_2853ACED8;
  v62[29] = &unk_2853ACEF0;
  v63[28] = @"D47COS";
  v63[29] = @"D47COS";
  v62[30] = &unk_2853ACF08;
  v62[31] = &unk_2853ACF20;
  v63[30] = @"D47COS";
  v63[31] = @"D47COS";
  v62[32] = &unk_2853ACF38;
  v62[33] = &unk_2853ACF50;
  v63[32] = @"D47COS";
  v63[33] = @"D47COS";
  v62[34] = &unk_2853ACF68;
  v62[35] = &unk_2853ACF80;
  v63[34] = @"D47COS";
  v63[35] = @"D47COS";
  v62[36] = &unk_2853ACF98;
  v63[36] = @"D47COS";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:37];
  v73[4] = v33;
  v72[5] = @"D48";
  v60[0] = &unk_2853ACFB0;
  v60[1] = &unk_2853ACFC8;
  v61[0] = @"D48ATL";
  v61[1] = @"D48ATL";
  v60[2] = &unk_2853ACFE0;
  v60[3] = &unk_2853ACFF8;
  v61[2] = @"D48ATL";
  v61[3] = @"D48ATL";
  v60[4] = &unk_2853AD010;
  v60[5] = &unk_2853AD028;
  v61[4] = @"D48ATL";
  v61[5] = @"D48ATL";
  v60[6] = &unk_2853AD040;
  v60[7] = &unk_2853AD058;
  v61[6] = @"D48ATL";
  v61[7] = @"D48ATL";
  v60[8] = &unk_2853AD070;
  v60[9] = &unk_2853AD088;
  v61[8] = @"D48ATL";
  v61[9] = @"D48ATL";
  v60[10] = &unk_2853AD0A0;
  v60[11] = &unk_2853AD0B8;
  v61[10] = @"D48ATL";
  v61[11] = @"D48ATL";
  v60[12] = &unk_2853AD0D0;
  v60[13] = &unk_2853AD0E8;
  v61[12] = @"D48ATL";
  v61[13] = @"D48ATL";
  v60[14] = &unk_2853AD100;
  v60[15] = &unk_2853AD118;
  v61[14] = @"D48LGC";
  v61[15] = @"D48LGC";
  v60[16] = &unk_2853AD130;
  v60[17] = &unk_2853AD148;
  v61[16] = @"D48LGC";
  v61[17] = @"D48LGC";
  v60[18] = &unk_2853AD160;
  v60[19] = &unk_2853AD178;
  v61[18] = @"D48LGC";
  v61[19] = @"D48LGC";
  v60[20] = &unk_2853AD190;
  v60[21] = &unk_2853AD1A8;
  v61[20] = @"D48LGC";
  v61[21] = @"D48LGC";
  v60[22] = &unk_2853AD1C0;
  v60[23] = &unk_2853AD1D8;
  v61[22] = @"D48LGC";
  v61[23] = @"D48LGC";
  v60[24] = &unk_2853AD1F0;
  v60[25] = &unk_2853AD208;
  v61[24] = @"D48LGC";
  v61[25] = @"D48LGC";
  v60[26] = &unk_2853AD220;
  v60[27] = &unk_2853AD238;
  v61[26] = @"D48LGC";
  v61[27] = @"D48LGC";
  v60[28] = &unk_2853AD250;
  v60[29] = &unk_2853AD268;
  v61[28] = @"D48LGC";
  v61[29] = @"D48LGC";
  v60[30] = &unk_2853AD280;
  v60[31] = &unk_2853AD298;
  v61[30] = @"D48LGC";
  v61[31] = @"D48LGC";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:32];
  v73[5] = v10;
  v72[6] = @"D93";
  v58[0] = &unk_2853AD2B0;
  v58[1] = &unk_2853AD2C8;
  v59[0] = @"D93ATL";
  v59[1] = @"D93ATL";
  v58[2] = &unk_2853AD2E0;
  v58[3] = &unk_2853AD2F8;
  v59[2] = @"D93ATL";
  v59[3] = @"D93ATL";
  v58[4] = &unk_2853AD310;
  v58[5] = &unk_2853AD328;
  v59[4] = @"D93ATL";
  v59[5] = @"D93ATL";
  v58[6] = &unk_2853AD340;
  v58[7] = &unk_2853AD358;
  v59[6] = @"D93ATL";
  v59[7] = @"D93ATL";
  v58[8] = &unk_2853AD370;
  v58[9] = &unk_2853AD388;
  v59[8] = @"D93ATL";
  v59[9] = @"D93ATL";
  v58[10] = &unk_2853AD3A0;
  v58[11] = &unk_2853AD3B8;
  v59[10] = @"D93ATL";
  v59[11] = @"D93ATL";
  v58[12] = &unk_2853AD3D0;
  v58[13] = &unk_2853AD3E8;
  v59[12] = @"D93ATL";
  v59[13] = @"D93ATL";
  v58[14] = &unk_2853AD400;
  v58[15] = &unk_2853AD418;
  v59[14] = @"D93ATL";
  v59[15] = @"D93ATL";
  v58[16] = &unk_2853AD430;
  v58[17] = &unk_2853AD448;
  v59[16] = @"D93ATL";
  v59[17] = @"D93ATL";
  v58[18] = &unk_2853AD460;
  v58[19] = &unk_2853AD478;
  v59[18] = @"D93ATL";
  v59[19] = @"D93ATL";
  v58[20] = &unk_2853AD490;
  v58[21] = &unk_2853AD4A8;
  v59[20] = @"D93ATL";
  v59[21] = @"D93ATL";
  v58[22] = &unk_2853AD4C0;
  v58[23] = &unk_2853AD4D8;
  v59[22] = @"D93ATL";
  v59[23] = @"D93ATL";
  v58[24] = &unk_2853AD4F0;
  v59[24] = @"D93ATL";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:25];
  v73[6] = v11;
  v72[7] = @"D94";
  v56[0] = &unk_2853AD508;
  v56[1] = &unk_2853AD520;
  v57[0] = @"D94ATL";
  v57[1] = @"D94ATL";
  v56[2] = &unk_2853AD538;
  v56[3] = &unk_2853AD550;
  v57[2] = @"D94ATL";
  v57[3] = @"D94ATL";
  v56[4] = &unk_2853AD568;
  v56[5] = &unk_2853AD580;
  v57[4] = @"D94ATL";
  v57[5] = @"D94ATL";
  v56[6] = &unk_2853AD598;
  v56[7] = &unk_2853AD5B0;
  v57[6] = @"D94ATL";
  v57[7] = @"D94ATL";
  v56[8] = &unk_2853AD5C8;
  v56[9] = &unk_2853AD5E0;
  v57[8] = @"D94ATL";
  v57[9] = @"D94LGC";
  v56[10] = &unk_2853AD5F8;
  v56[11] = &unk_2853AD610;
  v57[10] = @"D94LGC";
  v57[11] = @"D94LGC";
  v56[12] = &unk_2853AD628;
  v56[13] = &unk_2853AD640;
  v57[12] = @"D94LGC";
  v57[13] = @"D94LGC";
  v56[14] = &unk_2853AD658;
  v56[15] = &unk_2853AD670;
  v57[14] = @"D94LGC";
  v57[15] = @"D94LGC";
  v56[16] = &unk_2853AD688;
  v56[17] = &unk_2853AD6A0;
  v57[16] = @"D94LGC";
  v57[17] = @"D94LGC";
  v56[18] = &unk_2853AD6B8;
  v56[19] = &unk_2853AD6D0;
  v57[18] = @"D94LGC";
  v57[19] = @"D94LGC";
  v56[20] = &unk_2853AD6E8;
  v57[20] = @"D94LGC";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:21];
  v73[7] = v12;
  v72[8] = @"V59";
  v54[0] = &unk_2853AD700;
  v54[1] = &unk_2853AD718;
  v55[0] = @"V59ATL";
  v55[1] = @"V59ATL";
  v54[2] = &unk_2853AD730;
  v54[3] = &unk_2853AD748;
  v55[2] = @"V59ATL";
  v55[3] = @"V59ATL";
  v54[4] = &unk_2853AD760;
  v54[5] = &unk_2853AD778;
  v55[4] = @"V59ATL";
  v55[5] = @"V59ATL";
  v54[6] = &unk_2853AD790;
  v54[7] = &unk_2853AD7A8;
  v55[6] = @"V59ATL";
  v55[7] = @"V59ATL";
  v54[8] = &unk_2853AD7C0;
  v54[9] = &unk_2853AD7D8;
  v55[8] = @"V59LGC";
  v55[9] = @"V59LGC";
  v54[10] = &unk_2853AD7F0;
  v54[11] = &unk_2853AD808;
  v55[10] = @"V59LGC";
  v55[11] = @"V59LGC";
  v54[12] = &unk_2853AD820;
  v54[13] = &unk_2853AD838;
  v55[12] = @"V59LGC";
  v55[13] = @"V59LGC";
  v54[14] = &unk_2853AD850;
  v54[15] = &unk_2853AD868;
  v55[14] = @"V59LGC";
  v55[15] = @"V59LGC";
  v54[16] = &unk_2853AD880;
  v55[16] = @"V59LGC";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:17];
  v73[8] = v13;
  v72[9] = @"D23";
  v52[0] = &unk_2853AD898;
  v52[1] = &unk_2853AD8B0;
  v53[0] = @"D23ATL";
  v53[1] = @"D23ATL";
  v52[2] = &unk_2853AD8C8;
  v52[3] = &unk_2853AD8E0;
  v53[2] = @"D23ATL";
  v53[3] = @"D23ATL";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:4];
  v73[9] = v14;
  v72[10] = @"V53";
  v50[0] = &unk_2853AD8F8;
  v50[1] = &unk_2853AD910;
  v51[0] = @"V53eATL";
  v51[1] = @"V53eCOS";
  v50[2] = &unk_2853AD928;
  v50[3] = &unk_2853AD940;
  v51[2] = @"V53pATL";
  v51[3] = @"V53pCOS";
  v50[4] = &unk_2853AD958;
  v50[5] = &unk_2853AD970;
  v51[4] = @"V53eATL";
  v51[5] = @"V53eCOS";
  v50[6] = &unk_2853AD988;
  v50[7] = &unk_2853AD9A0;
  v51[6] = @"V53pATL";
  v51[7] = @"V53pCOS";
  v50[8] = &unk_2853AD9B8;
  v50[9] = &unk_2853AD9D0;
  v51[8] = @"V53eATL";
  v51[9] = @"V53eCOS";
  v50[10] = &unk_2853AD9E8;
  v50[11] = &unk_2853ADA00;
  v51[10] = @"V53pATL";
  v51[11] = @"V53pCOS";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:12];
  v73[10] = v15;
  v72[11] = @"V54";
  v48[0] = &unk_2853ADA18;
  v48[1] = &unk_2853ADA30;
  v49[0] = @"V54eATL";
  v49[1] = @"V54eLGC";
  v48[2] = &unk_2853ADA48;
  v48[3] = &unk_2853ADA60;
  v49[2] = @"V54pATL";
  v49[3] = @"V54pLGC";
  v48[4] = &unk_2853ADA78;
  v48[5] = &unk_2853ADA90;
  v49[4] = @"V54eATL";
  v49[5] = @"V54eLGC";
  v48[6] = &unk_2853ADAA8;
  v48[7] = &unk_2853ADAC0;
  v49[6] = @"V54pATL";
  v49[7] = @"V54pLGC";
  v48[8] = &unk_2853ADAD8;
  v48[9] = &unk_2853ADAF0;
  v49[8] = @"V54eATL";
  v49[9] = @"V54eLGC";
  v48[10] = &unk_2853ADB08;
  v48[11] = &unk_2853ADB20;
  v49[10] = @"V54pATL";
  v49[11] = @"V54pLGC";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:12];
  v73[11] = v16;
  v72[12] = @"V57";
  v46[0] = &unk_2853ADB38;
  v46[1] = &unk_2853ADB50;
  v47[0] = @"V57ATL";
  v47[1] = @"V57COS";
  v46[2] = &unk_2853ADB68;
  v46[3] = &unk_2853ADB80;
  v47[2] = @"V57ATL";
  v47[3] = @"V57COS";
  v46[4] = &unk_2853ADB98;
  v46[5] = &unk_2853ADBB0;
  v47[4] = @"V57ATL";
  v47[5] = @"V57COS";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:6];
  v73[12] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:13];

  v19 = [v39 objectForKeyedSubscript:@"DeviceType"];
  v20 = [v18 objectForKeyedSubscript:v19];
  LODWORD(v10) = v20 == 0;

  if (v10)
  {
    LOBYTE(v29) = 7;
    v30 = 0x746C7561666544;
  }

  else
  {
    v22 = [v39 objectForKeyedSubscript:@"DeviceType"];
    v23 = [v18 objectForKeyedSubscript:v22];

    v24 = [v38 objectForKeyedSubscript:@"AlgoChemID"];
    v25 = [v23 objectForKeyedSubscript:v24];
    v26 = v25 == 0;

    if (v26)
    {

      v30 = 0x746C7561666544;
      LOBYTE(v29) = 7;
    }

    else
    {
      v27 = [v38 objectForKeyedSubscript:@"AlgoChemID"];
      v28 = [v23 objectForKeyedSubscript:v27];
      BACore::CommonSerialization::getCppStringFromNSString(v28, v41);
      v29 = v43;
      v30 = v41[0];
      v11 = v41[1];
      v44[0] = *v42;
      *(v44 + 3) = *&v42[3];
      v43 = 0;
      LOBYTE(v41[0]) = 0;

      if (v29 < 0)
      {
        std::string::__init_copy_ctor_external(&v40, v30, v11);
        goto LABEL_8;
      }
    }
  }

  v40.__r_.__value_.__r.__words[0] = v30;
  v40.__r_.__value_.__l.__size_ = v11;
  LODWORD(v40.__r_.__value_.__r.__words[2]) = v44[0];
  *(&v40.__r_.__value_.__r.__words[2] + 3) = *(v44 + 3);
  *(&v40.__r_.__value_.__s + 23) = v29;
LABEL_8:
  AdaptiveOcvAlgo::ParameterPack::ParameterPack(v41, &v40, v21);
}

- (int)runWithData:(id)a3
{
  v3 = MEMORY[0x28223BE20](self, a2, a3);
  v5 = v4;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v5 objectForKeyedSubscript:@"BDC_AMA"];
      if (v8)
      {
        v9 = [MEMORY[0x277CBEB68] null];
        if ([v8 isEqual:v9])
        {
        }

        else
        {
          v10 = [v8 count];

          if (v10)
          {
            v11 = [v5 objectForKeyedSubscript:@"OCVDrift"];
            if (!v11)
            {
              goto LABEL_11;
            }

            v12 = [MEMORY[0x277CBEB68] null];
            if (([v11 isEqual:v12] & 1) == 0)
            {
              v13 = [v11 count];

              if (!v13)
              {
                goto LABEL_11;
              }

              v12 = [v11 lastObject];
              AdaptiveOcvAlgo::Deserialization::setMlOcvFromDictionary(v12, v3 + 28, v14);
            }

LABEL_11:
            v15 = [(NSDictionary *)v3 model];
            v16 = [(NSDictionary *)v3 model];
            [(NSDictionary *)v3 persistentStateCache];
            AdaptiveOcvAlgo::CoreEngine::init(v15, v16, &v27, &v3[28]);
            AdaptiveOcvAlgo::PersistentState::~PersistentState(&v26);
            v17 = [(NSDictionary *)v3 model];
            memcpy(&v26, &v3[119], sizeof(v26));
            AdaptiveOcvAlgo::CoreEngine::setState(v17, &v26);
            v18 = [v5 objectForKeyedSubscript:@"BDC_AMA"];
            v19 = [v18 count];

            AdaptiveOcvAlgo::SystemLoadBuffer::SystemLoadBuffer(v25, v19);
            AdaptiveOcvAlgo::Deserialization::setSystemLoadBufferFromArray(v25, v8, v20);
            AdaptiveOcvAlgo::SystemLoadBuffer::view(v25, v24);
            v21 = [(NSDictionary *)v3 model];
            *&v26.table_dist[16] = v24[4];
            *&v26.table_dist[20] = v24[5];
            *&v26.table_dist[24] = v24[6];
            *v26.table_dist = v24[0];
            *&v26.table_dist[4] = v24[1];
            *&v26.table_dist[12] = v24[3];
            *&v26.table_dist[8] = v24[2];
            AdaptiveOcvAlgo::CoreEngine::runAlgorithm(v21, &v26, v22);
          }
        }
      }
    }
  }

  return 0;
}

- (id)output
{
  v2 = (MEMORY[0x28223BE20])(self, a2);
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = [v2 outputReady];
  v4 = MEMORY[0x277CBEC10];
  if (v3)
  {
    v28[0] = @"savedAlgoState";
    v26[0] = @"kSavedAlgoStateAdaptiveOCVCoreAlgo";
    [v2 persistentStateCache];
    v6 = AdaptiveOcvAlgo::Serialization::createDiskStateFromPersistentState(v23, v5);
    v26[1] = @"kSavedAlgoStateAdaptiveOCVInterface";
    v27[0] = v6;
    v24 = @"mlOcvModelCache";
    v7 = BACore::CommonSerialization::convertCArrayToNSArray<double,91ul>((v2 + 224));
    v25 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v29[0] = v9;
    v28[1] = @"kBDCOutputData";
    [v2 bdcOutputCache];
    v11 = AdaptiveOcvAlgo::Serialization::createBDCOutputFromPersistentState(v14, v10);
    v29[1] = v11;
    v29[2] = v4;
    v28[2] = @"kPowerLogData";
    v28[3] = @"kCoreAnalyticsData";
    v29[3] = v4;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    AdaptiveOcvAlgo::PersistentState::~PersistentState(v23);
    v2[10] = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)preRun:(id)a3
{
  v21[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"streamCurrentDate"];
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [MEMORY[0x277CBEAA8] now];
  }

  else
  {
    [v3 objectForKeyedSubscript:@"streamCurrentDate"];
  }
  v7 = ;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setDay:-30];
  v10 = [v8 dateByAddingComponents:v9 toDate:v7 options:0];
  v11 = [v3 objectForKeyedSubscript:@"streamLastRunDate"];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CBEB68] null];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    goto LABEL_7;
  }

  v14 = [MEMORY[0x277CBEAA8] now];
  [v14 timeIntervalSinceDate:v11];
  v16 = v15;

  if (v16 <= 604800.0)
  {
    v17 = &unk_2853A8298;
  }

  else
  {
LABEL_7:
    v20[0] = @"streamPaginate";
    v20[1] = @"streamDateStart";
    v21[0] = MEMORY[0x277CBEC28];
    v21[1] = v10;
    v20[2] = @"streamDateEnd";
    v20[3] = @"streamRequest";
    v21[2] = v7;
    v21[3] = &unk_2853A82C0;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (basic_string<char,)programName
{
  if (*(&result[3].__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, result[3].__rep_.__l.__data_, result[3].__rep_.__l.__size_);
  }

  else
  {
    *retstr = result[3];
  }

  return result;
}

- (id).cxx_construct
{
  *&self->_bdcOutputCache.ccdrift_model_parameter.__end_ = 0u;
  *&self->_bdcOutputCache.RMSE_ocv_candidates.__cap_ = 0u;
  *&self->_bdcOutputCache.RMSE_ocv_candidates.__begin_ = 0u;
  *&self->_bdcOutputCache.cover_scores.__end_ = 0u;
  *&self->_bdcOutputCache.V_captured.__cap_ = 0u;
  *&self->_bdcOutputCache.V_captured.__begin_ = 0u;
  *&self->_bdcOutputCache.OCV_selected.__end_ = 0u;
  *(&self->_programName.__rep_.__l + 1) = 0u;
  *self->_programName.__rep_.__s.__data_ = 0u;
  AdaptiveOcvAlgo::MLOCVModel::MLOCVModel(&self->_mlOcvModelCache);
  AdaptiveOcvAlgo::PersistentState::PersistentState(&self->_persistentStateCache);
  return self;
}

@end