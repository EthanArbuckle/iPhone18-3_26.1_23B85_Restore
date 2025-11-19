@interface AFSiriActivationGetDefaultHandler
@end

@implementation AFSiriActivationGetDefaultHandler

void ___AFSiriActivationGetDefaultHandler_block_invoke()
{
  v62[52] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(AFSiriActivationHandlerCoreSpeechDaemon);
  v1 = [AFSiriActivationConnection alloc];
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v60 = [(AFSiriActivationConnection *)v1 initWithServicePort:v2];
  v3 = [[AFSiriActivationHandlerFrontendProcess alloc] initWithConnection:v60];
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:65538];
  v61[0] = v59;
  v62[0] = v0;
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:65539];
  v61[1] = v58;
  v62[1] = v0;
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:65540];
  v61[2] = v57;
  v62[2] = v3;
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:65546];
  v61[3] = v56;
  v62[3] = v3;
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:65552];
  v61[4] = v55;
  v62[4] = v3;
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:393232];
  v61[5] = v54;
  v62[5] = v3;
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:393224];
  v61[6] = v53;
  v62[6] = v3;
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:393225];
  v61[7] = v52;
  v62[7] = v3;
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:458768];
  v61[8] = v51;
  v62[8] = v3;
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:458760];
  v61[9] = v50;
  v62[9] = v3;
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:458761];
  v61[10] = v49;
  v62[10] = v3;
  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:524304];
  v61[11] = v48;
  v62[11] = v3;
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:524296];
  v61[12] = v47;
  v62[12] = v3;
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:524297];
  v61[13] = v46;
  v62[13] = v3;
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:131088];
  v61[14] = v45;
  v62[14] = v3;
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:131079];
  v61[15] = v44;
  v62[15] = v3;
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:131080];
  v61[16] = v43;
  v62[16] = v3;
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:131081];
  v61[17] = v42;
  v62[17] = v3;
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262160];
  v61[18] = v41;
  v62[18] = v3;
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262145];
  v61[19] = v40;
  v62[19] = v3;
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262146];
  v61[20] = v39;
  v62[20] = v0;
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262147];
  v61[21] = v38;
  v62[21] = v0;
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262148];
  v61[22] = v37;
  v62[22] = v3;
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262150];
  v61[23] = v36;
  v62[23] = v0;
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262154];
  v61[24] = v34;
  v62[24] = v3;
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262164];
  v61[25] = v33;
  v62[25] = v3;
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262155];
  v61[26] = v32;
  v62[26] = v3;
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262156];
  v61[27] = v31;
  v62[27] = v3;
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262152];
  v61[28] = v30;
  v62[28] = v3;
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:262153];
  v61[29] = v29;
  v62[29] = v3;
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:851984];
  v61[30] = v28;
  v62[30] = v3;
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:851972];
  v61[31] = v27;
  v62[31] = v3;
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:327696];
  v61[32] = v26;
  v62[32] = v3;
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:327682];
  v61[33] = v25;
  v35 = v0;
  v62[33] = v0;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:327683];
  v61[34] = v24;
  v62[34] = v0;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:327684];
  v61[35] = v23;
  v62[35] = v3;
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:327701];
  v61[36] = v22;
  v62[36] = v3;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:655376];
  v61[37] = v21;
  v62[37] = v3;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:655368];
  v61[38] = v20;
  v62[38] = v3;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:655369];
  v61[39] = v19;
  v62[39] = v3;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:589840];
  v61[40] = v18;
  v62[40] = v3;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:589832];
  v61[41] = v17;
  v62[41] = v3;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:589833];
  v61[42] = v16;
  v62[42] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:196624];
  v61[43] = v4;
  v62[43] = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:196613];
  v61[44] = v5;
  v62[44] = v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:720912];
  v61[45] = v6;
  v62[45] = v3;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:720909];
  v61[46] = v7;
  v62[46] = v3;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:720913];
  v61[47] = v8;
  v62[47] = v3;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:720915];
  v61[48] = v9;
  v62[48] = v3;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:917512];
  v61[49] = v10;
  v62[49] = v3;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:983044];
  v61[50] = v11;
  v62[50] = v3;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:851991];
  v61[51] = v12;
  v62[51] = v3;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:52];
  v14 = _AFSiriActivationGetDefaultHandler_handlerMap;
  _AFSiriActivationGetDefaultHandler_handlerMap = v13;

  v15 = *MEMORY[0x1E69E9840];
}

@end