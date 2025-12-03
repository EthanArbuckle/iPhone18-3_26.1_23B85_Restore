@interface AugmentedBatteryHealth
+ (id)algorithmWithData:(id)data;
- (ABHWeekly)bdc_output_cache;
- (basic_string<char,)program_code;
- (id).cxx_construct;
- (id)init:(id)init;
- (id)output;
- (id)preRun:(id)run;
- (int)runWithData:(id)data;
- (void)setBdc_output_cache:(ABHWeekly *)bdc_output_cache;
@end

@implementation AugmentedBatteryHealth

+ (id)algorithmWithData:(id)data
{
  dataCopy = data;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__AugmentedBatteryHealth_algorithmWithData___block_invoke;
  v10[3] = &unk_278D050D8;
  v11 = dataCopy;
  selfCopy = self;
  v5 = +[AugmentedBatteryHealth algorithmWithData:]::onceToken;
  v6 = dataCopy;
  if (v5 != -1)
  {
    dispatch_once(&+[AugmentedBatteryHealth algorithmWithData:]::onceToken, v10);
  }

  v7 = +[AugmentedBatteryHealth algorithmWithData:]::instance;
  v8 = +[AugmentedBatteryHealth algorithmWithData:]::instance;

  return v7;
}

uint64_t __44__AugmentedBatteryHealth_algorithmWithData___block_invoke(uint64_t a1)
{
  +[AugmentedBatteryHealth algorithmWithData:]::instance = [objc_alloc(*(a1 + 40)) init:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (id)init:(id)init
{
  v3 = MEMORY[0x28223BE20](self, a2, init);
  v89 = *MEMORY[0x277D85DE8];
  v26 = v4;
  v38 = [v26 objectForKey:@"smcData"];
  v39 = [v26 objectForKey:@"systemState"];
  v42.receiver = v3;
  v42.super_class = AugmentedBatteryHealth;
  v5 = [(AugmentedBatteryHealth *)&v42 init];
  name = v5->_name;
  v5->_name = @"AugmentedBatteryHealth";

  algoDescription = v5->_algoDescription;
  v5->_algoDescription = @"Enhance the gauging output with physics-based model like ACAM";

  v8 = [MEMORY[0x277CCABB0] numberWithInt:604800];
  runPeriod = v5->_runPeriod;
  v5->_runPeriod = v8;

  v73[0] = @"D37";
  v71[0] = &unk_2853A8360;
  v71[1] = &unk_2853A8378;
  v72[0] = @"D37ATL";
  v72[1] = @"D37ATL";
  v71[2] = &unk_2853A8390;
  v71[3] = &unk_2853A83A8;
  v72[2] = @"D37ATL";
  v72[3] = @"D37ATL";
  v71[4] = &unk_2853A83C0;
  v71[5] = &unk_2853A83D8;
  v72[4] = @"D37ATL";
  v72[5] = @"D37ATL";
  v71[6] = &unk_2853A83F0;
  v71[7] = &unk_2853A8408;
  v72[6] = @"D37ATL";
  v72[7] = @"D37ATL";
  v71[8] = &unk_2853A8420;
  v71[9] = &unk_2853A8438;
  v72[8] = @"D37ATL";
  v72[9] = @"D37ATL";
  v71[10] = &unk_2853A8450;
  v71[11] = &unk_2853A8468;
  v72[10] = @"D37ATL";
  v72[11] = @"D37LGC";
  v71[12] = &unk_2853A8480;
  v71[13] = &unk_2853A8498;
  v72[12] = @"D37LGC";
  v72[13] = @"D37LGC";
  v71[14] = &unk_2853A84B0;
  v71[15] = &unk_2853A84C8;
  v72[14] = @"D37LGC";
  v72[15] = @"D37LGC";
  v71[16] = &unk_2853A84E0;
  v71[17] = &unk_2853A84F8;
  v72[16] = @"D37LGC";
  v72[17] = @"D37LGC";
  v71[18] = &unk_2853A8510;
  v71[19] = &unk_2853A8528;
  v72[18] = @"D37LGC";
  v72[19] = @"D37LGC";
  v71[20] = &unk_2853A8540;
  v71[21] = &unk_2853A8558;
  v72[20] = @"D37LGC";
  v72[21] = @"D37LGC";
  v71[22] = &unk_2853A8570;
  v71[23] = &unk_2853A8588;
  v72[22] = @"D37LGC";
  v72[23] = @"D37LGC";
  v71[24] = &unk_2853A85A0;
  v71[25] = &unk_2853A85B8;
  v72[24] = @"D37LGC";
  v72[25] = @"D37LGC";
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:26];
  v73[1] = @"D38";
  v69[0] = &unk_2853A85D0;
  v69[1] = &unk_2853A85E8;
  v70[0] = @"D38ATL";
  v70[1] = @"D38ATL";
  v69[2] = &unk_2853A8600;
  v69[3] = &unk_2853A8618;
  v70[2] = @"D38ATL";
  v70[3] = @"D38ATL";
  v69[4] = &unk_2853A8630;
  v69[5] = &unk_2853A8648;
  v70[4] = @"D38ATL";
  v70[5] = @"D38ATL";
  v69[6] = &unk_2853A8660;
  v69[7] = &unk_2853A8678;
  v70[6] = @"D38ATL";
  v70[7] = @"D38ATL";
  v69[8] = &unk_2853A8690;
  v69[9] = &unk_2853A86A8;
  v70[8] = @"D38ATL";
  v70[9] = @"D38ATL";
  v69[10] = &unk_2853A86C0;
  v69[11] = &unk_2853A86D8;
  v70[10] = @"D38ATL";
  v70[11] = @"D38ATL";
  v69[12] = &unk_2853A86F0;
  v69[13] = &unk_2853A8708;
  v70[12] = @"D38ATL";
  v70[13] = @"D38ATL";
  v69[14] = &unk_2853A8720;
  v69[15] = &unk_2853A8738;
  v70[14] = @"D38ATL";
  v70[15] = @"D38ATL";
  v69[16] = &unk_2853A8750;
  v69[17] = &unk_2853A8768;
  v70[16] = @"D38ATL";
  v70[17] = @"D38ATL";
  v69[18] = &unk_2853A8780;
  v69[19] = &unk_2853A8798;
  v70[18] = @"D38ATL";
  v70[19] = @"D38ATL";
  v69[20] = &unk_2853A87B0;
  v69[21] = &unk_2853A87C8;
  v70[20] = @"D38ATL";
  v70[21] = @"D38ATL";
  v69[22] = &unk_2853A87E0;
  v69[23] = &unk_2853A87F8;
  v70[22] = @"D38ATL";
  v70[23] = @"D38ATL";
  v69[24] = &unk_2853A8810;
  v69[25] = &unk_2853A8828;
  v70[24] = @"D38LGC";
  v70[25] = @"D38LGC";
  v69[26] = &unk_2853A8840;
  v69[27] = &unk_2853A8858;
  v70[26] = @"D38LGC";
  v70[27] = @"D38LGC";
  v69[28] = &unk_2853A8870;
  v69[29] = &unk_2853A8888;
  v70[28] = @"D38LGC";
  v70[29] = @"D38LGC";
  v69[30] = &unk_2853A88A0;
  v69[31] = &unk_2853A88B8;
  v70[30] = @"D38LGC";
  v70[31] = @"D38LGC";
  v69[32] = &unk_2853A88D0;
  v69[33] = &unk_2853A88E8;
  v70[32] = @"D38LGC";
  v70[33] = @"D38LGC";
  v69[34] = &unk_2853A8900;
  v69[35] = &unk_2853A8918;
  v70[34] = @"D38LGC";
  v70[35] = @"D38LGC";
  v69[36] = &unk_2853A8930;
  v69[37] = &unk_2853A8948;
  v70[36] = @"D38LGC";
  v70[37] = @"D38LGC";
  v69[38] = &unk_2853A8960;
  v69[39] = &unk_2853A8978;
  v70[38] = @"D38LGC";
  v70[39] = @"D38LGC";
  v69[40] = &unk_2853A8990;
  v69[41] = &unk_2853A89A8;
  v70[40] = @"D38LGC";
  v70[41] = @"D38LGC";
  v32 = v74;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:42];
  v73[2] = @"D83";
  v67[0] = &unk_2853A89C0;
  v67[1] = &unk_2853A89D8;
  v68[0] = @"D83ATL";
  v68[1] = @"D83ATL";
  v67[2] = &unk_2853A89F0;
  v67[3] = &unk_2853A8A08;
  v68[2] = @"D83ATL";
  v68[3] = @"D83ATL";
  v67[4] = &unk_2853A8A20;
  v67[5] = &unk_2853A8A38;
  v68[4] = @"D83ATL";
  v68[5] = @"D83ATL";
  v67[6] = &unk_2853A8A50;
  v67[7] = &unk_2853A8A68;
  v68[6] = @"D83ATL";
  v68[7] = @"D83ATL";
  v67[8] = &unk_2853A8A80;
  v67[9] = &unk_2853A8A98;
  v68[8] = @"D83ATL";
  v68[9] = @"D83ATL";
  v67[10] = &unk_2853A8AB0;
  v67[11] = &unk_2853A8AC8;
  v68[10] = @"D83ATL";
  v68[11] = @"D83ATL";
  v67[12] = &unk_2853A8AE0;
  v67[13] = &unk_2853A8AF8;
  v68[12] = @"D83ATL";
  v68[13] = @"D83ATL";
  v67[14] = &unk_2853A8B10;
  v67[15] = &unk_2853A8B28;
  v68[14] = @"D83ATL";
  v68[15] = @"D83ATL";
  v67[16] = &unk_2853A8B40;
  v67[17] = &unk_2853A8B58;
  v68[16] = @"D83COS";
  v68[17] = @"D83COS";
  v67[18] = &unk_2853A8B70;
  v67[19] = &unk_2853A8B88;
  v68[18] = @"D83COS";
  v68[19] = @"D83COS";
  v67[20] = &unk_2853A8BA0;
  v67[21] = &unk_2853A8BB8;
  v68[20] = @"D83COS";
  v68[21] = @"D83COS";
  v67[22] = &unk_2853A8BD0;
  v67[23] = &unk_2853A8BE8;
  v68[22] = @"D83COS";
  v68[23] = @"D83COS";
  v67[24] = &unk_2853A8C00;
  v67[25] = &unk_2853A8C18;
  v68[24] = @"D83COS";
  v68[25] = @"D83COS";
  v67[26] = &unk_2853A8C30;
  v67[27] = &unk_2853A8C48;
  v68[26] = @"D83COS";
  v68[27] = @"D83COS";
  v67[28] = &unk_2853A8C60;
  v67[29] = &unk_2853A8C78;
  v68[28] = @"D83COS";
  v68[29] = @"D83COS";
  v67[30] = &unk_2853A8C90;
  v68[30] = @"D83COS";
  v31 = v75;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:31];
  v73[3] = @"D84";
  v65[0] = &unk_2853A8CA8;
  v65[1] = &unk_2853A8CC0;
  v66[0] = @"D84ATL";
  v66[1] = @"D84ATL";
  v65[2] = &unk_2853A8CD8;
  v65[3] = &unk_2853A8CF0;
  v66[2] = @"D84ATL";
  v66[3] = @"D84ATL";
  v65[4] = &unk_2853A8D08;
  v65[5] = &unk_2853A8D20;
  v66[4] = @"D84ATL";
  v66[5] = @"D84ATL";
  v65[6] = &unk_2853A8D38;
  v65[7] = &unk_2853A8D50;
  v66[6] = @"D84ATL";
  v66[7] = @"D84ATL";
  v65[8] = &unk_2853A8D68;
  v65[9] = &unk_2853A8D80;
  v66[8] = @"D84ATL";
  v66[9] = @"D84ATL";
  v65[10] = &unk_2853A8D98;
  v65[11] = &unk_2853A8DB0;
  v66[10] = @"D84ATL";
  v66[11] = @"D84ATL";
  v65[12] = &unk_2853A8DC8;
  v65[13] = &unk_2853A8DE0;
  v66[12] = @"D84ATL";
  v66[13] = @"D84ATL";
  v65[14] = &unk_2853A8DF8;
  v65[15] = &unk_2853A8E10;
  v66[14] = @"D84ATL";
  v66[15] = @"D84ATL";
  v65[16] = &unk_2853A8E28;
  v65[17] = &unk_2853A8E40;
  v66[16] = @"D84ATL";
  v66[17] = @"D84ATL";
  v65[18] = &unk_2853A8E58;
  v65[19] = &unk_2853A8E70;
  v66[18] = @"D84ATL";
  v66[19] = @"D84ATL";
  v65[20] = &unk_2853A8E88;
  v65[21] = &unk_2853A8EA0;
  v66[20] = @"D84ATL";
  v66[21] = @"D84ATL";
  v65[22] = &unk_2853A8EB8;
  v65[23] = &unk_2853A8ED0;
  v66[22] = @"D84ATL";
  v66[23] = @"D84ATL";
  v65[24] = &unk_2853A8EE8;
  v65[25] = &unk_2853A8F00;
  v66[24] = @"D84LGC";
  v66[25] = @"D84LGC";
  v65[26] = &unk_2853A8F18;
  v65[27] = &unk_2853A8F30;
  v66[26] = @"D84LGC";
  v66[27] = @"D84LGC";
  v65[28] = &unk_2853A8F48;
  v65[29] = &unk_2853A8F60;
  v66[28] = @"D84LGC";
  v66[29] = @"D84LGC";
  v65[30] = &unk_2853A8F78;
  v65[31] = &unk_2853A8F90;
  v66[30] = @"D84LGC";
  v66[31] = @"D84LGC";
  v65[32] = &unk_2853A8FA8;
  v65[33] = &unk_2853A8FC0;
  v66[32] = @"D84LGC";
  v66[33] = @"D84LGC";
  v65[34] = &unk_2853A8FD8;
  v65[35] = &unk_2853A8FF0;
  v66[34] = @"D84LGC";
  v66[35] = @"D84LGC";
  v65[36] = &unk_2853A9008;
  v65[37] = &unk_2853A9020;
  v66[36] = @"D84LGC";
  v66[37] = @"D84LGC";
  v65[38] = &unk_2853A9038;
  v65[39] = &unk_2853A9050;
  v66[38] = @"D84LGC";
  v66[39] = @"D84LGC";
  v65[40] = &unk_2853A9068;
  v65[41] = &unk_2853A9080;
  v66[40] = @"D84LGC";
  v66[41] = @"D84LGC";
  v65[42] = &unk_2853A9098;
  v65[43] = &unk_2853A90B0;
  v66[42] = @"D84LGC";
  v66[43] = @"D84LGC";
  v65[44] = &unk_2853A90C8;
  v65[45] = &unk_2853A90E0;
  v66[44] = @"D84LGC";
  v66[45] = @"D84LGC";
  v65[46] = &unk_2853A90F8;
  v65[47] = &unk_2853A9110;
  v66[46] = @"D84LGC";
  v66[47] = @"D84LGC";
  v30 = v76;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:48];
  v73[4] = @"D47";
  v63[0] = &unk_2853A9128;
  v63[1] = &unk_2853A9140;
  v64[0] = @"D47ATL";
  v64[1] = @"D47ATL";
  v63[2] = &unk_2853A9158;
  v63[3] = &unk_2853A9170;
  v64[2] = @"D47ATL";
  v64[3] = @"D47ATL";
  v63[4] = &unk_2853A9188;
  v63[5] = &unk_2853A91A0;
  v64[4] = @"D47ATL";
  v64[5] = @"D47ATL";
  v63[6] = &unk_2853A91B8;
  v63[7] = &unk_2853A91D0;
  v64[6] = @"D47ATL";
  v64[7] = @"D47ATL";
  v63[8] = &unk_2853A91E8;
  v63[9] = &unk_2853A9200;
  v64[8] = @"D47ATL";
  v64[9] = @"D47ATL";
  v63[10] = &unk_2853A9218;
  v63[11] = &unk_2853A9230;
  v64[10] = @"D47ATL";
  v64[11] = @"D47ATL";
  v63[12] = &unk_2853A9248;
  v63[13] = &unk_2853A9260;
  v64[12] = @"D47ATL";
  v64[13] = @"D47ATL";
  v63[14] = &unk_2853A9278;
  v63[15] = &unk_2853A9290;
  v64[14] = @"D47ATL";
  v64[15] = @"D47ATL";
  v63[16] = &unk_2853A92A8;
  v63[17] = &unk_2853A92C0;
  v64[16] = @"D47ATL";
  v64[17] = @"D47ATL";
  v63[18] = &unk_2853A92D8;
  v63[19] = &unk_2853A92F0;
  v64[18] = @"D47COS";
  v64[19] = @"D47COS";
  v63[20] = &unk_2853A9308;
  v63[21] = &unk_2853A9320;
  v64[20] = @"D47COS";
  v64[21] = @"D47COS";
  v63[22] = &unk_2853A9338;
  v63[23] = &unk_2853A9350;
  v64[22] = @"D47COS";
  v64[23] = @"D47COS";
  v63[24] = &unk_2853A9368;
  v63[25] = &unk_2853A9380;
  v64[24] = @"D47COS";
  v64[25] = @"D47COS";
  v63[26] = &unk_2853A9398;
  v63[27] = &unk_2853A93B0;
  v64[26] = @"D47COS";
  v64[27] = @"D47COS";
  v63[28] = &unk_2853A93C8;
  v63[29] = &unk_2853A93E0;
  v64[28] = @"D47COS";
  v64[29] = @"D47COS";
  v63[30] = &unk_2853A93F8;
  v63[31] = &unk_2853A9410;
  v64[30] = @"D47COS";
  v64[31] = @"D47COS";
  v63[32] = &unk_2853A9428;
  v63[33] = &unk_2853A9440;
  v64[32] = @"D47COS";
  v64[33] = @"D47COS";
  v63[34] = &unk_2853A9458;
  v63[35] = &unk_2853A9470;
  v64[34] = @"D47COS";
  v64[35] = @"D47COS";
  v63[36] = &unk_2853A9488;
  v64[36] = @"D47COS";
  v29 = v77;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:37];
  v73[5] = @"D48";
  v61[0] = &unk_2853A94A0;
  v61[1] = &unk_2853A94B8;
  v62[0] = @"D48ATL";
  v62[1] = @"D48ATL";
  v61[2] = &unk_2853A94D0;
  v61[3] = &unk_2853A94E8;
  v62[2] = @"D48ATL";
  v62[3] = @"D48ATL";
  v61[4] = &unk_2853A9500;
  v61[5] = &unk_2853A9518;
  v62[4] = @"D48ATL";
  v62[5] = @"D48ATL";
  v61[6] = &unk_2853A9530;
  v61[7] = &unk_2853A9548;
  v62[6] = @"D48ATL";
  v62[7] = @"D48ATL";
  v61[8] = &unk_2853A9560;
  v61[9] = &unk_2853A9578;
  v62[8] = @"D48ATL";
  v62[9] = @"D48ATL";
  v61[10] = &unk_2853A9590;
  v61[11] = &unk_2853A95A8;
  v62[10] = @"D48ATL";
  v62[11] = @"D48ATL";
  v61[12] = &unk_2853A95C0;
  v61[13] = &unk_2853A95D8;
  v62[12] = @"D48ATL";
  v62[13] = @"D48ATL";
  v61[14] = &unk_2853A95F0;
  v61[15] = &unk_2853A9608;
  v62[14] = @"D48LGC";
  v62[15] = @"D48LGC";
  v61[16] = &unk_2853A9620;
  v61[17] = &unk_2853A9638;
  v62[16] = @"D48LGC";
  v62[17] = @"D48LGC";
  v61[18] = &unk_2853A9650;
  v61[19] = &unk_2853A9668;
  v62[18] = @"D48LGC";
  v62[19] = @"D48LGC";
  v61[20] = &unk_2853A9680;
  v61[21] = &unk_2853A9698;
  v62[20] = @"D48LGC";
  v62[21] = @"D48LGC";
  v61[22] = &unk_2853A96B0;
  v61[23] = &unk_2853A96C8;
  v62[22] = @"D48LGC";
  v62[23] = @"D48LGC";
  v61[24] = &unk_2853A96E0;
  v61[25] = &unk_2853A96F8;
  v62[24] = @"D48LGC";
  v62[25] = @"D48LGC";
  v61[26] = &unk_2853A9710;
  v61[27] = &unk_2853A9728;
  v62[26] = @"D48LGC";
  v62[27] = @"D48LGC";
  v61[28] = &unk_2853A9740;
  v61[29] = &unk_2853A9758;
  v62[28] = @"D48LGC";
  v62[29] = @"D48LGC";
  v61[30] = &unk_2853A9770;
  v61[31] = &unk_2853A9788;
  v62[30] = @"D48LGC";
  v62[31] = @"D48LGC";
  v28 = v78;
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:32];
  v73[6] = @"D93";
  v59[0] = &unk_2853A97A0;
  v59[1] = &unk_2853A97B8;
  v60[0] = @"D93ATL";
  v60[1] = @"D93ATL";
  v59[2] = &unk_2853A97D0;
  v59[3] = &unk_2853A97E8;
  v60[2] = @"D93ATL";
  v60[3] = @"D93ATL";
  v59[4] = &unk_2853A9800;
  v59[5] = &unk_2853A9818;
  v60[4] = @"D93ATL";
  v60[5] = @"D93ATL";
  v59[6] = &unk_2853A9830;
  v59[7] = &unk_2853A9848;
  v60[6] = @"D93ATL";
  v60[7] = @"D93ATL";
  v59[8] = &unk_2853A9860;
  v59[9] = &unk_2853A9878;
  v60[8] = @"D93ATL";
  v60[9] = @"D93ATL";
  v59[10] = &unk_2853A9890;
  v59[11] = &unk_2853A98A8;
  v60[10] = @"D93ATL";
  v60[11] = @"D93ATL";
  v59[12] = &unk_2853A98C0;
  v59[13] = &unk_2853A98D8;
  v60[12] = @"D93ATL";
  v60[13] = @"D93ATL";
  v59[14] = &unk_2853A98F0;
  v59[15] = &unk_2853A9908;
  v60[14] = @"D93ATL";
  v60[15] = @"D93ATL";
  v59[16] = &unk_2853A9920;
  v59[17] = &unk_2853A9938;
  v60[16] = @"D93ATL";
  v60[17] = @"D93ATL";
  v59[18] = &unk_2853A9950;
  v59[19] = &unk_2853A9968;
  v60[18] = @"D93ATL";
  v60[19] = @"D93ATL";
  v59[20] = &unk_2853A9980;
  v59[21] = &unk_2853A9998;
  v60[20] = @"D93ATL";
  v60[21] = @"D93ATL";
  v59[22] = &unk_2853A99B0;
  v59[23] = &unk_2853A99C8;
  v60[22] = @"D93ATL";
  v60[23] = @"D93ATL";
  v59[24] = &unk_2853A99E0;
  v60[24] = @"D93ATL";
  v27 = v79;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:25];
  v73[7] = @"D94";
  v57[0] = &unk_2853A99F8;
  v57[1] = &unk_2853A9A10;
  v58[0] = @"D94ATL";
  v58[1] = @"D94ATL";
  v57[2] = &unk_2853A9A28;
  v57[3] = &unk_2853A9A40;
  v58[2] = @"D94ATL";
  v58[3] = @"D94ATL";
  v57[4] = &unk_2853A9A58;
  v57[5] = &unk_2853A9A70;
  v58[4] = @"D94ATL";
  v58[5] = @"D94ATL";
  v57[6] = &unk_2853A9A88;
  v57[7] = &unk_2853A9AA0;
  v58[6] = @"D94ATL";
  v58[7] = @"D94ATL";
  v57[8] = &unk_2853A9AB8;
  v57[9] = &unk_2853A9AD0;
  v58[8] = @"D94ATL";
  v58[9] = @"D94LGC";
  v57[10] = &unk_2853A9AE8;
  v57[11] = &unk_2853A9B00;
  v58[10] = @"D94LGC";
  v58[11] = @"D94LGC";
  v57[12] = &unk_2853A9B18;
  v57[13] = &unk_2853A9B30;
  v58[12] = @"D94LGC";
  v58[13] = @"D94LGC";
  v57[14] = &unk_2853A9B48;
  v57[15] = &unk_2853A9B60;
  v58[14] = @"D94LGC";
  v58[15] = @"D94LGC";
  v57[16] = &unk_2853A9B78;
  v57[17] = &unk_2853A9B90;
  v58[16] = @"D94LGC";
  v58[17] = @"D94LGC";
  v57[18] = &unk_2853A9BA8;
  v57[19] = &unk_2853A9BC0;
  v58[18] = @"D94LGC";
  v58[19] = @"D94LGC";
  v57[20] = &unk_2853A9BD8;
  v58[20] = @"D94LGC";
  v37 = v80;
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:21];
  v73[8] = @"V59";
  v55[0] = &unk_2853A9BF0;
  v55[1] = &unk_2853A9C08;
  v56[0] = @"V59ATL";
  v56[1] = @"V59ATL";
  v55[2] = &unk_2853A9C20;
  v55[3] = &unk_2853A9C38;
  v56[2] = @"V59ATL";
  v56[3] = @"V59ATL";
  v55[4] = &unk_2853A9C50;
  v55[5] = &unk_2853A9C68;
  v56[4] = @"V59ATL";
  v56[5] = @"V59ATL";
  v55[6] = &unk_2853A9C80;
  v55[7] = &unk_2853A9C98;
  v56[6] = @"V59ATL";
  v56[7] = @"V59ATL";
  v55[8] = &unk_2853A9CB0;
  v55[9] = &unk_2853A9CC8;
  v56[8] = @"V59LGC";
  v56[9] = @"V59LGC";
  v55[10] = &unk_2853A9CE0;
  v55[11] = &unk_2853A9CF8;
  v56[10] = @"V59LGC";
  v56[11] = @"V59LGC";
  v55[12] = &unk_2853A9D10;
  v55[13] = &unk_2853A9D28;
  v56[12] = @"V59LGC";
  v56[13] = @"V59LGC";
  v55[14] = &unk_2853A9D40;
  v55[15] = &unk_2853A9D58;
  v56[14] = @"V59LGC";
  v56[15] = @"V59LGC";
  v55[16] = &unk_2853A9D70;
  v56[16] = @"V59LGC";
  v36 = v81;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:17];
  v73[9] = @"D23";
  v53[0] = &unk_2853A9D88;
  v53[1] = &unk_2853A9DA0;
  v54[0] = @"D23ATL";
  v54[1] = @"D23ATL";
  v53[2] = &unk_2853A9DB8;
  v53[3] = &unk_2853A9DD0;
  v54[2] = @"D23ATL";
  v54[3] = @"D23ATL";
  v35 = v82;
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:4];
  v73[10] = @"V53";
  v51[0] = &unk_2853A9DE8;
  v51[1] = &unk_2853A9E00;
  v52[0] = @"V53eATL";
  v52[1] = @"V53eCOS";
  v51[2] = &unk_2853A9E18;
  v51[3] = &unk_2853A9E30;
  v52[2] = @"V53pATL";
  v52[3] = @"V53pCOS";
  v51[4] = &unk_2853A9E48;
  v51[5] = &unk_2853A9E60;
  v52[4] = @"V53eATL";
  v52[5] = @"V53eCOS";
  v51[6] = &unk_2853A9E78;
  v51[7] = &unk_2853A9E90;
  v52[6] = @"V53pATL";
  v52[7] = @"V53pCOS";
  v51[8] = &unk_2853A9EA8;
  v51[9] = &unk_2853A9EC0;
  v52[8] = @"V53eATL";
  v52[9] = @"V53eCOS";
  v51[10] = &unk_2853A9ED8;
  v51[11] = &unk_2853A9EF0;
  v52[10] = @"V53pATL";
  v52[11] = @"V53pCOS";
  v34 = v83;
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:12];
  v73[11] = @"V54";
  v49[0] = &unk_2853A9F08;
  v49[1] = &unk_2853A9F20;
  v50[0] = @"V54eATL";
  v50[1] = @"V54eLGC";
  v49[2] = &unk_2853A9F38;
  v49[3] = &unk_2853A9F50;
  v50[2] = @"V54pATL";
  v50[3] = @"V54pLGC";
  v49[4] = &unk_2853A9F68;
  v49[5] = &unk_2853A9F80;
  v50[4] = @"V54eATL";
  v50[5] = @"V54eLGC";
  v49[6] = &unk_2853A9F98;
  v49[7] = &unk_2853A9FB0;
  v50[6] = @"V54pATL";
  v50[7] = @"V54pLGC";
  v49[8] = &unk_2853A9FC8;
  v49[9] = &unk_2853A9FE0;
  v50[8] = @"V54eATL";
  v50[9] = @"V54eLGC";
  v49[10] = &unk_2853A9FF8;
  v49[11] = &unk_2853AA010;
  v50[10] = @"V54pATL";
  v50[11] = @"V54pLGC";
  v33 = v84;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:12];
  v85 = v10;
  v73[12] = @"V57";
  v47[0] = &unk_2853AA028;
  v47[1] = &unk_2853AA040;
  v48[0] = @"V57ATL";
  v48[1] = @"V57COS";
  v47[2] = &unk_2853AA058;
  v47[3] = &unk_2853AA070;
  v48[2] = @"V57ATL";
  v48[3] = @"V57COS";
  v47[4] = &unk_2853AA088;
  v47[5] = &unk_2853AA0A0;
  v48[4] = @"V57ATL";
  v48[5] = @"V57COS";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];
  v86 = v11;
  v73[13] = @"N227b";
  v45[0] = &unk_2853AA0B8;
  v45[1] = &unk_2853AA0D0;
  v46[0] = @"N227bATL";
  v46[1] = @"N227bMUR";
  v45[2] = &unk_2853AA0E8;
  v45[3] = &unk_2853AA100;
  v46[2] = @"N227bMUR";
  v46[3] = @"N227bATL";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
  v87 = v12;
  v73[14] = @"N228b";
  v43[0] = &unk_2853AA0B8;
  v43[1] = &unk_2853AA0D0;
  v44[0] = @"N227bATL";
  v44[1] = @"N227bMUR";
  v43[2] = &unk_2853AA0E8;
  v43[3] = &unk_2853AA100;
  v44[2] = @"N227bMUR";
  v44[3] = @"N227bATL";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  v88 = v13;
  v14 = v5;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:v73 count:15];

  *(&__str.__r_.__value_.__s + 23) = 7;
  strcpy(&__str, "default");
  v16 = [v39 objectForKeyedSubscript:@"DeviceType"];
  v17 = [v15 objectForKeyedSubscript:v16];
  LOBYTE(v3) = v17 == 0;

  if ((v3 & 1) == 0)
  {
    v18 = [v39 objectForKeyedSubscript:@"DeviceType"];
    v19 = [v15 objectForKeyedSubscript:v18];

    v20 = [v38 objectForKeyedSubscript:@"AlgoChemID"];
    v21 = [v19 objectForKeyedSubscript:v20];
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = [v38 objectForKeyedSubscript:@"AlgoChemID"];
      v24 = [v19 objectForKeyedSubscript:v23];
      BACore::CommonSerialization::getCppStringFromNSString(v24, &v40);
      __str = v40;
      *(&v40.__r_.__value_.__s + 23) = 0;
      v40.__r_.__value_.__s.__data_[0] = 0;
    }
  }

  std::string::operator=(v14 + 3, &__str);
  operator new();
}

- (int)runWithData:(id)data
{
  dataCopy = data;
  [(AugmentedBatteryHealth *)self program_code];
  ACAMUtility::ACAMParameterPack::ACAMParameterPack(v8, &__p, v5);
}

- (id)output
{
  v20[1] = *MEMORY[0x277D85DE8];
  bdc_output_ready = [(AugmentedBatteryHealth *)self bdc_output_ready];
  v4 = MEMORY[0x277CBEC10];
  v5 = MEMORY[0x277CBEC10];
  if (bdc_output_ready)
  {
    v19 = @"Weekly";
    [(AugmentedBatteryHealth *)self bdc_output_cache];
    v6 = AugmentedBatteryHealthLib::Serialization::createBDCWeekly(&v11);
    v18 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v20[0] = v7;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    [(AugmentedBatteryHealth *)self setBdc_output_ready:0];
  }

  v16[0] = @"savedAlgoState";
  v16[1] = @"kBDCOutputData";
  v17[0] = v4;
  v17[1] = v5;
  v16[2] = @"kPowerLogData";
  v16[3] = @"kCoreAnalyticsData";
  v17[2] = v4;
  v17[3] = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)preRun:(id)run
{
  v21[3] = *MEMORY[0x277D85DE8];
  runCopy = run;
  v4 = [runCopy objectForKeyedSubscript:@"streamLastRunDate"];
  v5 = [runCopy objectForKeyedSubscript:@"streamCurrentDate"];
  null = [MEMORY[0x277CBEB68] null];
  v7 = [v5 isEqual:null];

  if (v7)
  {
    [MEMORY[0x277CBEAA8] now];
  }

  else
  {
    [runCopy objectForKeyedSubscript:@"streamCurrentDate"];
  }
  v8 = ;
  null2 = [MEMORY[0x277CBEB68] null];
  v10 = [v4 isEqual:null2];

  if (v10)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v12 setDay:-30];
    v13 = [currentCalendar dateByAddingComponents:v12 toDate:v8 options:0];

    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v4;
    if (!v4)
    {
LABEL_10:
      v20[0] = @"streamDateStart";
      v20[1] = @"streamDateEnd";
      v21[0] = v13;
      v21[1] = v8;
      v20[2] = @"streamRequest";
      v21[2] = &unk_2853A8248;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
      goto LABEL_11;
    }
  }

  null3 = [MEMORY[0x277CBEB68] null];
  v15 = [v4 isEqual:null3];

  if (v15)
  {
    goto LABEL_10;
  }

  [v8 timeIntervalSinceDate:v4];
  if (v16 > 604800.0)
  {
    goto LABEL_10;
  }

  v17 = &unk_2853A8220;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (ABHWeekly)bdc_output_cache
{
  retstr->deltaQmax = self->_bdc_output_cache.deltaQmax;
  retstr->deltaRdc.__begin_ = 0;
  retstr->deltaRdc.__end_ = 0;
  retstr->deltaRdc.__cap_ = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&retstr->deltaRdc, self->_bdc_output_cache.deltaRdc.__begin_, self->_bdc_output_cache.deltaRdc.__end_, self->_bdc_output_cache.deltaRdc.__end_ - self->_bdc_output_cache.deltaRdc.__begin_);
  v5 = *&self->_bdc_output_cache.deltaNCC;
  retstr->augmentedRdc.__begin_ = 0;
  *&retstr->deltaNCC = v5;
  retstr->augmentedRdc.__end_ = 0;
  retstr->augmentedRdc.__cap_ = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&retstr->augmentedRdc, self->_bdc_output_cache.augmentedRdc.__begin_, self->_bdc_output_cache.augmentedRdc.__end_, self->_bdc_output_cache.augmentedRdc.__end_ - self->_bdc_output_cache.augmentedRdc.__begin_);
  retstr->augmentedNCC = self->_bdc_output_cache.augmentedNCC;
  return result;
}

- (void)setBdc_output_cache:(ABHWeekly *)bdc_output_cache
{
  self->_bdc_output_cache.deltaQmax = bdc_output_cache->deltaQmax;
  if (&self->_bdc_output_cache == bdc_output_cache)
  {
    *&self->_bdc_output_cache.deltaNCC = *&bdc_output_cache->deltaNCC;
  }

  else
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&self->_bdc_output_cache.deltaRdc.__begin_, bdc_output_cache->deltaRdc.__begin_, bdc_output_cache->deltaRdc.__end_, bdc_output_cache->deltaRdc.__end_ - bdc_output_cache->deltaRdc.__begin_);
    *&self->_bdc_output_cache.deltaNCC = *&bdc_output_cache->deltaNCC;
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&self->_bdc_output_cache.augmentedRdc.__begin_, bdc_output_cache->augmentedRdc.__begin_, bdc_output_cache->augmentedRdc.__end_, bdc_output_cache->augmentedRdc.__end_ - bdc_output_cache->augmentedRdc.__begin_);
  }

  self->_bdc_output_cache.augmentedNCC = bdc_output_cache->augmentedNCC;
}

- (basic_string<char,)program_code
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
  *(self + 72) = 0uLL;
  *(self + 11) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  return self;
}

@end